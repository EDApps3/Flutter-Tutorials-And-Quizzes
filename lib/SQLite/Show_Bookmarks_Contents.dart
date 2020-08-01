
import 'dart:async';
import 'dart:io' as io;
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_tutorials_and_quizzes/Page_FrontEnd.dart';
import 'package:flutter_tutorials_and_quizzes/Page_BackEnd.dart';

Database _dbBookmarksContents;

class App_BookmarksContent {
  int    AppBkID;
  String AppBkName;
  String IsBookmarked;

  App_BookmarksContent(
      this.AppBkID,
      this.AppBkName,
      this.IsBookmarked
      );

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'AppBkID'      : AppBkID,
      'AppBkName'    : AppBkName,
      'IsBookmarked' : IsBookmarked,
    };
    return map;
  }

  App_BookmarksContent.fromMap(Map<String, dynamic> map) {
    AppBkID       = map['AppBkID'];
    AppBkName     = map['AppBkName'];
    IsBookmarked  = map['IsBookmarked'];
  }

}

class DBBkContApp {
  static const String DB_NAME      = "DBContAppFixed.db";
  static const String AppBkID      = 'AppBkID';
  static const String AppBkName    = 'AppBkName';
  static const String IsBookmarked = 'IsBookmarked';
  static const String TABLE        = 'BookmarksContentFrontEnd';
  static const String TABLE2       = 'BookmarksContentBackEnd';

  Future<Database> get db async {

    if (_dbBookmarksContents != null) {
      return _dbBookmarksContents;
    }
    _dbBookmarksContents = await initDbBkContApp();
    return _dbBookmarksContents;
  }

  initDbBkContApp() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, DB_NAME);
    var db = await openDatabase(path, version: 1, onCreate: _onCreate);
    return db;
  }

  _onCreate(Database db, int version) async {
    print("Creating BookmarksContent Table...");
    await db.execute("CREATE TABLE $TABLE  ($AppBkID INTEGER PRIMARY KEY, $AppBkName TEXT, $IsBookmarked TEXT)");
    await db.execute("CREATE TABLE $TABLE2 ($AppBkID INTEGER PRIMARY KEY, $AppBkName TEXT, $IsBookmarked TEXT)");
  }


  Future<void> AddDataFrontEnd() async {
    var DataDB = await db;
    await DBBkContApp().getContentBookmark();
    print("Adding First Data...");
    App_BookmarksContent ABK1   =new App_BookmarksContent(1   ,"Introduction"     ,"NotBookmarked");
    App_BookmarksContent ABK2   =new App_BookmarksContent(2   ,"Keywords"         ,"NotBookmarked");
    App_BookmarksContent ABK3   =new App_BookmarksContent(3   ,"Text"             ,"NotBookmarked");
    App_BookmarksContent ABK4   =new App_BookmarksContent(4   ,"HeaderAppBar"     ,"NotBookmarked");
    App_BookmarksContent ABK5   =new App_BookmarksContent(5   ,"MainPageBgColor"  ,"NotBookmarked");
    App_BookmarksContent ABK6   =new App_BookmarksContent(6   ,"Image"            ,"NotBookmarked");
    App_BookmarksContent ABK7   =new App_BookmarksContent(7   ,"Buttons"          ,"NotBookmarked");
    App_BookmarksContent ABK8   =new App_BookmarksContent(8   ,"Toast"          ,"NotBookmarked");
    App_BookmarksContent ABK9   =new App_BookmarksContent(9   ,"Layouts"          ,"NotBookmarked");
    App_BookmarksContent ABK10  =new App_BookmarksContent(10  ,"Dialogs"          ,"NotBookmarked");
    App_BookmarksContent ABK11  =new App_BookmarksContent(11  ,"Divider"          ,"NotBookmarked");
    App_BookmarksContent ABK12  =new App_BookmarksContent(12  ,"Navigator"          ,"NotBookmarked");
    App_BookmarksContent ABK13  =new App_BookmarksContent(13  ,"SnackBar"          ,"NotBookmarked");
    App_BookmarksContent ABK14  =new App_BookmarksContent(14  ,"FlushBar"          ,"NotBookmarked");
    App_BookmarksContent ABK15  =new App_BookmarksContent(15  ,"Card"          ,"NotBookmarked");
    App_BookmarksContent ABK16  =new App_BookmarksContent(16  ,"TextOverFlow"          ,"NotBookmarked");
    App_BookmarksContent ABK17  =new App_BookmarksContent(17  ,"GestureDetector"          ,"NotBookmarked");
    App_BookmarksContent ABK18  =new App_BookmarksContent(18  ,"ListView"          ,"NotBookmarked");
    App_BookmarksContent ABK19  =new App_BookmarksContent(19  ,"TextField"          ,"NotBookmarked");
    App_BookmarksContent ABK20  =new App_BookmarksContent(20  ,"FooterAppBar"          ,"NotBookmarked");
    App_BookmarksContent ABK21  =new App_BookmarksContent(21  ,"ImageSlider"          ,"NotBookmarked");
    App_BookmarksContent ABK22  =new App_BookmarksContent(22  ,"Notification"          ,"NotBookmarked");
    App_BookmarksContent ABK23  =new App_BookmarksContent(23  ,"Switch"          ,"NotBookmarked");
    App_BookmarksContent ABK24  =new App_BookmarksContent(24  ,"Audio"          ,"NotBookmarked");
    App_BookmarksContent ABK25  =new App_BookmarksContent(25  ,"Video"          ,"NotBookmarked");
    App_BookmarksContent ABK26  =new App_BookmarksContent(26  ,"SimpleLoader"          ,"NotBookmarked");
    App_BookmarksContent ABK27  =new App_BookmarksContent(27  ,"AdvancedLoader"          ,"NotBookmarked");
    App_BookmarksContent ABK28  =new App_BookmarksContent(28  ,"Animation"          ,"NotBookmarked");
    App_BookmarksContent ABK29  =new App_BookmarksContent(29  ,"Radio"          ,"NotBookmarked");
    App_BookmarksContent ABK30  =new App_BookmarksContent(30  ,"CheckBox"          ,"NotBookmarked");
    App_BookmarksContent ABK31  =new App_BookmarksContent(31  ,"Chip"          ,"NotBookmarked");
    App_BookmarksContent ABK32  =new App_BookmarksContent(32  ,"TabBar"          ,"NotBookmarked");
    App_BookmarksContent ABK33  =new App_BookmarksContent(33  ,"PageSelector"          ,"NotBookmarked");
    App_BookmarksContent ABK34  =new App_BookmarksContent(34  ,"Flex"          ,"NotBookmarked");
    App_BookmarksContent ABK35  =new App_BookmarksContent(35  ,"SlectComboBox"          ,"NotBookmarked");
    App_BookmarksContent ABK36  =new App_BookmarksContent(36  ,"ExpandableList"          ,"NotBookmarked");
    App_BookmarksContent ABK37  =new App_BookmarksContent(37  ,"Slider"          ,"NotBookmarked");
    App_BookmarksContent ABK38  =new App_BookmarksContent(38  ,"Drawer"          ,"NotBookmarked");
    App_BookmarksContent ABK39  =new App_BookmarksContent(39  ,"MainSplashScreen"          ,"NotBookmarked");
    App_BookmarksContent ABK40  =new App_BookmarksContent(40  ,"Admob"          ,"NotBookmarked");
    App_BookmarksContent ABK41  =new App_BookmarksContent(41  ,"FlipCard"          ,"NotBookmarked");
    App_BookmarksContent ABK42  =new App_BookmarksContent(42  ,"FlipView"          ,"NotBookmarked");
    App_BookmarksContent ABK43  =new App_BookmarksContent(43  ,"Stepper"          ,"NotBookmarked");
    App_BookmarksContent ABK44  =new App_BookmarksContent(44  ,"BottomSheet"          ,"NotBookmarked");
    App_BookmarksContent ABK45  =new App_BookmarksContent(45  ,"SmoothPageIndicator"          ,"NotBookmarked");
    App_BookmarksContent ABK46  =new App_BookmarksContent(46  ,"Expandable"          ,"NotBookmarked");
    App_BookmarksContent ABK47  =new App_BookmarksContent(47  ,"Marquee"          ,"NotBookmarked");
    App_BookmarksContent ABK48  =new App_BookmarksContent(48  ,"ContainerWaves"          ,"NotBookmarked");
    App_BookmarksContent ABK49  =new App_BookmarksContent(49  ,"RouteTransition"          ,"NotBookmarked");
    App_BookmarksContent ABK50  =new App_BookmarksContent(50  ,"FlutterSyntaxe"          ,"NotBookmarked");
    App_BookmarksContent ABK51  =new App_BookmarksContent(51  ,"SlidingUpPanel"          ,"NotBookmarked");
    App_BookmarksContent ABK52  =new App_BookmarksContent(52  ,"PopupMenuButton"          ,"NotBookmarked");
    App_BookmarksContent ABK53  =new App_BookmarksContent(53  ,"HeroAnimation"          ,"NotBookmarked");
    App_BookmarksContent ABK54  =new App_BookmarksContent(54  ,"AvatarGlow"          ,"NotBookmarked");
    App_BookmarksContent ABK55  =new App_BookmarksContent(55  ,"DataTable"          ,"NotBookmarked");
    App_BookmarksContent ABK56  =new App_BookmarksContent(56  ,"WebView"          ,"NotBookmarked");
    App_BookmarksContent ABK57  =new App_BookmarksContent(57  ,"BackDrop"          ,"NotBookmarked");
    App_BookmarksContent ABK58  =new App_BookmarksContent(58  ,"AnimatedIcons"          ,"NotBookmarked");
    App_BookmarksContent ABK59  =new App_BookmarksContent(59  ,"TinderSwipe"          ,"NotBookmarked");
    App_BookmarksContent ABK60  =new App_BookmarksContent(60  ,"ImagePicker"          ,"NotBookmarked");
    App_BookmarksContent ABK61  =new App_BookmarksContent(61  ,"MultiImagePicker"          ,"NotBookmarked");
    App_BookmarksContent ABK62  =new App_BookmarksContent(62  ,"AdvancePdfViewer"          ,"NotBookmarked");
    App_BookmarksContent ABK63  =new App_BookmarksContent(63  ,"GoogleNavBar"          ,"NotBookmarked");
    App_BookmarksContent ABK64  =new App_BookmarksContent(64  ,"Clippy"          ,"NotBookmarked");
    App_BookmarksContent ABK65  =new App_BookmarksContent(65  ,"WaterDrop"          ,"NotBookmarked");
    App_BookmarksContent ABK66  =new App_BookmarksContent(66  ,"DayNightPicker"          ,"NotBookmarked");
    App_BookmarksContent ABK67  =new App_BookmarksContent(67  ,"GrafPix"          ,"NotBookmarked");
    App_BookmarksContent ABK68  =new App_BookmarksContent(68  ,"ListScrollWheel"          ,"NotBookmarked");
    App_BookmarksContent ABK69  =new App_BookmarksContent(69  ,"AnimatedDialog"          ,"NotBookmarked");
    App_BookmarksContent ABK70  =new App_BookmarksContent(70  ,"ToggleButtons"          ,"NotBookmarked");
    App_BookmarksContent ABK71  =new App_BookmarksContent(71  ,"SelectableText"          ,"NotBookmarked");
    App_BookmarksContent ABK72  =new App_BookmarksContent(72  ,"GridView"          ,"NotBookmarked");
    App_BookmarksContent ABK73  =new App_BookmarksContent(73  ,"CurvedNavBar"          ,"NotBookmarked");
    App_BookmarksContent ABK74  =new App_BookmarksContent(74  ,"FloatingActionButton"          ,"NotBookmarked");
    App_BookmarksContent ABK75  =new App_BookmarksContent(75  ,"Tooltip"          ,"NotBookmarked");
    App_BookmarksContent ABK76  =new App_BookmarksContent(76  ,"BackDetector"          ,"NotBookmarked");
    App_BookmarksContent ABK77  =new App_BookmarksContent(77  ,"Clipping"          ,"NotBookmarked");
    App_BookmarksContent ABK78  =new App_BookmarksContent(78  ,"NavigatorRail"          ,"NotBookmarked");
    App_BookmarksContent ABK79  =new App_BookmarksContent(79  ,"FancyBottomNavBar"          ,"NotBookmarked");
    App_BookmarksContent ABK80  =new App_BookmarksContent(80  ,"ColorPicker"          ,"NotBookmarked");
    App_BookmarksContent ABK81  =new App_BookmarksContent(81  ,"LikeButton"          ,"NotBookmarked");
    App_BookmarksContent ABK82  =new App_BookmarksContent(82  ,"SliverAppBar"          ,"NotBookmarked");
    App_BookmarksContent ABK83  =new App_BookmarksContent(83  ,"AnimatedTextKit"          ,"NotBookmarked");
    App_BookmarksContent ABK84  =new App_BookmarksContent(84  ,"FoldableSideBar"          ,"NotBookmarked");
    App_BookmarksContent ABK85  =new App_BookmarksContent(85  ,"PercentIndicator"          ,"NotBookmarked");
    App_BookmarksContent ABK86  =new App_BookmarksContent(86  ,"Advanced"          ,"NotBookmarked");
    App_BookmarksContent ABK87  =new App_BookmarksContent(87  ,"Production"          ,"NotBookmarked");
    App_BookmarksContent ABK88  =new App_BookmarksContent(88  ,"Connectivity"          ,"NotBookmarked");
    App_BookmarksContent ABK89  =new App_BookmarksContent(89  ,"SpinCircleBottomBar"          ,"NotBookmarked");
    App_BookmarksContent ABK90  =new App_BookmarksContent(90  ,"StaggeredGridView"          ,"NotBookmarked");
    App_BookmarksContent ABK91  =new App_BookmarksContent(91  ,"InAppUpdate"                   ,"NotBookmarked");
    App_BookmarksContent ABK92  =new App_BookmarksContent(92  ,"Timer"                   ,"NotBookmarked");
    App_BookmarksContent ABK93  =new App_BookmarksContent(93  ,"Share"                   ,"NotBookmarked");
    App_BookmarksContent ABK94  =new App_BookmarksContent(94  ,"ExitApp"                   ,"NotBookmarked");
    App_BookmarksContent ABK95  =new App_BookmarksContent(95  ,"TensorFlow"                   ,"NotBookmarked");
    App_BookmarksContent ABK96  =new App_BookmarksContent(96  ,"PimpMyButton"                   ,"NotBookmarked");
    App_BookmarksContent ABK97  =new App_BookmarksContent(97  ,"AnimatedList"                   ,"NotBookmarked");
    App_BookmarksContent ABK98  =new App_BookmarksContent(98  ,"FlutterAppBadger"                   ,"NotBookmarked");
    App_BookmarksContent ABK99  =new App_BookmarksContent(99  ,"InAppPurchase"                   ,"NotBookmarked");
    App_BookmarksContent ABK100 =new App_BookmarksContent(100 ,"PageView Animation"                   ,"NotBookmarked");
    App_BookmarksContent ABK101 =new App_BookmarksContent(101 ,"Animated Background"                   ,"NotBookmarked");
    App_BookmarksContent ABK102 =new App_BookmarksContent(102 ,"Geolocator"                   ,"NotBookmarked");
    App_BookmarksContent ABK103 =new App_BookmarksContent(103 ,"GoogleMaps"                   ,"NotBookmarked");
    App_BookmarksContent ABK104 =new App_BookmarksContent(104 ,"KFDrawer"                   ,"NotBookmarked");
    App_BookmarksContent ABK105 =new App_BookmarksContent(105 ,"GoogleTranslator"                   ,"NotBookmarked");
    App_BookmarksContent ABK106 =new App_BookmarksContent(106 ,"ApkAdmin"                   ,"NotBookmarked");


    if(Show_Introduction==null)   {
      print("Adding Introduction Table...");
      await DataDB.insert(TABLE, ABK1.toMap());
    }

    if(Show_Keywords==null)       {
      await DataDB.insert(TABLE, ABK2.toMap());
    }

    if(Show_Text==null)           {
      await DataDB.insert(TABLE, ABK3.toMap());
    }

    if(Show_HeaderAppBar==null)   {
      await DataDB.insert(TABLE, ABK4.toMap());
    }

    if(Show_MainPageBgColor==null){
      await DataDB.insert(TABLE, ABK5.toMap());
    }

    if(Show_Image==null)          {
      await DataDB.insert(TABLE, ABK6.toMap());
    }

    if(Show_Buttons==null)        {
      await DataDB.insert(TABLE, ABK7.toMap());
    }

    if(Show_Toast==null)          {
      await DataDB.insert(TABLE, ABK8.toMap());
    }

    if(Show_Layouts==null)        {
      await DataDB.insert(TABLE, ABK9.toMap());
    }

    if(Show_Dialogs==null)        {
      await DataDB.insert(TABLE, ABK10.toMap());
    }
    if(Show_Divider==null)        {
      await DataDB.insert(TABLE, ABK11.toMap());
    }
    if(Show_Navigator==null)        {
      await DataDB.insert(TABLE, ABK12.toMap());
    }

    if(Show_SnackBar==null)        {
      await DataDB.insert(TABLE, ABK13.toMap());
    }

    if(Show_FlushBar==null)        {
      await DataDB.insert(TABLE, ABK14.toMap());
    }

    if(Show_Card==null)        {
      await DataDB.insert(TABLE, ABK15.toMap());
    }

    if(Show_TextOverFlow==null)        {
      await DataDB.insert(TABLE, ABK16.toMap());
    }

    if(Show_GestureDetector==null)        {
      await DataDB.insert(TABLE, ABK17.toMap());
    }

    if(Show_ListView==null)        {
      await DataDB.insert(TABLE, ABK18.toMap());
    }

    if(Show_TextField==null)        {
      await DataDB.insert(TABLE, ABK19.toMap());
    }

    if(Show_FooterAppBar==null)        {
      await DataDB.insert(TABLE, ABK20.toMap());
    }

    if(Show_ImageSlider==null)        {
      await DataDB.insert(TABLE, ABK21.toMap());
    }

    if(Show_Notification==null)        {
      await DataDB.insert(TABLE, ABK22.toMap());
    }

    if(Show_Switch==null)        {
      await DataDB.insert(TABLE, ABK23.toMap());
    }

    if(Show_Audio==null)        {
      await DataDB.insert(TABLE, ABK24.toMap());
    }

    if(Show_Video==null)        {
      await DataDB.insert(TABLE, ABK25.toMap());
    }

    if(Show_SimpleLoader==null)        {
      await DataDB.insert(TABLE, ABK26.toMap());
    }

    if(Show_AdvancedLoader==null)        {
      await DataDB.insert(TABLE, ABK27.toMap());
    }

    if(Show_Animation==null)        {
      await DataDB.insert(TABLE, ABK28.toMap());
    }

    if(Show_Radio==null)        {
      await DataDB.insert(TABLE, ABK29.toMap());
    }

    if(Show_CheckBox==null)        {
      await DataDB.insert(TABLE, ABK30.toMap());
    }

    if(Show_Chip==null)        {
      await DataDB.insert(TABLE, ABK31.toMap());
    }

    if(Show_TabBar==null)        {
      await DataDB.insert(TABLE, ABK32.toMap());
    }
    if(Show_PageSelector==null)        {
      await DataDB.insert(TABLE, ABK33.toMap());
    }

    if(Show_Flex==null)        {
      await DataDB.insert(TABLE, ABK34.toMap());
    }

    if(Show_SelectComboBox==null)        {
      await DataDB.insert(TABLE, ABK35.toMap());
    }

    if(Show_ExpandableList==null)        {
      await DataDB.insert(TABLE, ABK36.toMap());
    }

    if(Show_Slider==null)        {
      await DataDB.insert(TABLE, ABK37.toMap());
    }

    if(Show_Drawer==null)        {
      await DataDB.insert(TABLE, ABK38.toMap());
    }

    if(Show_MainSplashScreen==null)        {
      await DataDB.insert(TABLE, ABK39.toMap());
    }

    if(Show_Admob==null)        {
      await DataDB.insert(TABLE, ABK40.toMap());
    }

    if(Show_FlipCard==null)        {
      await DataDB.insert(TABLE, ABK41.toMap());
    }

    if(Show_FlipView==null)        {
      await DataDB.insert(TABLE, ABK42.toMap());
    }

    if(Show_Stepper==null)        {
      await DataDB.insert(TABLE, ABK43.toMap());
    }

    if(Show_BottomSheet==null)        {
      await DataDB.insert(TABLE, ABK44.toMap());
    }

    if(Show_SmoothPageIndicator==null)        {
      await DataDB.insert(TABLE, ABK45.toMap());
    }

    if(Show_Expandable==null)        {
      await DataDB.insert(TABLE, ABK46.toMap());
    }

    if(Show_Marquee==null)        {
      await DataDB.insert(TABLE, ABK47.toMap());
    }

    if(Show_ContainerWaves==null)        {
      await DataDB.insert(TABLE, ABK48.toMap());
    }

    if(Show_RouteTransition==null)        {
      await DataDB.insert(TABLE, ABK49.toMap());
    }

    if(Show_FlutterSyntaxe==null)        {
      await DataDB.insert(TABLE, ABK50.toMap());
    }

    if(Show_SlidingUpPanel==null)        {
      await DataDB.insert(TABLE, ABK51.toMap());
    }

    if(Show_PopupMenuButton==null)        {
      await DataDB.insert(TABLE, ABK52.toMap());
    }

    if(Show_HeroAnimation==null)        {
      await DataDB.insert(TABLE, ABK53.toMap());
    }

    if(Show_AvatarGlow==null)        {
      await DataDB.insert(TABLE, ABK54.toMap());
    }

    if(Show_DataTable==null)        {
      await DataDB.insert(TABLE, ABK55.toMap());
    }

    if(Show_WebView==null)        {
      await DataDB.insert(TABLE, ABK56.toMap());
    }

    if(Show_BackDrop==null)        {
      await DataDB.insert(TABLE, ABK57.toMap());
    }

    if(Show_AnimatedIcons==null)        {
      await DataDB.insert(TABLE, ABK58.toMap());
    }

    if(Show_TinderSwipe==null)        {
      await DataDB.insert(TABLE, ABK59.toMap());
    }

    if(Show_ImagePicker==null)        {
      await DataDB.insert(TABLE, ABK60.toMap());
    }

    if(Show_MultiImagePicker==null)        {
      await DataDB.insert(TABLE, ABK61.toMap());
    }

    if(Show_AdvancePdfViewer==null)        {
      await DataDB.insert(TABLE, ABK62.toMap());
    }

    if(Show_GoogleNavBar==null)        {
      await DataDB.insert(TABLE, ABK63.toMap());
    }

    if(Show_Clippy==null)        {
      await DataDB.insert(TABLE, ABK64.toMap());
    }

    if(Show_WaterDrop==null)        {
      await DataDB.insert(TABLE, ABK65.toMap());
    }

    if(Show_DayNightPicker==null)        {
      await DataDB.insert(TABLE, ABK66.toMap());
    }

    if(Show_GrafPix==null)        {
      await DataDB.insert(TABLE, ABK67.toMap());
    }

    if(Show_ListScrollWheel==null)        {
      await DataDB.insert(TABLE, ABK68.toMap());
    }

    if(Show_AnimatedDialog==null)        {
      await DataDB.insert(TABLE, ABK69.toMap());
    }

    if(Show_ToggleButtons==null)        {
      await DataDB.insert(TABLE, ABK70.toMap());
    }

    if(Show_SelectableText==null)        {
      await DataDB.insert(TABLE, ABK71.toMap());
    }

    if(Show_GridView==null)        {
      await DataDB.insert(TABLE, ABK72.toMap());
    }

    if(Show_CurvedNavBar==null)        {
      await DataDB.insert(TABLE, ABK73.toMap());
    }

    if(Show_FloatingActionButton==null)        {
      await DataDB.insert(TABLE, ABK74.toMap());
    }

    if(Show_Tooltip==null)        {
      await DataDB.insert(TABLE, ABK75.toMap());
    }

    if(Show_BackDetector==null)        {
      await DataDB.insert(TABLE, ABK76.toMap());
    }

    if(Show_Clipping==null)        {
      await DataDB.insert(TABLE, ABK77.toMap());
    }

    if(Show_NavigationRail==null)        {
      await DataDB.insert(TABLE, ABK78.toMap());
    }

    if(Show_FancyBottomNavBar==null)        {
      print("Creating FancyBottomNavBar Table...");
      await DataDB.insert(TABLE, ABK79.toMap());
    }

    if(Show_ColorPicker==null)        {
      print("Creating ColorPicker Table...");
      await DataDB.insert(TABLE, ABK80.toMap());
    }

    if(Show_LikeButton==null)        {
      print("Creating LikeButton Table...");
      await DataDB.insert(TABLE, ABK81.toMap());
    }

    if(Show_SliverAppBar==null)        {
      print("Creating SliverAppBar Table...");
      await DataDB.insert(TABLE, ABK82.toMap());
    }

    if(Show_AnimatedTextKit==null)        {
      print("Creating AnimatedTextKit Table...");
      await DataDB.insert(TABLE, ABK83.toMap());
    }

    if(Show_FoldableSideBar==null)        {
      print("Creating FoldableSideBar Table...");
      await DataDB.insert(TABLE, ABK84.toMap());
    }

    if(Show_PercentIndicator==null)        {
      print("Creating PercentIndicator Table...");
      await DataDB.insert(TABLE, ABK85.toMap());
    }

    if(Show_Advanced==null)        {
      print("Creating Advanced Table...");
      await DataDB.insert(TABLE, ABK86.toMap());
    }

    if(Show_Production==null)        {
      print("Creating Production Table...");
      await DataDB.insert(TABLE, ABK87.toMap());
    }

    if(Show_Connectivity==null)        {
      print("Creating Connectivity Table...");
      await DataDB.insert(TABLE, ABK88.toMap());
    }

    if(Show_SpinCircleBottomBar==null)        {
      print("Creating SpinCircleBottomBar Table...");
      await DataDB.insert(TABLE, ABK89.toMap());
    }

    if(Show_StaggeredGridView==null)        {
      print("Creating StaggeredGridView Table...");
      await DataDB.insert(TABLE, ABK90.toMap());
    }

    if(Show_InAppUpdate==null)        {
      print("Creating InAppUpdate Table...");
      await DataDB.insert(TABLE, ABK91.toMap());
    }

    if(Show_Timer==null)        {
      print("Creating Timer Table...");
      await DataDB.insert(TABLE, ABK92.toMap());
    }

    if(Show_Share==null)        {
      print("Creating Share Table...");
      await DataDB.insert(TABLE, ABK93.toMap());
    }

    if(Show_ExitApp==null)        {
      print("Creating ExitApp Table...");
      await DataDB.insert(TABLE, ABK94.toMap());
    }

    if(Show_TensorFlow==null)        {
      print("Creating TensorFlow Table...");
      await DataDB.insert(TABLE, ABK95.toMap());
    }

    if(Show_PimpByButton==null)        {
      print("Creating PimpByButton Table...");
      await DataDB.insert(TABLE, ABK96.toMap());
    }

    if(Show_AnimatedList==null)        {
      print("Creating AnimatedList Table...");
      await DataDB.insert(TABLE, ABK97.toMap());
    }

    if(Show_FlutterAppBadger==null)        {
      print("Creating FlutterAppBadger Table...");
      await DataDB.insert(TABLE, ABK98.toMap());
    }

    if(Show_InAppPurchase==null)        {
      print("Creating InAppPurchase Table...");
      await DataDB.insert(TABLE, ABK99.toMap());
    }

    if(Show_PageViewAnimation==null)        {
      print("Creating PageViewAnimation Table...");
      await DataDB.insert(TABLE, ABK100.toMap());
    }

    if(Show_AnimatedBackground==null)        {
      print("Creating AnimatedBackground Table...");
      await DataDB.insert(TABLE, ABK101.toMap());
    }

    if(Show_Geolocator==null)        {
      print("Creating Geolocator Table...");
      await DataDB.insert(TABLE, ABK102.toMap());
    }

    if(Show_GoogleMaps==null)        {
      print("Creating GoogleMaps Table...");
      await DataDB.insert(TABLE, ABK103.toMap());
    }

    if(Show_KFDrawer==null)        {
      print("Creating KFDrawer Table...");
      await DataDB.insert(TABLE, ABK104.toMap());
    }

    if(Show_GoogleTranslator==null)        {
      print("Creating GoogleTranslator Table...");
      await DataDB.insert(TABLE, ABK105.toMap());
    }

    if(Show_ApkAdmin==null)        {
      print("Creating ApkAdmin Table...");
      await DataDB.insert(TABLE, ABK106.toMap());
    }

    await DBBkContApp().getContentBookmark();
  }


  Future<void> AddDataBackEnd() async {
    var DataDB = await db;
    await DBBkContApp().getContentBookmarkBackend();
    print("Adding First Data...");
    App_BookmarksContent ABK_B1   =new App_BookmarksContent(1   ,"SQFLite"                 ,"NotBookmarked");
    App_BookmarksContent ABK_B2   =new App_BookmarksContent(2   ,"HTTP+PHP"                ,"NotBookmarked");
    App_BookmarksContent ABK_B3   =new App_BookmarksContent(3   ,"Firebase"                ,"NotBookmarked");
    App_BookmarksContent ABK_B4   =new App_BookmarksContent(4   ,"FireStore"               ,"NotBookmarked");
    App_BookmarksContent ABK_B5   =new App_BookmarksContent(5   ,"FirebaseAdmob"           ,"NotBookmarked");
    App_BookmarksContent ABK_B6   =new App_BookmarksContent(6   ,"FirbasePushNotification" ,"NotBookmarked");
    App_BookmarksContent ABK_B7   =new App_BookmarksContent(7   ,"Phone Verification"      ,"NotBookmarked");
    App_BookmarksContent ABK_B8   =new App_BookmarksContent(8   ,"HTTP_PHP_Auth"      ,"NotBookmarked");
    App_BookmarksContent ABK_B9   =new App_BookmarksContent(9   ,"HTTP_PHP_CRUDImg"      ,"NotBookmarked");

    if(Show_SQFLite==null){
      print("Adding SQFlite Table...");
      await DataDB.insert(TABLE2, ABK_B1.toMap());
    }
    if(Show_HTTP_PHP==null){
      print("Adding HTTP Table...");
      await DataDB.insert(TABLE2, ABK_B2.toMap());
    }
    if(Show_FireBase==null){
      print("Adding Firebase Table...");
      await DataDB.insert(TABLE2, ABK_B3.toMap());
    }
    if(Show_FireStore==null){
      print("Adding FireStore Table...");
      await DataDB.insert(TABLE2, ABK_B4.toMap());
    }
    if(Show_FireBaseAdmob==null){
      print("Adding FireBaseAdmob Table...");
      await DataDB.insert(TABLE2, ABK_B5.toMap());
    }
    if(Show_FireBasePushNotification==null)  {
      print("Adding FireBasePushNotification Table...");
      await DataDB.insert(TABLE2, ABK_B6.toMap());
    }

    if(Show_Phone_Verification==null) {
      print("Adding Phone_Verification Table...");
      await DataDB.insert(TABLE2, ABK_B7.toMap());
    }

    if(Show_HTTP_PHP_Auth==null) {
      print("Adding HTTP_PHP_Auth Table...");
      await DataDB.insert(TABLE2, ABK_B8.toMap());
    }

    if(Show_HTTP_PHP_CRUDImg==null) {
      print("Adding HTTP_PHP_CRUDImg Table...");
      await DataDB.insert(TABLE2, ABK_B9.toMap());
    }

    await DBBkContApp().getContentBookmarkBackend();
  }


  Future<void> getContentBookmark() async {
    GettingBookmarkFrontEndContent=true;
    ContentBookMarkedList=new List();
    var dbAppSound = await db;
    List<Map> maps = await dbAppSound.rawQuery("SELECT * FROM $TABLE");
    List<App_BookmarksContent> AppContBookmarkArr = [];
    if (maps.length > 0) {
      for (int i = 0; i < maps.length; i++) {

        if(i==0){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_Introduction=true;
            ContentBookMarkedList.add(Cmp_Intro);
          }
          else{
            Show_Introduction=false;
          }
          print("Bookmark_Show_Introduction   --->  $Show_Introduction");
        }

        if(i==1){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_Keywords=true;
            ContentBookMarkedList.add(Cmp_Keywords);
          }
          else{
            Show_Keywords=false;
          }
          print("Bookmark_Show_Keywords   --->  $Show_Keywords");
        }

        if(i==2){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_Text=true;
            ContentBookMarkedList.add(Cmp_Text);
          }
          else{
            Show_Text=false;
          }
          print("Bookmark_Show_Text   --->  $Show_Text");
        }

        if(i==3){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_HeaderAppBar=true;
            ContentBookMarkedList.add(Cmp_HeaderAppBar);
          }
          else{
            Show_HeaderAppBar=false;
          }
          print("Bookmark_Show_HeaderAppBar   --->  $Show_HeaderAppBar");
        }

        if(i==4){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_MainPageBgColor=true;
            ContentBookMarkedList.add(Cmp_MainPageBgColor);
          }
          else{
            Show_MainPageBgColor=false;
          }
          print("Bookmark_Show_MainPageBgColor   --->  $Show_MainPageBgColor");
        }

        if(i==5){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_Image=true;
            ContentBookMarkedList.add(Cmp_Image);
          }
          else{
            Show_Image=false;
          }
          print("Bookmark_Show_Image   --->  $Show_Image");
        }

        if(i==6){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_Buttons=true;
            ContentBookMarkedList.add(Cmp_Buttons);
          }
          else{
            Show_Buttons=false;
          }
          print("Bookmark_Show_Buttons   --->  $Show_Buttons");
        }

        if(i==7){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_Toast=true;
            ContentBookMarkedList.add(Cmp_Toast);
          }
          else{
            Show_Toast=false;
          }
          print("Bookmark_Show_Toast   --->  $Show_Toast");
        }

        if(i==8){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_Layouts=true;
            ContentBookMarkedList.add(Cmp_Layouts);
          }
          else{
            Show_Layouts=false;
          }
          print("Bookmark_Show_Layouts   --->  $Show_Layouts");
        }

        if(i==9){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_Dialogs=true;
            ContentBookMarkedList.add(Cmp_Dialogs);
          }
          else{
            Show_Dialogs=false;
          }
          print("Bookmark_Show_Dialogs   --->  $Show_Dialogs");
        }

        if(i==10){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_Divider=true;
            ContentBookMarkedList.add(Cmp_Divider);
          }
          else{
            Show_Divider=false;
          }
          print("Bookmark_Show_Divider   --->  $Show_Divider");
        }

        if(i==11){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_Navigator=true;
            ContentBookMarkedList.add(Cmp_Navigator);
          }
          else{
            Show_Navigator=false;
          }
          print("Bookmark_Show_Navigator   --->  $Show_Navigator");
        }

        if(i==12){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_SnackBar=true;
            ContentBookMarkedList.add(Cmp_SnackBar);
          }
          else{
            Show_SnackBar=false;
          }
          print("Bookmark_Show_SnackBar   --->  $Show_SnackBar");
        }

        if(i==13){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_FlushBar=true;
            ContentBookMarkedList.add(Cmp_FlushBar);
          }
          else{
            Show_FlushBar=false;
          }
          print("Bookmark_Show_FlushBar   --->  $Show_FlushBar");
        }

        if(i==14){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_Card=true;
            ContentBookMarkedList.add(Cmp_Card);
          }
          else{
            Show_Card=false;
          }
          print("Bookmark_Show_Card   --->  $Show_FlushBar");
        }

        if(i==15){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_TextOverFlow=true;
            ContentBookMarkedList.add(Cmp_TextOverFlow);
          }
          else{
            Show_TextOverFlow=false;
          }
          print("Bookmark_Show_TextOverFlow   --->  $Show_TextOverFlow");
        }

        if(i==16){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_GestureDetector=true;
            ContentBookMarkedList.add(Cmp_GestureDetector);
          }
          else{
            Show_GestureDetector=false;
          }
          print("Bookmark_Show_GestureDetector   --->  $Show_GestureDetector");
        }

        if(i==17){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_ListView=true;
            ContentBookMarkedList.add(Cmp_ListView);
          }
          else{
            Show_ListView=false;
          }
          print("Bookmark_Show_ListView   --->  $Show_ListView");
        }

        if(i==18){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_TextField=true;
            ContentBookMarkedList.add(Cmp_TextField);
          }
          else{
            Show_TextField=false;
          }
          print("Bookmark_Show_TextField   --->  $Show_TextField");
        }

        if(i==19){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_FooterAppBar=true;
            ContentBookMarkedList.add(Cmp_FooterAppBar);
          }
          else{
            Show_FooterAppBar=false;
          }
          print("Bookmark_Show_FooterAppBar   --->  $Show_FooterAppBar");
        }

        if(i==20){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_ImageSlider=true;
            ContentBookMarkedList.add(Cmp_ImageSlider);
          }
          else{
            Show_ImageSlider=false;
          }
          print("Bookmark_Show_ImageSlider   --->  $Show_ImageSlider");
        }

        if(i==21){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_Notification=true;
            ContentBookMarkedList.add(Cmp_Notification);
          }
          else{
            Show_Notification=false;
          }
          print("Bookmark_Show_Notification   --->  $Show_Notification");
        }

        if(i==22){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_Switch=true;
            ContentBookMarkedList.add(Cmp_Switch);
          }
          else{
            Show_Switch=false;
          }
          print("Bookmark_Show_Switch   --->  $Show_Switch");
        }

        if(i==23){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_Audio=true;
            ContentBookMarkedList.add(Cmp_Audio);
          }
          else{
            Show_Audio=false;
          }
          print("Bookmark_Show_Audio   --->  $Show_Audio");
        }

        if(i==24){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_Video=true;
            ContentBookMarkedList.add(Cmp_Video);
          }
          else{
            Show_Video=false;
          }
          print("Bookmark_Show_Audio   --->  $Show_Video");
        }

        if(i==25){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_SimpleLoader=true;
            ContentBookMarkedList.add(Cmp_SimpleLoader);
          }
          else{
            Show_SimpleLoader=false;
          }
          print("Bookmark_Show_SimpleLoader   --->  $Show_SimpleLoader");
        }

        if(i==26){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_AdvancedLoader=true;
            ContentBookMarkedList.add(Cmp_AdvancedLoader);
          }
          else{
            Show_AdvancedLoader=false;
          }
          print("Bookmark_Show_AdvancedLoader   --->  $Show_AdvancedLoader");
        }

        if(i==27){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_Animation=true;
            ContentBookMarkedList.add(Cmp_Animation);
          }
          else{
            Show_Animation=false;
          }
          print("Bookmark_Show_Animation   --->  $Show_Animation");
        }

        if(i==28){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_Radio=true;
            ContentBookMarkedList.add(Cmp_Radio);
          }
          else{
            Show_Radio=false;
          }
          print("Bookmark_Show_Radio   --->  $Show_Radio");
        }

        if(i==29){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_CheckBox=true;
            ContentBookMarkedList.add(Cmp_CheckBox);
          }
          else{
            Show_CheckBox=false;
          }
          print("Bookmark_Show_CheckBox   --->  $Show_CheckBox");
        }

        if(i==30){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_Chip=true;
            ContentBookMarkedList.add(Cmp_Chip);
          }
          else{
            Show_Chip=false;
          }
          print("Bookmark_Show_Chip   --->  $Show_Chip");
        }

        if(i==31){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_TabBar=true;
            ContentBookMarkedList.add(Cmp_TabBar);
          }
          else{
            Show_TabBar=false;
          }
          print("Bookmark_Show_TabBar   --->  $Show_TabBar");
        }

        if(i==32){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_PageSelector=true;
            ContentBookMarkedList.add(Cmp_PageSlector);
          }
          else{
            Show_PageSelector=false;
          }
          print("Bookmark_Show_PageSelector   --->  $Show_PageSelector");
        }

        if(i==33){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_Flex=true;
            ContentBookMarkedList.add(Cmp_Flex);
          }
          else{
            Show_Flex=false;
          }
          print("Bookmark_Show_Flex   --->  $Show_Flex");
        }

        if(i==34){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_SelectComboBox=true;
            ContentBookMarkedList.add(Cmp_SelectComboBox);
          }
          else{
            Show_SelectComboBox=false;
          }
          print("Bookmark_Show_SelectComboBox   --->  $Show_SelectComboBox");
        }

        if(i==35){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_ExpandableList=true;
            ContentBookMarkedList.add(Cmp_ExpandableList);
          }
          else{
            Show_ExpandableList=false;
          }
          print("Bookmark_Show_ExpandableList  --->  $Show_ExpandableList");
        }

        if(i==36){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_Slider=true;
            ContentBookMarkedList.add(Cmp_Slider);
          }
          else{
            Show_Slider=false;
          }
          print("Bookmark_Show_Slider  --->  $Show_Slider");
        }

        if(i==37){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_Drawer=true;
            ContentBookMarkedList.add(Cmp_Drawer);
          }
          else{
            Show_Drawer=false;
          }
          print("Bookmark_Show_Drawer  --->  $Show_Drawer");
        }

        if(i==38){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_MainSplashScreen=true;
            ContentBookMarkedList.add(Cmp_MainSplashScreen);
          }
          else{
            Show_MainSplashScreen=false;
          }
          print("Bookmark_Show_MainSplashScreen  --->  $Show_MainSplashScreen");
        }

        if(i==39){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_Admob=true;
            ContentBookMarkedList.add(Cmp_Admob);
          }
          else{
            Show_Admob=false;
          }
          print("Bookmark_Show_Admob --->  $Show_Admob");
        }

        if(i==40){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_FlipCard=true;
            ContentBookMarkedList.add(Cmp_FlipCard);
          }
          else{
            Show_FlipCard=false;
          }
          print("Bookmark_Show_FlipCard --->  $Show_FlipCard");
        }

        if(i==41){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_FlipView=true;
            ContentBookMarkedList.add(Cmp_FlipView);
          }
          else{
            Show_FlipView=false;
          }
          print("Bookmark_Show_FlipView --->  $Show_FlipView");
        }

        if(i==42){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_Stepper=true;
            ContentBookMarkedList.add(Cmp_Stepper);
          }
          else{
            Show_Stepper=false;
          }
          print("Bookmark_Show_Stepper --->  $Show_Stepper");
        }

        if(i==43){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_BottomSheet=true;
            ContentBookMarkedList.add(Cmp_BottomSheet);
          }
          else{
            Show_BottomSheet=false;
          }
          print("Bookmark_Show_BottomSheet --->  $Show_BottomSheet");
        }

        if(i==44){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_SmoothPageIndicator=true;
            ContentBookMarkedList.add(Cmp_SmoothPageIndicator);
          }
          else{
            Show_SmoothPageIndicator=false;
          }
          print("Bookmark_Show_SmoothPageIndicator --->  $Show_SmoothPageIndicator");
        }

        if(i==45){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_Expandable=true;
            ContentBookMarkedList.add(Cmp_Expandable);
          }
          else{
            Show_Expandable=false;
          }
          print("Bookmark_Show_Expandable --->  $Show_Expandable");
        }

        if(i==46){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_Marquee=true;
            ContentBookMarkedList.add(Cmp_Marquee);
          }
          else{
            Show_Marquee=false;
          }
          print("Bookmark_Show_Marquee --->  $Show_Marquee");
        }

        if(i==47){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_ContainerWaves=true;
            ContentBookMarkedList.add(Cmp_ContainerWaves);
          }
          else{
            Show_ContainerWaves=false;
          }
          print("Bookmark_Show_ContainerWaves --->  $Show_ContainerWaves");
        }

        if(i==48){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_RouteTransition=true;
            ContentBookMarkedList.add(Cmp_RouteTransition);
          }
          else{
            Show_RouteTransition=false;
          }
          print("Bookmark_Show_RouteTransition --->  $Show_RouteTransition");
        }

        if(i==49){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_FlutterSyntaxe=true;
            ContentBookMarkedList.add(Cmp_FlutterSyntaxe);
          }
          else{
            Show_FlutterSyntaxe=false;
          }
          print("Bookmark_Show_FlutterSyntaxe --->  $Show_FlutterSyntaxe");
        }

        if(i==50){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_SlidingUpPanel=true;
            ContentBookMarkedList.add(Cmp_SlidingUpPanel);
          }
          else{
            Show_SlidingUpPanel=false;
          }
          print("Bookmark_Show_SlidingUpPanel --->  $Show_SlidingUpPanel");
        }

        if(i==51){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_PopupMenuButton=true;
            ContentBookMarkedList.add(Cmp_PopupMenuButton);
          }
          else{
            Show_PopupMenuButton=false;
          }
          print("Bookmark_Show_PopupMenuButton --->  $Show_PopupMenuButton");
        }

        if(i==52){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_HeroAnimation=true;
            ContentBookMarkedList.add(Cmp_HeroAnimation);
          }
          else{
            Show_HeroAnimation=false;
          }
          print("Bookmark_Show_HeroAnimation --->  $Show_HeroAnimation");
        }

        if(i==53){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_AvatarGlow=true;
            ContentBookMarkedList.add(Cmp_AvatarGlow);
          }
          else{
            Show_AvatarGlow=false;
          }
          print("Bookmark_Show_AvatarGlow --->  $Show_AvatarGlow");
        }

        if(i==54){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_DataTable=true;
            ContentBookMarkedList.add(Cmp_DataTable);
          }
          else{
            Show_DataTable=false;
          }
          print("Bookmark_Show_DataTable --->  $Show_DataTable");
        }

        if(i==55){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_WebView=true;
            ContentBookMarkedList.add(Cmp_WebView);
          }
          else{
            Show_WebView=false;
          }
          print("Bookmark_Show_WebView --->  $Show_WebView");
        }

        if(i==56){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_BackDrop=true;
            ContentBookMarkedList.add(Cmp_BackDrop);
          }
          else{
            Show_BackDrop=false;
          }
          print("Bookmark_Show_BackDrop --->  $Show_BackDrop");
        }

        if(i==57){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_AnimatedIcons=true;
            ContentBookMarkedList.add(Cmp_AnimatedIcons);
          }
          else{
            Show_AnimatedIcons=false;
          }
          print("Bookmark_Show_AnimatedIcons --->  $Show_AnimatedIcons");
        }

        if(i==58){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_TinderSwipe=true;
            ContentBookMarkedList.add(Cmp_TinderSwipe);
          }
          else{
            Show_TinderSwipe=false;
          }
          print("Bookmark_Show_TinderSwipe --->  $Show_TinderSwipe");
        }

        if(i==59){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_ImagePicker=true;
            ContentBookMarkedList.add(Cmp_ImagePicker);
          }
          else{
            Show_ImagePicker=false;
          }
          print("Bookmark_Show_ImagePicker --->  $Show_ImagePicker");
        }

        if(i==60){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_MultiImagePicker=true;
            ContentBookMarkedList.add(Cmp_MultiImagePicker);
          }
          else{
            Show_MultiImagePicker=false;
          }
          print("Bookmark_Show_MultiImagePicker --->  $Show_MultiImagePicker");
        }

        if(i==61){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_AdvancePdfViewer=true;
            ContentBookMarkedList.add(Cmp_AdvancePdfViewer);
          }
          else{
            Show_AdvancePdfViewer=false;
          }
          print("Bookmark_Show_AdvancePdfViewer --->  $Show_AdvancePdfViewer");
        }

        if(i==62){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_GoogleNavBar=true;
            ContentBookMarkedList.add(Cmp_GoogleNavBar);
          }
          else{
            Show_GoogleNavBar=false;
          }
          print("Bookmark_Show_GoogleNavBar --->  $Show_GoogleNavBar");
        }

        if(i==63){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_Clippy=true;
            ContentBookMarkedList.add(Cmp_Clippy);
          }
          else{
            Show_Clippy=false;
          }
          print("Bookmark_Show_Clippy --->  $Show_Clippy");
        }

        if(i==64){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_WaterDrop=true;
            ContentBookMarkedList.add(Cmp_WaterDrop);
          }
          else{
            Show_WaterDrop=false;
          }
          print("Bookmark_Show_WaterDrop --->  $Show_WaterDrop");
        }

        if(i==65){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_DayNightPicker=true;
            ContentBookMarkedList.add(Cmp_DayNightPicker);
          }
          else{
            Show_DayNightPicker=false;
          }
          print("Bookmark_Show_DayNightPicker --->  $Show_DayNightPicker");
        }

        if(i==66){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_GrafPix=true;
            ContentBookMarkedList.add(Cmp_Grafpix);
          }
          else{
            Show_GrafPix=false;
          }
          print("Bookmark_Show_GrafPix --->  $Show_GrafPix");
        }

        if(i==67){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_ListScrollWheel=true;
            ContentBookMarkedList.add(Cmp_ListScrollWheel);
          }
          else{
            Show_ListScrollWheel=false;
          }
          print("Bookmark_Show_ListScrollWheel --->  $Show_ListScrollWheel");
        }

        if(i==68){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_AnimatedDialog=true;
            ContentBookMarkedList.add(Cmp_AnimatedDialog);
          }
          else{
            Show_AnimatedDialog=false;
          }
          print("Bookmark_Show_AnimatedDialog --->  $Show_AnimatedDialog");
        }

        if(i==69){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_ToggleButtons=true;
            ContentBookMarkedList.add(Cmp_ToggleButtons);
          }
          else{
            Show_ToggleButtons=false;
          }
          print("Bookmark_Show_ToggleButtons --->  $Show_ToggleButtons");
        }

        if(i==70){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_SelectableText=true;
            ContentBookMarkedList.add(Cmp_SelectableText);
          }
          else{
            Show_SelectableText=false;
          }
          print("Bookmark_Show_SelectableText --->  $Show_SelectableText");
        }

        if(i==71){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_GridView=true;
            ContentBookMarkedList.add(Cmp_GridView);
          }
          else{
            Show_GridView=false;
          }
          print("Bookmark_Show_GridView --->  $Show_GridView");
        }

        if(i==72){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_CurvedNavBar=true;
            ContentBookMarkedList.add(Cmp_CurvedNavBar);
          }
          else{
            Show_CurvedNavBar=false;
          }
          print("Bookmark_Show_CurvedNavBar --->  $Show_CurvedNavBar");
        }

        if(i==73){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_FloatingActionButton=true;
            ContentBookMarkedList.add(Cmp_FloatingActionButton);
          }
          else{
            Show_FloatingActionButton=false;
          }
          print("Bookmark_Show_FloatingActionButton --->  $Show_FloatingActionButton");
        }

        if(i==74){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_Tooltip=true;
            ContentBookMarkedList.add(Cmp_Tooltip);
          }
          else{
            Show_Tooltip=false;
          }
          print("Bookmark_Show_Tooltip --->  $Show_Tooltip");
        }

        if(i==75){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_BackDetector=true;
            ContentBookMarkedList.add(Cmp_BackDetector);
          }
          else{
            Show_BackDetector=false;
          }
          print("Bookmark_Show_BackDetector --->  $Show_BackDetector");
        }

        if(i==76){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_Clipping=true;
            ContentBookMarkedList.add(Cmp_Clipping);
          }
          else{
            Show_Clipping=false;
          }
          print("Bookmark_Show_Clipping --->  $Show_Clipping");
        }

        if(i==77){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_NavigationRail=true;
            ContentBookMarkedList.add(Cmp_NavigationBarRail);
          }
          else{
            Show_NavigationRail=false;
          }
          print("Bookmark_Show_NavigationRail --->  $Show_NavigationRail");
        }

        if(i==78){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_FancyBottomNavBar=true;
            ContentBookMarkedList.add(Cmp_FancyBottomNavBar);
          }
          else{
            Show_FancyBottomNavBar=false;
          }
          print("Bookmark_Show_FancyBottomNavBar --->  $Show_FancyBottomNavBar");
        }

        if(i==79){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_ColorPicker=true;
            ContentBookMarkedList.add(Cmp_ColorPicker);
          }
          else{
            Show_ColorPicker=false;
          }
          print("Bookmark_Show_ColorPicker --->  $Show_ColorPicker");
        }

        if(i==80){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_LikeButton=true;
            ContentBookMarkedList.add(Cmp_LikeButton);
          }
          else{
            Show_LikeButton=false;
          }
          print("Bookmark_Show_LikeButton --->  $Show_LikeButton");
        }

        if(i==81){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_SliverAppBar=true;
            ContentBookMarkedList.add(Cmp_SliverAppBar);
          }
          else{
            Show_SliverAppBar=false;
          }
          print("Bookmark_Show_SliverAppBar --->  $Show_SliverAppBar");
        }

        if(i==82){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_AnimatedTextKit=true;
            ContentBookMarkedList.add(Cmp_AnimatedTextKit);
          }
          else{
            Show_AnimatedTextKit=false;
          }
          print("Bookmark_Show_AnimatedTextKit --->  $Show_AnimatedTextKit");
        }

        if(i==83){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_FoldableSideBar=true;
            ContentBookMarkedList.add(Cmp_FoldableSideBar);
          }
          else{
            Show_FoldableSideBar=false;
          }
          print("Bookmark_Show_FoldableSideBar --->  $Show_FoldableSideBar");
        }

        if(i==84){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_PercentIndicator=true;
            ContentBookMarkedList.add(Cmp_PercentIndicator);
          }
          else{
            Show_PercentIndicator=false;
          }
          print("Bookmark_Show_PercentIndicator --->  $Show_PercentIndicator");
        }

        if(i==85){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_Advanced=true;
            ContentBookMarkedList.add(Cmp_Advanced);
          }
          else{
            Show_Advanced=false;
          }
          print("Bookmark_Show_Advanced --->  $Show_Advanced");
        }

        if(i==86){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_Production=true;
            ContentBookMarkedList.add(Cmp_Production);
          }
          else{
            Show_Production=false;
          }
          print("Bookmark_Show_Production --->  $Show_Production");
        }

        if(i==87){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_Connectivity=true;
            ContentBookMarkedList.add(Cmp_Connectivity);
          }
          else{
            Show_Connectivity=false;
          }
          print("Bookmark_Show_Connectivity --->  $Show_Connectivity");
        }

        if(i==88){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_SpinCircleBottomBar=true;
            ContentBookMarkedList.add(Cmp_SpinCircleBottomBar);
          }
          else{
            Show_SpinCircleBottomBar=false;
          }
          print("Bookmark_Show_SpinCircleBottomBar --->  $Show_SpinCircleBottomBar");
        }

        if(i==89){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_StaggeredGridView=true;
            ContentBookMarkedList.add(Cmp_StaggeredGridView);
          }
          else{
            Show_StaggeredGridView=false;
          }
          print("Bookmark_Show_StaggeredGridView --->  $Show_StaggeredGridView");
        }

        if(i==90){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_InAppUpdate=true;
            ContentBookMarkedList.add(Cmp_InAppUpdate);
          }
          else{
            Show_InAppUpdate=false;
          }
          print("Bookmark_Show_InAppUpdate --->  $Show_InAppUpdate");
        }

        if(i==91){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_Timer=true;
            ContentBookMarkedList.add(Cmp_Timer);
          }
          else{
            Show_Timer=false;
          }
          print("Bookmark_Show_Timer --->  $Show_Timer");
        }

        if(i==92){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_Share=true;
            ContentBookMarkedList.add(Cmp_Share);
          }
          else{
            Show_Share=false;
          }
          print("Bookmark_Show_Share --->  $Show_Share");
        }

        if(i==93){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_ExitApp=true;
            ContentBookMarkedList.add(Cmp_ExitApp);
          }
          else{
            Show_ExitApp=false;
          }
          print("Bookmark_Show_ExitApp --->  $Show_ExitApp");
        }

        if(i==94){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_TensorFlow=true;
            ContentBookMarkedList.add(Cmp_TensorFlow);
          }
          else{
            Show_TensorFlow=false;
          }
          print("Bookmark_Show_TensorFlow --->  $Show_TensorFlow");
        }

        if(i==95){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_PimpByButton=true;
            ContentBookMarkedList.add(Cmp_Pimp_My_Button);
          }
          else{
            Show_PimpByButton=false;
          }
          print("Bookmark_Show_PimpByButton --->  $Show_PimpByButton");
        }

        if(i==96){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_AnimatedList=true;
            ContentBookMarkedList.add(Cmp_AnimatedList);
          }
          else{
            Show_AnimatedList=false;
          }
          print("Bookmark_Show_AnimatedList --->  $Show_AnimatedList");
        }

        if(i==97){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_FlutterAppBadger=true;
            ContentBookMarkedList.add(Cmp_FlutterAppBadger);
          }
          else{
            Show_FlutterAppBadger=false;
          }
          print("Bookmark_Show_FlutterAppBadger --->  $Show_FlutterAppBadger");
        }

        if(i==98){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_InAppPurchase=true;
            ContentBookMarkedList.add(Cmp_InAppPurchase);
          }
          else{
            Show_InAppPurchase=false;
          }
          print("Bookmark_Show_InAppPurchase --->  $Show_InAppPurchase");
        }


        if(i==99){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_PageViewAnimation=true;
            ContentBookMarkedList.add(Cmp_PageViewAnimation);
          }
          else{
            Show_PageViewAnimation=false;
          }
          print("Bookmark_Show_PageViewAnimation  --->  $Show_PageViewAnimation");
        }

        if(i==100){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_AnimatedBackground=true;
            ContentBookMarkedList.add(Cmp_AnimatedBackground);
          }
          else{
            Show_AnimatedBackground=false;
          }
          print("Bookmark_Show_AnimatedBackground  --->  $Show_AnimatedBackground");
        }

        if(i==101){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_Geolocator=true;
            ContentBookMarkedList.add(Cmp_Geolocator);
          }
          else{
            Show_Geolocator=false;
          }
          print("Bookmark_Show_Geolocator  --->  $Show_Geolocator");
        }

        if(i==102){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_GoogleMaps=true;
            ContentBookMarkedList.add(Cmp_GoogleMaps);
          }
          else{
            Show_GoogleMaps=false;
          }
          print("Bookmark_Show_GoogleMap  --->  $Show_GoogleMaps");
        }

        if(i==103){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_KFDrawer=true;
            ContentBookMarkedList.add(Cmp_KFDrawer);
          }
          else{
            Show_KFDrawer=false;
          }
          print("Bookmark_Show_KFDrawer  --->  $Show_KFDrawer");
        }

        if(i==104){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_GoogleTranslator=true;
            ContentBookMarkedList.add(Cmp_GoogleTranslator);
          }
          else{
            Show_GoogleTranslator=false;
          }
          print("Bookmark_Show_GoogleTranslator  --->  $Show_GoogleTranslator");
        }

         if(i==105){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_ApkAdmin=true;
            ContentBookMarkedList.add(Cmp_ApkAdmin);
          }
          else{
            Show_ApkAdmin=false;
          }
          print("Bookmark_Show_ApkAdmin  --->  $Show_ApkAdmin");
        }



      }
      GettingBookmarkFrontEndContent=false;
    }
  }


  Future<void> getContentBookmarkBackend() async {
    GettingBookmarkBackEndContent=true;
    ContentBookMarkedListBackEnd=new List();
    var dbBk = await db;
    List<Map> maps = await dbBk.rawQuery("SELECT * FROM $TABLE2");
    List<App_BookmarksContent> AppContBookmarkArr = [];
    if (maps.length > 0) {
      for (int i = 0; i < maps.length; i++) {

        if(i==0){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_SQFLite=true;
            ContentBookMarkedListBackEnd.add(Cmp_SQFLite);
          }
          else{
            Show_SQFLite=false;
          }
          print("Bookmark_Show_SQFLite   --->  $Show_SQFLite");
        }

        if(i==1){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_HTTP_PHP=true;
            ContentBookMarkedListBackEnd.add(Cmp_HTTP_PHP);
          }
          else{
            Show_HTTP_PHP=false;
          }
          print("Bookmark_Show_HTTP_PHP   --->  $Show_HTTP_PHP");
        }

        if(i==2){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_FireBase=true;
            ContentBookMarkedListBackEnd.add(Cmp_FireBase);
          }
          else{
            Show_FireBase=false;
          }
          print("Bookmark_Show_FireBase   --->  $Show_FireBase");
        }

        if(i==3){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_FireStore=true;
            ContentBookMarkedListBackEnd.add(Cmp_FireStore);
          }
          else{
            Show_FireStore=false;
          }
          print("Bookmark_Show_FireStore   --->  $Show_FireStore");
        }

        if(i==4){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_FireBaseAdmob=true;
            ContentBookMarkedListBackEnd.add(Cmp_FireBaseAdmob);
          }
          else{
            Show_FireBaseAdmob=false;
          }
          print("Bookmark_Show_FireBaseAdmob   --->  $Show_FireBaseAdmob");
        }

        if(i==5){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_FireBasePushNotification=true;
            ContentBookMarkedListBackEnd.add(Cmp_FireBasePushNotification);
          }
          else{
            Show_FireBasePushNotification=false;
          }
          print("Bookmark_Show_FireBasePushNotification   --->  $Show_FireBasePushNotification");
        }

        if(i==6){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_Phone_Verification=true;
            ContentBookMarkedListBackEnd.add(Cmp_Phone_Verification);
          }
          else{
            Show_Phone_Verification=false;
          }
          print("Bookmark_Show_Phone_Verification   --->  $Show_Phone_Verification");
        }

        if(i==7){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_HTTP_PHP_Auth=true;
            ContentBookMarkedListBackEnd.add(Cmp_HTTP_PHP_Auth);
          }
          else{
            Show_HTTP_PHP_Auth=false;
          }
          print("Bookmark_Show_HTTP_PHP_Auth   --->  $Show_HTTP_PHP_Auth");
        }

        if(i==8){
          if(App_BookmarksContent.fromMap(maps[i]).IsBookmarked=="Bookmarked"){
            Show_HTTP_PHP_CRUDImg=true;
            ContentBookMarkedListBackEnd.add(Cmp_HTTP_PHP_CRUDImg);
          }
          else{
            Show_HTTP_PHP_CRUDImg=false;
          }
          print("Bookmark_Show_HTTP_PHP_CRUDImg   --->  $Show_HTTP_PHP_CRUDImg");
        }


      }
      GettingBookmarkBackEndContent=false;
    }
  }




  Future<int> updateBookmarkContent(App_BookmarksContent A) async {
    var dbApp = await db;
    return await dbApp.update(TABLE, A.toMap(), where: '$AppBkID = ?', whereArgs:[A.AppBkID]);
  }

  Future<int> updateBookmarkContentBackend(App_BookmarksContent A) async {
    var dbApp = await db;
    return await dbApp.update(TABLE2, A.toMap(), where: '$AppBkID = ?', whereArgs:[A.AppBkID]);
  }

  Future close() async {
    var dbCourse = await db;
    dbCourse.close();
  }

}










