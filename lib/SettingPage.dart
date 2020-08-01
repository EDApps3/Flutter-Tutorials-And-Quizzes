import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'dart:async';
import 'dart:io' as io;
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'LoadFireBaseAdmob.dart';
import 'Page_BackEnd.dart';
import 'main.dart';
import 'UserDataInfo.dart';
import 'Page_FrontEnd.dart';
import 'package:get/get.dart';
import 'MainSplashScreen.dart';
import 'AppLang.dart';


String SoundResult,PopupResult,LoginResult,ThemeResult;
Database _dbApp;
Color ThemeAppBar,ThemeBg,CardBg;


List<String> SelectedLangList = ['English','Arabic','Spanish','India','French'];
String SelectedLang;
String SelectedLangAbv="en";








class UserData {
  int Tokens,Xp,Rank;
  String UserName,AvatarImage,UID,UserID,PID;

  UserData(
      this.UserID,
      this.Tokens,
      this.Xp,
      this.UserName,
      this.AvatarImage,
      this.UID,
      this.PID,
      this.Rank,
  );

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'UserID'     : UserID,
      'Tokens'     : Tokens,
      'Xp'         : Xp,
      'UserName'   : UserName,
      'AvatarImage': AvatarImage,
      'UID'        : UID,
      'PID'        : PID,
    };
    return map;
  }

  UserData.fromMap(Map<String, dynamic> map) {
    UserID       = map['UserID'];
    Tokens       = map['Tokens'];
    Xp           = map['Xp'];
    UserName     = map['UserName'];
    AvatarImage  = map['AvatarImage'];
    UID          = map['UID'];
    PID          = map['PID'];
  }

}


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
  static const String DB_NAME = "AppSettingsFixed.db";
  static const String AppID   = 'AppID';
  static const String Type    = 'Type';
  static const String Result  = 'Result';
  static const String TABLE   = 'AppTable';

  static const String UserID        = 'UserID';
  static const String UserName      = 'UserName';
  static const String Tokens        = 'Tokens';
  static const String Xp            = 'Xp';
  static const String AvatarImage   = 'AvatarImage';
  static const String AvatarUID     = 'UID';
  static const String AvatarPID     = 'PID';

  static const String UserDataTable = 'UserData';


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
    print("Creating Setting Table...");
    await db.execute("CREATE TABLE $TABLE ($AppID INTEGER PRIMARY KEY, $Type TEXT, $Result TEXT)");

    print("Creating UserData Table...");
    await db.execute("CREATE TABLE $UserDataTable ($UserID TEXT PRIMARY KEY, $UserName TEXT, $Tokens INTEGER, $Xp INTEGER, $AvatarImage TEXT, $AvatarUID TEXT,$AvatarPID TEXT)");
    print("Setting UserData...");
    UserData US=new UserData("1",0,0,"John Doe","Images/LandingPage/Avatar.gif","-1","-1",1);
    await db.insert(UserDataTable,US.toMap());
  }


  Future<void> AddDataSetting() async {
    var DataDB = await db;
    await DBApp().getAvatarInfo();
    await DBApp().getLogin();
    await DBApp().getShowBookmarkBackEnd();
    await DBApp().getShowBookmarkFrontEnd();
    await DBApp().getAppStartPopup();
    await DBApp().getAppSound();
    await DBApp().getAppTheme();
    await DBApp().getAppLang();

    if(SoundResult==null){
      print("Adding SoundResult Table...");
      App AS1=new App(1,"Sound","NotMuted");
      SoundResult="NotMuted";
      await DataDB.insert(TABLE, AS1.toMap());
    }
    if(PopupResult==null){
      print("Adding PopupResult Table...");
      App AS2=new App(2,"Popup","Show");
      PopupResult="Show";
      await DataDB.insert(TABLE, AS2.toMap());
    }
    if(LoginResult==null){
      print("Adding Login Table...");
      App AS3=new App(3,"Login","NoLoginFound");
      LoginResult="NoLoginFound";
      await DataDB.insert(TABLE, AS3.toMap());
    }
    if(ShowBookmarks_FrontEnd==null){
      print("Adding ShowBookmarkFrontEnd Table...");
      App AS4=new App(4,"ShowBookmarkFrontEnd","DontShowBookmark");
      ShowBookmarks_FrontEnd="DontShowBookmark";
      await DataDB.insert(TABLE, AS4.toMap());
    }
    if(ShowBookmarks_BackEnd==null){
      print("Adding ShowBookmarkBackEnd Table...");
      App AS5=new App(5,"ShowBookmarkBackEnd","DontShowBookmark");
      ShowBookmarks_BackEnd="DontShowBookmark";
      await DataDB.insert(TABLE, AS5.toMap());
    }
    if(ThemeResult==null){
      print("Adding ThemeResult Table...");
      App AS6=new App(6,"Theme","Light");
      ThemeResult="Light";
      await DataDB.insert(TABLE, AS6.toMap());
    }
    if(SelectedLang==null){
      print("Adding Lang Table...");
      App AS7=new App(7,"Lang","English");
      ThemeResult="English";
      await DataDB.insert(TABLE, AS7.toMap());
    }

    await DBApp().getShowBookmarkBackEnd();
    await DBApp().getShowBookmarkFrontEnd();
    await DBApp().getAppStartPopup();
    await DBApp().getAppSound();
    await DBApp().getAppTheme();
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

  Future<String> getAppTheme() async {
    var dbAppSound = await db;
    List<Map> maps = await dbAppSound.rawQuery("SELECT * FROM $TABLE Where Type='Theme'");
    List<App> AppSoundArr = [];
    if (maps.length > 0) {
      for (int i = 0; i < maps.length; i++) {
        ThemeResult=App.fromMap(maps[i]).Result;
        if(ThemeResult=="Light"){
          ThemeAppBar=Colors.blue;
          ThemeBg=Colors.white;
          CardBg=Colors.teal;
        }
        else{
          ThemeAppBar=Colors.black.withOpacity(0.9);
          ThemeBg=Colors.black.withOpacity(0.8);
          CardBg=Colors.black.withOpacity(0.6);
        }
        print("Theme --->"+ThemeResult);
        break;
      }
    }
  }

  Future<String> getAppLang() async {
    var dbAppSound = await db;
    List<Map> maps = await dbAppSound.rawQuery("SELECT * FROM $TABLE Where Type='Lang'");
    if (maps.length > 0) {
      for (int i = 0; i < maps.length; i++) {
        SelectedLang=App.fromMap(maps[i]).Result;
        if(SelectedLang=="English"){
          SelectedLangAbv="en";
        }
        else if(SelectedLang=="Arabic"){
          SelectedLangAbv="ar";
        }
        else if(SelectedLang=="Spanish"){
          SelectedLangAbv="es";
        }
        else if(SelectedLang=="India"){
          SelectedLangAbv="bn";
        }
        else if(SelectedLang=="French"){
          SelectedLangAbv="fr";
        }
        
        print("App Lang --->"+SelectedLang+" - "+SelectedLangAbv);
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

  Future<String> getLogin() async {
    var dbAppLogin = await db;
    List<Map> maps = await dbAppLogin.rawQuery("SELECT * FROM $TABLE Where Type='Login'");
    List<App> AppLoginArr = [];
    if (maps.length > 0) {
      for (int i = 0; i < maps.length; i++) {
        LoginResult=App.fromMap(maps[i]).Result;
        print("Logged In?--->"+LoginResult);
        break;
      }
    }
  }

  Future<String> getShowBookmarkFrontEnd() async {
    var dbAppLogin = await db;
    List<Map> maps = await dbAppLogin.rawQuery("SELECT * FROM $TABLE Where Type='ShowBookmarkFrontEnd'");
    List<App> AppLoginArr = [];
    if (maps.length > 0) {
      for (int i = 0; i < maps.length; i++) {
        ShowBookmarks_FrontEnd=App.fromMap(maps[i]).Result;
        print("ShowBookmark_FrontEnd?--->"+ShowBookmarks_FrontEnd);
        break;
      }
    }
  }

  Future<String> getShowBookmarkBackEnd() async {
    var dbAppLogin = await db;
    List<Map> maps = await dbAppLogin.rawQuery("SELECT * FROM $TABLE Where Type='ShowBookmarkBackEnd'");
    List<App> AppLoginArr = [];
    if (maps.length > 0) {
      for (int i = 0; i < maps.length; i++) {
        ShowBookmarks_BackEnd=App.fromMap(maps[i]).Result;
        print("ShowBookmark_BackEnd?--->"+ShowBookmarks_BackEnd);
        break;
      }
    }
  }



  Future<String> getAvatarInfo() async {
    var dbAppAvatarName = await db;
    List<Map> maps = await dbAppAvatarName.rawQuery("SELECT * FROM $UserDataTable");
    List<App> AppAvatarNameArr = [];
    if (maps.length > 0) {
      for (int i = 0; i < maps.length; i++) {
        AvatarName   =UserData.fromMap(maps[i]).UserName;
        AvatarXp     =UserData.fromMap(maps[i]).Xp.toInt();
        AvatarTokens =UserData.fromMap(maps[i]).Tokens.toInt();
        AvatarImg    =UserData.fromMap(maps[i]).AvatarImage;
        UID          =UserData.fromMap(maps[i]).UID;
        PID          =UserData.fromMap(maps[i]).PID;
        print("AvatarName   ---> $AvatarName");
        print("AvatarXp     ---> $AvatarXp");
        print("AvatarTokens ---> $AvatarTokens");
        print("AvatarImage  ---> $AvatarImg");
        print("AvatarUID    ---> $UID");
        print("AvatarPID    ---> $PID");
        break;
      }
    }
  }


  Future<int> update(App A) async {
    var dbApp = await db;
    return await dbApp.update(TABLE, A.toMap(), where: '$AppID = ?', whereArgs:[A.AppID]);
  }

  Future<int> updateUserData(UserData A) async {
    var dbApp = await db;
    return await dbApp.update(UserDataTable, A.toMap(), where: '$UserID = ?', whereArgs:[A.UserID]);
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
  bool _Themevalue;



  void initPlayer(){
    advancedPlayer = new AudioPlayer();
    audioCache = new AudioCache(fixedPlayer: advancedPlayer);
  }

  void PlayTapSound() async{
    audioCache.play('Music/Tap.mp3');
  }

  void initState(){
    //ShowMyAds();
    super.initState();
    initPlayer();
    //createMyBannerAd();

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

    if(ThemeResult=="Light"){
      _Themevalue=false;
    }
    else{
      _Themevalue=true;
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

      Future<void> _onThemeChanged(bool value) async {
    var dbApp = DBApp();
    App AS;

    setState (()  {
      _Themevalue = value;

      if(_Themevalue==false){
        PlayTapSound();
        AS=new App(6,"Theme","Light");
      }
      else{
        PlayTapSound();
        AS=new App(6,"Theme","Dark");
      }
    });
    await dbApp.update(AS);
    Get.to(MainSplashScreen());
  }

  
    return Scaffold(
      backgroundColor:ThemeBg,
      appBar:AppBar(
        backgroundColor:ThemeAppBar,
        leading:IconButton(
              icon:Image.asset("Images/settings.png"),
              onPressed:(){},
            ),
        title:Text(SettingsTxtTrans),
      ),
      /*
       bottomNavigationBar:BottomAppBar(
            color:Colors.transparent,
            child:Container(
              child:(MyBanner!=null)?MyBanner:Divider(),
            ),
          ),
          */
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
                    color:CardBg,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                          SoundTxtTrans,
                          style:TextStyle(
                            fontSize:16,
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
                        width:MediaQuery.of(context).size.width*0.20,
                        child:Icon(Icons.volume_up),
                      ),
                      Text(OnTxtTrans),
                      Container(
                        width:MediaQuery.of(context).size.width*0.20,
                        child:Switch(
                          activeColor:Colors.white,
                          inactiveThumbColor:Colors.white,
                          value: _SWvalue,
                          onChanged: _onSWChanged,
                        ),
                      ),
                      Text(OffTxtTrans),
                      Container(
                        width:MediaQuery.of(context).size.width*0.20,
                        child:Icon(Icons.volume_mute),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  width:double.infinity,
                  height:60,
                  child:Card(
                    color:CardBg,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        StartupUpdatePopupTxtTrans,
                        style:TextStyle(
                          fontSize:16,
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
                        width:MediaQuery.of(context).size.width*0.20,
                        child:Icon(Icons.warning),
                      ),
                      Text(OnTxtTrans),
                      Container(
                        width:MediaQuery.of(context).size.width*0.20,
                        child:Switch(
                          activeColor:Colors.white,
                          inactiveThumbColor:Colors.white,
                          value: _PWvalue,
                          onChanged: _onPWChanged,
                        ),
                      ),
                      Text(OffTxtTrans),
                      Container(
                        width:MediaQuery.of(context).size.width*0.20,
                        child:Icon(Icons.close),
                      ),
                    ],
                  ),
                ),





                //--------------------------------
                //--------------------------------
                //--------------------------------


                SizedBox(
                  width:double.infinity,
                  height:60,
                  child:Card(
                    color:CardBg,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        ThemeTxtTrans,
                        style:TextStyle(
                          fontSize:16,
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
                        width:MediaQuery.of(context).size.width*0.20,
                        child:Icon(Icons.brightness_7),
                      ),
                      Text(LightTxtTrans),
                      Container(
                        width:MediaQuery.of(context).size.width*0.20,
                        child:Switch(
                          activeColor:Colors.white,
                          inactiveThumbColor:Colors.white,
                          value: _Themevalue,
                          onChanged: _onThemeChanged,
                        ),
                      ),
                      Text(DarkTxtTrans),
                      Container(
                        width:MediaQuery.of(context).size.width*0.20,
                        child:Icon(Icons.brightness_1),
                      ),
                    ],
                  ),
                ),



                //--------------------------------
                //--------------------------------
                //--------------------------------


                SizedBox(
                  width:double.infinity,
                  height:117,  
                  child:Card(
                    color:CardBg,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment:CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                           SelectedLanguageTxtTrans,
                           style:TextStyle(
                            fontSize:16,
                            color:Colors.white,
                           ),
                          ),
                          Text(
                           AlertLanguageTxtTrans,
                           style:TextStyle(
                            fontSize:16, 
                            color:Colors.red,
                           ),
                          ),
                        ],
                      )
                    ),
                  ),
                ),

                Card(
                  color:Colors.grey[200],
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SizedBox(
                     width:MediaQuery.of(context).size.width,
                     child:DropdownButton(
                     hint: Text('English'),
                     value: SelectedLang,
                     onChanged: (newValue) async {
                     setState(() {
                       SelectedLang = newValue;
                       if(SelectedLang=="English"){
                         SelectedLangAbv="en";
                       }
                       else if(SelectedLang=="Arabic"){
                         SelectedLangAbv="ar";
                       }
                       else if(SelectedLang=="Chinese"){
                         SelectedLangAbv="zh-cn";
                       }
                       else if(SelectedLang=="Spanish"){
                         SelectedLangAbv="es";
                       }
                       else if(SelectedLang=="India"){
                         SelectedLangAbv="bn";
                       }
                     });
                     var dbApp = DBApp();
                     App AS;
                     AS=new App(7,"Lang",SelectedLang);
                     await dbApp.update(AS);
                     await dbApp.getAppLang();
                     Get.to(MainSplashScreen()); 
                    },
                    items: SelectedLangList.map((Show) {
                     return DropdownMenuItem(
                       child:Container(
                         width:MediaQuery.of(context).size.width-90,  
                         child:Text(Show,style:TextStyle(color:Colors.black),),
                       ),
                       value: Show,
                     );
                 }).toList(),  
                ),
               ),
                  ),
              
                ),








              ],
            ),
          ),
          
        ],
      ),
       bottomNavigationBar:(AddBanID=="NoAds")?Divider():BottomAppBar(
            color:Colors.transparent,
            child:Container(
              child:(MyBanner!=null)?MyBanner:Divider(),
            ),
          ),

    );
  }

  @override
  bool get wantKeepAlive => true;

}









