import 'dart:async';
import 'dart:io' as io;
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart';

var CourseNameController = TextEditingController();
var CourseIDController   = TextEditingController();

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
  static const String DB_NAME    = "Courses.db";
  static const String CourseID   = 'CourseID';
  static const String CourseName = 'CourseName';
  static const String TABLE      = 'Courses';

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

  Future<Courses> save(Courses Cr) async {
    var dbCourses = await db;
    Cr.CourseID = await dbCourses.insert(TABLE, Cr.toMap());
    return Cr;
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


  Future close() async {
    var dbCourse = await db;
    dbCourse.close();
  }

  Future GetMaxID() async {
    var dbClient = await db;
    var Query= await dbClient.rawQuery("SELECT MAX(CourseID)+1 as LID FROM $TABLE");
    if(Query.first["LID"]==null){
      CourseIDController.text="1";
    }
    else{
      CourseIDController.text= Query.first["LID"].toString();
    }
  }


}


class SQFlite_Insert extends StatefulWidget {
  final String title;

  SQFlite_Insert({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SQFlite_Insert_State();
  }
}


class _SQFlite_Insert_State extends State<SQFlite_Insert> {

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
    print(dbHelper.GetMaxID());
  }

  refreshList() {
    setState(() {
      CoursesLst = dbHelper.getCourses();
      dbHelper.GetMaxID();
    });
  }


  validate() {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      Courses e = Courses(null, name);
      dbHelper.save(e);
      refreshList();
      CourseNameController.text="";
    }
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
        ],
        rows: CrsLst
            .map(
              (Cr) => DataRow(cells: [
                DataCell(
                  Text(Cr.CourseID.toString()),
                  onTap: () {
                    setState(() {
                      curUserId = Cr.CourseID;
                    });
                    CourseNameController.text = Cr.CourseName;
                  },
                ),
            DataCell(
              Text(Cr.CourseName),
              onTap: () {
                setState(() {
                  curUserId = Cr.CourseID;
                });
                CourseNameController.text = Cr.CourseName;
              },
            ),
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
        title: new Text('SQFlite Insert Data'),
        backgroundColor:Colors.teal,
      ),
      body:
        ListView(
          children: <Widget>[

            Form(
              key: formKey,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Course ID:"),
                    TextField(
                      decoration:InputDecoration(
                        icon: Icon(Icons.exposure_plus_1),
                      ),
                      enabled:false,
                      controller:CourseIDController,
                    ),
                    Text("Course Name:"),
                    TextFormField(
                      decoration:InputDecoration(
                        icon:Icon(Icons.add),
                        hintText:"Course Name",
                      ),
                      controller: CourseNameController,
                      keyboardType: TextInputType.text,
                      validator: (val) => val.length == 0 ? 'Enter Name' : null,
                      onSaved: (val) => name = val,
                    ),
                    SizedBox(
                      width:double.infinity,
                      child:RaisedButton(
                        color: Colors.green,
                        shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child:
                        Text(
                          'Add Course',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: validate,
                      ),
                    ),

                  ],
                ),
              ),
            ),


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