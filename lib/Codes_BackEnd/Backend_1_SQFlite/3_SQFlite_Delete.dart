import 'dart:async';
import 'dart:io' as io;
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart';


class Courses {
  int CourseID;
  String CourseName;

  Courses(this.CourseID, this.CourseName);

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'CourseID': CourseID,
      'CourseName': CourseName,
    };
    return map;
  }

  Courses.fromMap(Map<String, dynamic> map) {
    CourseID = map['CourseID'];
    CourseName = map['CourseName'];
  }
}


class DBHelper {
  static Database _db;
  static const String CourseID   = 'CourseID';
  static const String CourseName = 'CourseName';
  static const String TABLE      = 'Courses';
  static const String DB_NAME    = "Courses.db";

  Future<Database> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await initDb();
    return _db;
  }

  initDb() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, DB_NAME);
    var db = await openDatabase(path, version: 1, onCreate: _onCreate);
    return db;
  }

  _onCreate(Database db, int version) async {
    await db
        .execute("CREATE TABLE $TABLE ($CourseID INTEGER PRIMARY KEY, $CourseName TEXT)");
  }


  Future<List<Courses>> getCourses() async {
    var dbCourses = await db;
    List<Map> maps = await dbCourses.rawQuery("SELECT * FROM $TABLE");
    List<Courses> CoursesArr = [];
    if (maps.length > 0) {
      for (int i = 0; i < maps.length; i++) {
        CoursesArr.add(Courses.fromMap(maps[i]));
      }
    }
    return CoursesArr;
  }

  Future<int> delete(int id) async {
    var dbClient = await db;
    return await dbClient.delete(TABLE, where: '$CourseID = ?', whereArgs: [id]);
  }


  Future close() async {
    var dbClient = await db;
    dbClient.close();
  }

}


class SQFlite_Delete extends StatefulWidget {
  final String title;

  SQFlite_Delete({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SQFlite_Delete_State();
  }
}


class _SQFlite_Delete_State extends State<SQFlite_Delete> {

  Future<List<Courses>> CoursesLst;


  String name;
  int curUserId;

  final formKey = new GlobalKey<FormState>();
  var dbHelper;

  @override
  void initState() {
    super.initState();
    dbHelper = DBHelper();
    refreshList();
  }

  refreshList() {
    setState(() {
      CoursesLst = dbHelper.getCourses();
    });
  }



  SingleChildScrollView dataTable(List<Courses> CrsLst) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: DataTable(
        columns: [
          DataColumn(
            label: Text('CourseID'),
          ),
          DataColumn(
            label: Text('CourseName'),
          ),
          DataColumn(
            label: Text('Action'),
          ),
        ],
        rows: CrsLst
            .map(
              (Cr) => DataRow(cells: [
                DataCell(Text(Cr.CourseID.toString()),),
                DataCell(Text(Cr.CourseName),),
                DataCell(IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    dbHelper.delete(Cr.CourseID);
                    refreshList();
                  },
                )),
              ]),
        )
            .toList(),
      ),
    );
  }







  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('SQFlite Delete Data'),
        backgroundColor:Colors.teal,
      ),
      body:
        ListView(
          children: <Widget>[

            FutureBuilder(
              future: CoursesLst,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return dataTable(snapshot.data);
                }
                else{
                  return SizedBox();
                }
              },
            ),


          ],
        ),

    );
  }
}