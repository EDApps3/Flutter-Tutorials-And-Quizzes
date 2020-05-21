import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'dart:async';
import 'dart:io' as io;
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'main.dart';

String SoundResult,PopupResult;
Database _dbApp;

class App {
  int AppID;
  String Type;
  String Result;

  App(
      this.AppID,
      this.Type,
      this.Result
  );

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'AppID'  : AppID,
      'Type'   : Type,
      'Result' : Result,
    };
    return map;
  }

  App.fromMap(Map<String, dynamic> map) {
    AppID   = map['AppID'];
    Type    = map['Type'];
    Result  = map['Result'];
  }

}

class DBApp {
  static const String DB_NAME = "AppSettings.db";
  static const String AppID   = 'AppID';
  static const String Type    = 'Type';
  static const String Result  = 'Result';
  static const String TABLE   = 'AppTable';


  Future<Database> get db async {
    if (_dbApp != null) {
      return _dbApp;
    }
    _dbApp = await initDbApp();
    return _dbApp;
  }

  initDbApp() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, DB_NAME);
    var db = await openDatabase(path, version: 1, onCreate: _onCreate);
    return db;
  }

  _onCreate(Database db, int version) async {
    print("Creating Table...");
    await db.execute("CREATE TABLE $TABLE ($AppID INTEGER PRIMARY KEY, $Type TEXT, $Result TEXT)");
    print("Adding First Data...");

    print("Setting Up Music...");
    App AS1=new App(1,"Sound","NotMuted");
    await db.insert(TABLE, AS1.toMap());

    print("Setting Up Popup...");
    App AS2=new App(2,"Popup","Show");
    await db.insert(TABLE, AS2.toMap());

  }

  Future<App> save(App AS) async {
    var dbApp = await db;
    AS.AppID = await dbApp.insert(TABLE, AS.toMap());
    return AS;
  }

  Future<String> getAppSound() async {
    var dbAppSound = await db;
    List<Map> maps = await dbAppSound.rawQuery("SELECT * FROM $TABLE Where Type='Sound'");
    List<App> AppSoundArr = [];
    if (maps.length > 0) {
      for (int i = 0; i < maps.length; i++) {
        SoundResult=App.fromMap(maps[i]).Result;
        print("Sound--->"+SoundResult);
        break;
      }
    }
  }

  Future<String> getAppStartPopup() async {
    var dbAppStartPopup = await db;
    List<Map> maps = await dbAppStartPopup.rawQuery("SELECT * FROM $TABLE Where Type='Popup'");
    List<App> AppSoundArr = [];
    if (maps.length > 0) {
      for (int i = 0; i < maps.length; i++) {
        PopupResult=App.fromMap(maps[i]).Result;
        print("Popup--->"+PopupResult);
        break;
      }
    }
  }

  Future<int> update(App A) async {
    var dbApp = await db;
    return await dbApp.update(TABLE, A.toMap(), where: '$AppID = ?', whereArgs:[A.AppID]);
  }

  Future close() async {
    var dbCourse = await db;
    dbCourse.close();
  }

}



class SettingPage extends StatefulWidget {
  @override
  SettingPageState createState() => new SettingPageState();
}

class SettingPageState extends State<SettingPage> with AutomaticKeepAliveClientMixin {
  AudioPlayer advancedPlayer;
  AudioCache audioCache;
  bool _SWvalue;
  bool _PWvalue;

  void initPlayer(){
    advancedPlayer = new AudioPlayer();
    audioCache = new AudioCache(fixedPlayer: advancedPlayer);
  }

  void PlayTapSound() async{
    audioCache.play('Music/Tap.mp3');
  }

  void initState(){
    super.initState();
    initPlayer();

    if(SoundResult=="Muted"){
      _SWvalue=true;
    }
    else{
      _SWvalue=false;
    }

    if(PopupResult=="DontShow"){
      _PWvalue=true;
    }
    else{
      _PWvalue=false;
    }

  }


  void _onSWChanged(bool value) {
    var dbApp = DBApp();
    App AS;

    setState (() {
      _SWvalue = value;

      if(_SWvalue==false){
        PlayTapSound();
        AS=new App(1,"Sound","NotMuted");
      }
      else{
        PlayTapSound();
        AS=new App(1,"Sound","Muted");
      }
      dbApp.update(AS);
      dbApp.getAppSound();
    });
  }


  void _onPWChanged(bool value) {
    var dbApp = DBApp();
    App AS;

    setState (() {
      _PWvalue = value;

      if(_PWvalue==false){
        PlayTapSound();
        AS=new App(2,"Popup","Show");
        PopupBool=true;
      }
      else{
        PlayTapSound();
        AS=new App(2,"Popup","DontShow");
        PopupBool=false;
      }
      dbApp.update(AS);
      dbApp.getAppStartPopup();
    });
  }



  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("Settings"),
        leading:IconButton(
          icon:Icon(Icons.arrow_back),
          onPressed:(){
            Navigator.push(context,MaterialPageRoute(builder:(context)=>Main()));
          },
        ),
      ),
      body:
      ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: <Widget>[

                SizedBox(height:10),

                SizedBox(
                  width:double.infinity,
                  height:60,
                  child:Card(
                    color:Colors.teal,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                          "Sound:",
                          style:TextStyle(
                            fontSize:20,
                            color:Colors.white,
                          ),
                      ),
                    ),
                  ),
                ),


                Card(
                  color:Colors.grey[200],
                  child:Row(
                    children: <Widget>[
                      Container(
                        width:MediaQuery.of(context).size.width*0.26,
                        child:Icon(Icons.volume_up),
                      ),
                      Text("On"),
                      Container(
                        width:MediaQuery.of(context).size.width*0.27,
                        child:Switch(
                          activeColor:Colors.white,
                          inactiveThumbColor:Colors.white,
                          value: _SWvalue,
                          onChanged: _onSWChanged,
                        ),
                      ),
                      Text("Off"),
                      Container(
                        width:MediaQuery.of(context).size.width*0.26,
                        child:Icon(Icons.volume_mute),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  width:double.infinity,
                  height:60,
                  child:Card(
                    color:Colors.teal,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        "Startup Update Popup:",
                        style:TextStyle(
                          fontSize:20,
                          color:Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),

                Card(
                  color:Colors.grey[200],
                  child:Row(
                    children: <Widget>[
                      Container(
                        width:MediaQuery.of(context).size.width*0.26,
                        child:Icon(Icons.warning),
                      ),
                      Text("On"),
                      Container(
                        width:MediaQuery.of(context).size.width*0.27,
                        child:Switch(
                          activeColor:Colors.white,
                          inactiveThumbColor:Colors.white,
                          value: _PWvalue,
                          onChanged: _onPWChanged,
                        ),
                      ),
                      Text("Off"),
                      Container(
                        width:MediaQuery.of(context).size.width*0.26,
                        child:Icon(Icons.close),
                      ),
                    ],
                  ),
                ),








              ],
            ),
          ),
        ],
      )

    );
  }

  @override
  bool get wantKeepAlive => true;

}









