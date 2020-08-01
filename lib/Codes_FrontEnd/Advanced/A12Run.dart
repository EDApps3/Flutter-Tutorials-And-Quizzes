import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:async';
import 'dart:io' as io;
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

void main() => runApp(Bookmarking());


class WallPaper {
  int    WID;
  String ImgSrc;
  String Title;
  String IsBookmarked;


  WallPaper(
      this.WID,
      this.ImgSrc,
      this.Title,
      this.IsBookmarked,
  );

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'WID'               : WID,
      'ImgSrc'            : ImgSrc,
      'Title'             : Title,
      'IsBookmarked'      : IsBookmarked,
    };
    return map;
  }

  WallPaper.fromMap(Map<String, dynamic> map) {
    WID              = map['WID'];
    ImgSrc           = map['ImgSrc'];
    Title            = map['Title'];
    IsBookmarked     = map['IsBookmarked'];
  }

}


List BKWallPaperLst =new List();


class DBSQL {
  static const String DB_NAME       = "Bookmarking3.db";
  static const String WID           = 'WID';
  static const String WTitle        = 'Title';
  static const String WIsBookmarked = 'IsBookmarked';
  static const String WImgSrc       = 'ImgSrc';
  static const String TABLE         = 'Bookmarking';
  Database _dbBookmarking;


  Future<Database> get db async {
    if (_dbBookmarking != null) {
      return _dbBookmarking;
    }
    _dbBookmarking = await initDbBookmarking();
    return _dbBookmarking;
  }

  initDbBookmarking() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, DB_NAME);
    var db = await openDatabase(path, version: 1, onCreate: _onCreate);
    return db;
  }

  _onCreate(Database db, int version) async {
    WallPaper W1=new WallPaper(1,"Images/S1.jpg","WallPaper1","false");
    WallPaper W2=new WallPaper(2,"Images/S2.jpg","WallPaper2","false");
    print("Creating Bookmarking Table...");
    await db.execute("CREATE TABLE $TABLE  ($WID INTEGER PRIMARY KEY, $WImgSrc TEXT, $WTitle TEXT, $WIsBookmarked TEXT)");
    await db.insert(TABLE,W1.toMap());
    await db.insert(TABLE,W2.toMap());
  }


  Future<List<WallPaper>> getWallPapers() async {
    var dbWallPaper = await db;
    List<Map> maps = await dbWallPaper.rawQuery("SELECT * FROM $TABLE");
    List<WallPaper> WallPaperArr = [];
    if (maps.length > 0) {
      for (int i = 0; i < maps.length; i++) {
        WallPaperArr.add(WallPaper.fromMap(maps[i]));
      }
    }
    return WallPaperArr;
  }


  Future<int> updateBookmarkContent(WallPaper A) async {
    var dbApp = await db;
    return await dbApp.update(TABLE, A.toMap(), where: '$WID = ?', whereArgs:[A.WID]);
  }

}




class Bookmarking extends StatefulWidget {
  @override
  BookmarkingState createState() => new BookmarkingState();
}

class BookmarkingState extends State<Bookmarking> {
  Future<List<WallPaper>> FList;

  @override
  initState() {
    super.initState();
    refreshList();
  }

  refreshList() {
    setState(() {
      FList=DBSQL().getWallPapers();
    });
  }

  Future<void> UpdateW(WallPaper WL) async {
       var WID     =WL.WID;
       var WTitle  =WL.Title;
       var WImgSrc =WL.ImgSrc;
       var WIsBk   =(WL.IsBookmarked=="true")?"false":"true";
       WallPaper W=  new WallPaper(WID,WImgSrc,WTitle,WIsBk);

       await DBSQL().updateBookmarkContent(W);
       refreshList();
  }


  ListView DisplayWallPapers(List<WallPaper> WLst) {
    return ListView(
      children: <Widget>[
         for(var i=0;i<WLst.length;i++)
          Padding(
            padding: const EdgeInsets.all(18.0),
            child:Card(
              child:Column(
                children: <Widget>[
                  Image.asset(WLst[i].ImgSrc),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        IconButton(
                          icon:
                           (WLst[i].IsBookmarked=="true")?
                             Icon(Icons.favorite,color:Colors.red,size:31,)
                            :Icon(Icons.favorite_border,color:Colors.grey,size:31,),
                          onPressed:(){
                            UpdateW(WLst[i]);
                          },
                        ),
                        
                        Text(
                          WLst[i].Title,
                          style:TextStyle(color:Colors.teal,fontSize:20),
                        )
                      ],
                    ),
                  )
                ],
              ),

            ),
      
          ),
      ],
    );
   }



  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Scaffold(
        appBar:AppBar(
          leading:Icon(
            Icons.favorite,  
            color:Colors.red,
          ),
          title:Text("Bookmarking"),
        ),
        body:FutureBuilder(
          future:FList,
          builder:(context,snapshot){
            if(snapshot.hasData){
              return DisplayWallPapers(snapshot.data);
            }
            else{
              return CircularProgressIndicator();
            }
          },
        ),
        ),
    );
  }
}