import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import '-1_GiftReminder.dart';
import '0_SourceCode.dart';
import '1000_Rating.dart';
import '1_TestMeRandomQuizzes.dart';
import '2_CodesByUsers.dart';
import '3_StartSelect.dart';
import 'AppSoundPlay.dart';
import '_Comp_Courses/Cmp_Cust_ExpTile.dart';
import '_GlobalVariables_FrontEnd.dart';
import 'SettingPage.dart';
import 'SQLite/Show_Bookmarks_Contents.dart';
import 'AuthCheck.dart';
import '-2_UpdateReminder.dart';
import 'dart:collection';
import 'AppLang.dart';


var GettingBookmarkFrontEndContent=true;
List ContentBookMarkedList=new List();
HashMap AllContentsHashMap=HashMap<String,Object>();
List AllContentsList      =new List();


var ShowBookmarks_FrontEnd ="DontShowBookmark";
var Show_Introduction      ;
var Show_Keywords          ;
var Show_Text              ;
var Show_HeaderAppBar      ;
var Show_MainPageBgColor   ;
var Show_Image             ;
var Show_Buttons           ;
var Show_Toast             ;
var Show_Layouts           ;
var Show_Dialogs           ;
var Show_Divider           ;
var Show_Navigator         ;
var Show_SnackBar          ;
var Show_FlushBar          ;
var Show_Card              ;
var Show_TextOverFlow      ;
var Show_GestureDetector   ;
var Show_ListView          ;
var Show_TextField         ;
var Show_FooterAppBar      ;
var Show_ImageSlider       ;
var Show_Notification      ;
var Show_Switch            ;
var Show_Audio             ;
var Show_Video             ;
var Show_SimpleLoader      ;
var Show_AdvancedLoader    ;
var Show_Animation         ;
var Show_Radio             ;
var Show_CheckBox          ;
var Show_Chip              ;
var Show_TabBar            ;
var Show_PageSelector      ;
var Show_Flex              ;
var Show_SelectComboBox    ;
var Show_ExpandableList    ;
var Show_Slider            ;
var Show_Drawer            ;
var Show_MainSplashScreen  ;
var Show_Admob             ;
var Show_FlipCard          ;
var Show_FlipView          ;
var Show_Stepper           ;
var Show_BottomSheet       ;
var Show_SmoothPageIndicator   ;
var Show_Expandable            ;
var Show_Marquee               ;
var Show_ContainerWaves        ;
var Show_RouteTransition       ;
var Show_FlutterSyntaxe        ;
var Show_SlidingUpPanel        ;
var Show_PopupMenuButton       ;
var Show_HeroAnimation         ;
var Show_AvatarGlow            ;
var Show_DataTable             ;
var Show_WebView               ;
var Show_BackDrop              ;
var Show_AnimatedIcons         ;
var Show_TinderSwipe           ;
var Show_ImagePicker           ;
var Show_MultiImagePicker      ;
var Show_AdvancePdfViewer      ;
var Show_GoogleNavBar          ;
var Show_Clippy                ;
var Show_WaterDrop             ;
var Show_DayNightPicker        ;
var Show_GrafPix               ;
var Show_ListScrollWheel       ;
var Show_AnimatedDialog        ;
var Show_ToggleButtons         ;
var Show_SelectableText        ;
var Show_GridView              ;
var Show_CurvedNavBar          ;
var Show_FloatingActionButton  ;
var Show_Tooltip               ;
var Show_BackDetector          ;
var Show_Clipping              ;
var Show_NavigationRail        ;
var Show_FancyBottomNavBar     ;
var Show_ColorPicker           ;
var Show_LikeButton            ;
var Show_SliverAppBar          ;
var Show_AnimatedTextKit       ;
var Show_FoldableSideBar       ;
var Show_PercentIndicator      ;
var Show_Connectivity          ;
var Show_SpinCircleBottomBar   ;
var Show_StaggeredGridView     ;
var Show_InAppUpdate           ;
var Show_Timer                 ;
var Show_Share                 ;
var Show_ExitApp               ;
var Show_TensorFlow            ;
var Show_PimpByButton          ;
var Show_AnimatedList          ;
var Show_FlutterAppBadger      ;
var Show_InAppPurchase         ;
var Show_Advanced              ;
var Show_Production            ;
var Show_PageViewAnimation     ;
var Show_AnimatedBackground    ;
var Show_Geolocator            ;
var Show_GoogleMaps            ;
var Show_KFDrawer              ;
var Show_GoogleTranslator      ;
var Show_ApkAdmin              ;


//-------------------------------------------------------
//-------------------------------------------------------

var Cmp_Intro ;
var Cmp_Keywords;
var Cmp_Text ;
var Cmp_HeaderAppBar ;
var Cmp_MainPageBgColor ;
var Cmp_Image;
var Cmp_Buttons ;
var Cmp_Toast;
var Cmp_Layouts;
var Cmp_Dialogs;
var Cmp_Divider;
var Cmp_Navigator;
var Cmp_SnackBar ;
var Cmp_FlushBar ;
var Cmp_Card ;
var Cmp_TextOverFlow ;
var Cmp_GestureDetector;
var Cmp_ListView ;
var Cmp_TextField ;
var Cmp_FooterAppBar;
var Cmp_ImageSlider ;
var Cmp_Notification ;
var Cmp_Switch;
var Cmp_Audio ;
var Cmp_Video ;
var Cmp_SimpleLoader ;
var Cmp_AdvancedLoader ;
var Cmp_Animation ;
var Cmp_Radio ;
var Cmp_CheckBox;
var Cmp_Chip;
var Cmp_TabBar;
var Cmp_PageSlector ;
var Cmp_Flex ;
var Cmp_SelectComboBox ;
var Cmp_ExpandableList ;
var Cmp_Slider ;
var Cmp_Drawer ;
var Cmp_MainSplashScreen ;
var Cmp_Admob ;
var Cmp_FlipCard ;
var Cmp_FlipView ;
var Cmp_Stepper ;
var Cmp_BottomSheet ;
var Cmp_SmoothPageIndicator;
var Cmp_Expandable ;
var Cmp_Marquee ;
var Cmp_ContainerWaves;
var Cmp_RouteTransition ;
var Cmp_FlutterSyntaxe ;
var Cmp_SlidingUpPanel ;
var Cmp_PopupMenuButton ;
var Cmp_HeroAnimation ;
var Cmp_AvatarGlow ;
var Cmp_DataTable ;
var Cmp_WebView ;
var Cmp_BackDrop ;
var Cmp_AnimatedIcons ;
var Cmp_TinderSwipe ;
var Cmp_ImagePicker ;
var Cmp_MultiImagePicker ;
var Cmp_AdvancePdfViewer;
var Cmp_GoogleNavBar ;
var Cmp_Clippy ;
var Cmp_WaterDrop ;
var Cmp_DayNightPicker ;
var Cmp_Grafpix ;
var Cmp_ListScrollWheel ;
var Cmp_AnimatedDialog ;
var Cmp_ToggleButtons ;
var Cmp_SelectableText ;
var Cmp_GridView ;
var Cmp_CurvedNavBar ;
var Cmp_FloatingActionButton ;
var Cmp_Tooltip ;
var Cmp_BackDetector ;
var Cmp_Clipping;
var Cmp_NavigationBarRail ;
var Cmp_FancyBottomNavBar;
var Cmp_ColorPicker;
var Cmp_LikeButton;
var Cmp_SliverAppBar;
var Cmp_AnimatedTextKit ;
var Cmp_FoldableSideBar;
var Cmp_PercentIndicator;
var Cmp_Connectivity;
var Cmp_SpinCircleBottomBar;
var Cmp_StaggeredGridView;
var Cmp_InAppUpdate;
var Cmp_Timer;
var Cmp_Share;
var Cmp_ExitApp;
var Cmp_TensorFlow;
var Cmp_Pimp_My_Button;
var Cmp_AnimatedList;
var Cmp_FlutterAppBadger;
var Cmp_InAppPurchase;
var Cmp_Advanced;
var Cmp_Production;
var Cmp_PageViewAnimation;
var Cmp_AnimatedBackground;
var Cmp_Geolocator;
var Cmp_GoogleMaps;
var Cmp_KFDrawer;
var Cmp_GoogleTranslator;
var Cmp_ApkAdmin;

void FetchContentFrontEndHashMap(String S){
  AllContentsList=new List();
  if(S==""){
    AddAllFrontEndList();
  }
  else{
    AllContentsHashMap.forEach((key, value) {
    if(key.toString().toLowerCase().contains(S.toLowerCase())){
      AllContentsList.add(value);
    }
  });
  }
  
}



void AddAllFrontEndList(){
  AllContentsList.add(Cmp_Intro);
  AllContentsHashMap.putIfAbsent("Introduction"       , () => Cmp_Intro);

  AllContentsList.add(Cmp_Keywords);
  AllContentsHashMap.putIfAbsent("Keywords"           , () => Cmp_Keywords);

  AllContentsList.add(Cmp_Text);
  AllContentsHashMap.putIfAbsent("Text"               , () => Cmp_Text);

  AllContentsList.add(Cmp_HeaderAppBar);
  AllContentsHashMap.putIfAbsent("HeaderAppBar"               , () => Cmp_HeaderAppBar);

  AllContentsList.add(Cmp_MainPageBgColor);
  AllContentsHashMap.putIfAbsent("MainPageBgColor"               , () => Cmp_MainPageBgColor);

  AllContentsList.add(Cmp_Image);
  AllContentsHashMap.putIfAbsent("Image"               , () => Cmp_Image);

  AllContentsList.add(Cmp_Buttons);
  AllContentsHashMap.putIfAbsent("Button"               , () => Cmp_Buttons);

  AllContentsList.add(Cmp_Toast);
  AllContentsHashMap.putIfAbsent("Toast"               , () => Cmp_Toast);

  AllContentsList.add(Cmp_Layouts);
  AllContentsHashMap.putIfAbsent("Layouts"               , () => Cmp_Layouts);

  AllContentsList.add(Cmp_Dialogs);
  AllContentsHashMap.putIfAbsent("Dialogs"               , () => Cmp_Dialogs);

  AllContentsList.add(Cmp_Divider);
  AllContentsHashMap.putIfAbsent("Divider"               , () => Cmp_Divider);

  AllContentsList.add(Cmp_Navigator);
  AllContentsHashMap.putIfAbsent("Navigator"               , () => Cmp_Navigator);

  AllContentsList.add(Cmp_SnackBar);
  AllContentsHashMap.putIfAbsent("SnackBar"               , () => Cmp_SnackBar);

  AllContentsList.add(Cmp_FlushBar);
  AllContentsHashMap.putIfAbsent("FlushBar"               , () => Cmp_FlushBar);

  AllContentsList.add(Cmp_Card);
  AllContentsHashMap.putIfAbsent("Card"               , () => Cmp_Card);

  AllContentsList.add(Cmp_TextOverFlow);
  AllContentsHashMap.putIfAbsent("TextOverFlow"               , () => Cmp_TextOverFlow);

  AllContentsList.add(Cmp_GestureDetector);
  AllContentsHashMap.putIfAbsent("GestureDetector"               , () => Cmp_GestureDetector);

  AllContentsList.add(Cmp_ListView);
  AllContentsHashMap.putIfAbsent("ListView"               , () => Cmp_ListView);

  AllContentsList.add(Cmp_TextField);
  AllContentsHashMap.putIfAbsent("TextField"               , () => Cmp_TextField);

  AllContentsList.add(Cmp_FooterAppBar);
  AllContentsHashMap.putIfAbsent("FooterAppBar"               , () => Cmp_FooterAppBar);

  AllContentsList.add(Cmp_ImageSlider);
  AllContentsHashMap.putIfAbsent("ImageSlider"               , () => Cmp_ImageSlider);

  AllContentsList.add(Cmp_Notification);
  AllContentsHashMap.putIfAbsent("Notification"               , () => Cmp_Notification);

  AllContentsList.add(Cmp_Switch);
  AllContentsHashMap.putIfAbsent("Switch"               , () => Cmp_Switch);

  AllContentsList.add(Cmp_Audio);
  AllContentsHashMap.putIfAbsent("Audio"               , () => Cmp_Audio);

  AllContentsList.add(Cmp_Video);
  AllContentsHashMap.putIfAbsent("Video"               , () => Cmp_Video);

  AllContentsList.add(Cmp_SimpleLoader);
  AllContentsHashMap.putIfAbsent("SimpleLoader"               , () => Cmp_SimpleLoader);

  AllContentsList.add(Cmp_AdvancedLoader);
  AllContentsHashMap.putIfAbsent("AdvancedLoader"               , () => Cmp_AdvancedLoader);

  AllContentsList.add(Cmp_Animation);
  AllContentsHashMap.putIfAbsent("Animation"               , () => Cmp_Animation);

  AllContentsList.add(Cmp_Radio);
  AllContentsHashMap.putIfAbsent("Radio"               , () => Cmp_Radio);

  AllContentsList.add(Cmp_CheckBox);
  AllContentsHashMap.putIfAbsent("CheckBox"               , () => Cmp_CheckBox);

  AllContentsList.add(Cmp_Chip);
  AllContentsHashMap.putIfAbsent("Chip"               , () => Cmp_Chip);

  AllContentsList.add(Cmp_TabBar);
  AllContentsHashMap.putIfAbsent("TabBar"               , () => Cmp_TabBar);

  AllContentsList.add(Cmp_PageSlector);
  AllContentsHashMap.putIfAbsent("PageSlector"               , () => Cmp_PageSlector);

  AllContentsList.add(Cmp_Flex);
  AllContentsHashMap.putIfAbsent("Flex"               , () => Cmp_Flex);

  AllContentsList.add(Cmp_SelectComboBox);
  AllContentsHashMap.putIfAbsent("SelectComboBox"           , () => Cmp_SelectComboBox);

  AllContentsList.add(Cmp_ExpandableList);
  AllContentsHashMap.putIfAbsent("ExpandableList"           , () => Cmp_ExpandableList);

  AllContentsList.add(Cmp_Slider);
  AllContentsHashMap.putIfAbsent("Slider"           , () => Cmp_Slider);

  AllContentsList.add(Cmp_Radio);
  AllContentsHashMap.putIfAbsent("Radio"           , () => Cmp_Radio);

  AllContentsList.add(Cmp_Drawer);
  AllContentsHashMap.putIfAbsent("Drawer"           , () => Cmp_Drawer);

  AllContentsList.add(Cmp_MainSplashScreen);
  AllContentsHashMap.putIfAbsent("MainSplashScreen"           , () => Cmp_MainSplashScreen);

  AllContentsList.add(Cmp_Admob);
  AllContentsHashMap.putIfAbsent("Admob"           , () => Cmp_Admob);

  AllContentsList.add(Cmp_FlipCard);
  AllContentsHashMap.putIfAbsent("FlipCard"           , () => Cmp_FlipCard);

  AllContentsList.add(Cmp_FlipView);
  AllContentsHashMap.putIfAbsent("FlipView"           , () => Cmp_FlipView);

  AllContentsList.add(Cmp_Stepper);
  AllContentsHashMap.putIfAbsent("Stepper"           , () => Cmp_Stepper);

  AllContentsList.add(Cmp_BottomSheet);
  AllContentsHashMap.putIfAbsent("BottomSheet"           , () => Cmp_BottomSheet);

  AllContentsList.add(Cmp_SmoothPageIndicator);
  AllContentsHashMap.putIfAbsent("SmoothPageIndicator"           , () => Cmp_SmoothPageIndicator);

  AllContentsList.add(Cmp_Expandable);
  AllContentsHashMap.putIfAbsent("Expandable"           , () => Cmp_Expandable);

  AllContentsList.add(Cmp_Marquee);
  AllContentsHashMap.putIfAbsent("Marquee"           , () => Cmp_Marquee);

  AllContentsList.add(Cmp_ContainerWaves);
  AllContentsHashMap.putIfAbsent("ContainerWaves"           , () => Cmp_ContainerWaves);

  AllContentsList.add(Cmp_RouteTransition);
  AllContentsHashMap.putIfAbsent("RouteTransition"           , () => Cmp_RouteTransition);

  AllContentsList.add(Cmp_FlutterSyntaxe);
  AllContentsHashMap.putIfAbsent("FlutterSyntaxe"           , () => Cmp_FlutterSyntaxe);

  AllContentsList.add(Cmp_SlidingUpPanel);
  AllContentsHashMap.putIfAbsent("Cmp_SlidingUpPanel"           , () => Cmp_SlidingUpPanel);

  AllContentsList.add(Cmp_PopupMenuButton);
  AllContentsHashMap.putIfAbsent("PopupMenuButton"           , () => Cmp_PopupMenuButton);

  AllContentsList.add(Cmp_HeroAnimation);
  AllContentsHashMap.putIfAbsent("HeroAnimation"           , () => Cmp_HeroAnimation);

  AllContentsList.add(Cmp_AvatarGlow);
  AllContentsHashMap.putIfAbsent("AvatarGlow"           , () => Cmp_AvatarGlow);

  AllContentsList.add(Cmp_DataTable);
  AllContentsHashMap.putIfAbsent("DataTable"           , () => Cmp_DataTable);

  AllContentsList.add(Cmp_WebView);
  AllContentsHashMap.putIfAbsent("Cmp_WebView"           , () => Cmp_WebView);

  AllContentsList.add(Cmp_BackDrop);
  AllContentsHashMap.putIfAbsent("BackDrop"           , () => Cmp_BackDrop);

  AllContentsList.add(Cmp_AnimatedIcons);
  AllContentsHashMap.putIfAbsent("AnimatedIcons"       , () => Cmp_AnimatedIcons);

  AllContentsList.add(Cmp_TinderSwipe);
  AllContentsHashMap.putIfAbsent("TinderSwipe"       , () => Cmp_TinderSwipe);

  AllContentsList.add(Cmp_ImagePicker);
  AllContentsHashMap.putIfAbsent("ImagePicker"       , () => Cmp_ImagePicker);

  AllContentsList.add(Cmp_MultiImagePicker);
  AllContentsHashMap.putIfAbsent("MultiImagePicker"  , () => Cmp_MultiImagePicker);

  AllContentsList.add(Cmp_AdvancePdfViewer);
  AllContentsHashMap.putIfAbsent("AdvancePdfViewer"  , () => Cmp_AdvancePdfViewer);

  AllContentsList.add(Cmp_GoogleNavBar);
  AllContentsHashMap.putIfAbsent("GoogleNavBar"      , () => Cmp_GoogleNavBar);

  AllContentsList.add(Cmp_Clippy);
  AllContentsHashMap.putIfAbsent("Clippy"      , () => Cmp_Clippy);

  AllContentsList.add(Cmp_WaterDrop);
  AllContentsHashMap.putIfAbsent("WaterDrop"      , () => Cmp_WaterDrop);

  AllContentsList.add(Cmp_DayNightPicker);
  AllContentsHashMap.putIfAbsent("DayNightPicker"      , () => Cmp_DayNightPicker);

  AllContentsList.add(Cmp_Grafpix);
  AllContentsHashMap.putIfAbsent("Grafpix"      , () => Cmp_Grafpix);

  AllContentsList.add(Cmp_ListScrollWheel);
  AllContentsHashMap.putIfAbsent("ListScrollWheel"   , () => Cmp_ListScrollWheel);

  AllContentsList.add(Cmp_AnimatedDialog);
  AllContentsHashMap.putIfAbsent("AnimatedDialog"   , () => Cmp_AnimatedDialog);

  AllContentsList.add(Cmp_ToggleButtons);
  AllContentsHashMap.putIfAbsent("ToggleButtons"   , () => Cmp_ToggleButtons);

  AllContentsList.add(Cmp_SelectableText);
  AllContentsHashMap.putIfAbsent("SelectableText"   , () => Cmp_SelectableText);

  AllContentsList.add(Cmp_GridView);
  AllContentsHashMap.putIfAbsent("GridView"   , () => Cmp_GridView);

  AllContentsList.add(Cmp_CurvedNavBar);
  AllContentsHashMap.putIfAbsent("CurvedNavBar"   , () => Cmp_CurvedNavBar);

  AllContentsList.add(Cmp_FloatingActionButton);
  AllContentsHashMap.putIfAbsent("FloatingActionButton"   , () => Cmp_FloatingActionButton);

  AllContentsList.add(Cmp_Tooltip);
  AllContentsHashMap.putIfAbsent("Cmp_Tooltip"   , () => Cmp_Tooltip);

  AllContentsList.add(Cmp_BackDetector);
  AllContentsHashMap.putIfAbsent("BackDetector"   , () => Cmp_BackDetector);

  AllContentsList.add(Cmp_Clipping);
  AllContentsHashMap.putIfAbsent("Clipping"   , () => Cmp_Clipping);

  AllContentsList.add(Cmp_NavigationBarRail);
  AllContentsHashMap.putIfAbsent("Cmp_NavigationBarRail"   , () => Cmp_NavigationBarRail);

  AllContentsList.add(Cmp_FancyBottomNavBar);
  AllContentsHashMap.putIfAbsent("Cmp_FancyBottomNavBar"   , () => Cmp_FancyBottomNavBar);

  AllContentsList.add(Cmp_ColorPicker);
  AllContentsHashMap.putIfAbsent("Cmp_ColorPicker"   , () => Cmp_ColorPicker);

  AllContentsList.add(Cmp_LikeButton);
  AllContentsHashMap.putIfAbsent("Cmp_LikeButton"   , () => Cmp_LikeButton);

  AllContentsList.add(Cmp_SliverAppBar);
  AllContentsHashMap.putIfAbsent("Cmp_SliverAppBar"   , () => Cmp_SliverAppBar);

  AllContentsList.add(Cmp_AnimatedTextKit);
  AllContentsHashMap.putIfAbsent("AnimatedTextKit"   , () => Cmp_AnimatedTextKit);

  AllContentsList.add(Cmp_FoldableSideBar);
  AllContentsHashMap.putIfAbsent("FoldableSideBar"   , () => Cmp_FoldableSideBar);

  AllContentsList.add(Cmp_PercentIndicator);
  AllContentsHashMap.putIfAbsent("PercentIndicator"   , () => Cmp_PercentIndicator);

  AllContentsList.add(Cmp_Connectivity);
  AllContentsHashMap.putIfAbsent("Connectivity"   , () => Cmp_Connectivity);

  AllContentsList.add(Cmp_SpinCircleBottomBar);
  AllContentsHashMap.putIfAbsent("SpinCircleBottomBar"   , () => Cmp_SpinCircleBottomBar);

  AllContentsList.add(Cmp_StaggeredGridView);
  AllContentsHashMap.putIfAbsent("StaggeredGridView"   , () => Cmp_StaggeredGridView);

  AllContentsList.add(Cmp_InAppUpdate);
  AllContentsHashMap.putIfAbsent("InAppUpdate"   , () => Cmp_InAppUpdate);

  AllContentsList.add(Cmp_Timer);
  AllContentsHashMap.putIfAbsent("Timer"   , () => Cmp_Timer);

  AllContentsList.add(Cmp_Share);
  AllContentsHashMap.putIfAbsent("Share"   , () => Cmp_Share);

  AllContentsList.add(Cmp_ExitApp);
  AllContentsHashMap.putIfAbsent("ExitApp"   , () => Cmp_ExitApp);

  AllContentsList.add(Cmp_TensorFlow);
  AllContentsHashMap.putIfAbsent("TensorFlow"   , () => Cmp_TensorFlow);

  AllContentsList.add(Cmp_Pimp_My_Button);
  AllContentsHashMap.putIfAbsent("Pimp_My_Button"   , () => Cmp_Pimp_My_Button);

  AllContentsList.add(Cmp_AnimatedList);
  AllContentsHashMap.putIfAbsent("AnimatedList"   , () => Cmp_AnimatedList);

  AllContentsList.add(Cmp_FlutterAppBadger);
  AllContentsHashMap.putIfAbsent("FlutterAppBadger"   , () => Cmp_FlutterAppBadger);

  AllContentsList.add(Cmp_InAppPurchase);
  AllContentsHashMap.putIfAbsent("InAppPurchase"   , () => Cmp_InAppPurchase);

  AllContentsList.add(Cmp_PageViewAnimation);
  AllContentsHashMap.putIfAbsent("PageViewAnimation"   , () => Cmp_PageViewAnimation);

  AllContentsList.add(Cmp_AnimatedBackground);
  AllContentsHashMap.putIfAbsent("AnimatedBackground"   , () => Cmp_AnimatedBackground);

  AllContentsList.add(Cmp_Geolocator);
  AllContentsHashMap.putIfAbsent("Geolocator"   , () => Cmp_Geolocator);

  //AllContentsList.add(Cmp_GoogleMaps);
  //AllContentsHashMap.putIfAbsent("GoogleMaps"               , () => Cmp_GoogleMaps);

  AllContentsList.add(Cmp_KFDrawer);
  AllContentsHashMap.putIfAbsent("KFDrawer"               , () => Cmp_KFDrawer);

  AllContentsList.add(Cmp_GoogleTranslator);
  AllContentsHashMap.putIfAbsent("GoogleTranslator"        , () => Cmp_GoogleTranslator);

  AllContentsList.add(Cmp_ApkAdmin);
  AllContentsHashMap.putIfAbsent("ApkAdmin"               , () => Cmp_ApkAdmin);

  AllContentsList.add(Cmp_Advanced);
  AllContentsHashMap.putIfAbsent("Advanced"               , () => Cmp_Advanced);

  AllContentsList.add(Cmp_Production);
  AllContentsHashMap.putIfAbsent("Production"               , () => Cmp_Production);
}



//-------------------------------------------------------
//-------------------------------------------------------

class FrontEndPage extends StatefulWidget {
  AuthCheckState parent;
  FrontEndPage(this.parent);

  @override
  FrontEndPageState createState() => new FrontEndPageState();
}

class FrontEndPageState extends State<FrontEndPage> {
  var BookmarkValue;
  TextEditingController SearchTFCtrl = new TextEditingController();


  @override
  void initState(){  
    AllContentsList      =new List();  
    if(ShowBookmarks_FrontEnd=="DontShowBookmark"){
      BookmarkValue=true;
    }
    else {
      BookmarkValue=false;
    }


    setState(() {

          Cmp_Intro=CmpCustExpTile(
    ExpIcon:Icon(Icons.chrome_reader_mode,color:Colors.white,),
    ExpTitle:"1.Introduction",
    ExpBg:CardBg,
    ExInsideBg:CardBg.withOpacity(0.5),
    BordRadius:20.0,
    InQuizzRoute:"/Generate_Intro_Quizz",
    CardLength:IntroCardsList.length,
    CardsList:IntroCardsList,
    isBookmarked:Show_Introduction,
    ID:1,
    Type:"FrontEnd",
  );





    Cmp_Keywords =  CmpCustExpTile(
  ExpIcon:Icon(Icons.vpn_key,color:Colors.white,),
  ExpTitle:"2.Keywords",
  ExpBg:(ThemeResult=="Light")?Colors.teal:Colors.black.withOpacity(0.6),
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_Keywords_Quizz",
  CardLength:KeywordsCardsList.length,
  CardsList:KeywordsCardsList,
  isBookmarked:Show_Keywords,
  ID:2,
  Type:"FrontEnd",
);


 Cmp_Text =  CmpCustExpTile(
  ExpIcon:Icon(Icons.short_text,color:Colors.white),
  ExpTitle:"3.Text",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_Text_Quizz",
  CardLength:TextCardsList.length,
  CardsList:TextCardsList,
  isBookmarked:Show_Text,
  ID:3,
  Type:"FrontEnd",
);


 Cmp_HeaderAppBar =  CmpCustExpTile(
  ExpIcon:Icon(Icons.fiber_dvr,color:Colors.white),
  ExpTitle:"4.Header AppBar",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_HeaderAppBar_Quizz",
  CardLength:HeaderAppBarCardsList.length,
  CardsList:HeaderAppBarCardsList,
  isBookmarked:Show_HeaderAppBar,
  ID:4,
  Type:"FrontEnd",
);


 Cmp_MainPageBgColor =  CmpCustExpTile(
  ExpIcon:Icon(Icons.format_paint,color:Colors.white),
  ExpTitle:"5.Main Page Bg Color",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_MainBg_Quizz",
  CardLength:MainBgCardsList.length,
  CardsList:MainBgCardsList,
  isBookmarked:Show_MainPageBgColor,
  ID:5,
  Type:"FrontEnd",
);

 Cmp_Image =  CmpCustExpTile(
  ExpIcon:Icon(Icons.image,color:Colors.white),
  ExpTitle:"6.Image",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_Image_Quizz",
  CardLength:ImageCardsList.length,
  CardsList:ImageCardsList,
  isBookmarked:Show_Image,
  ID:6,
  Type:"FrontEnd",
);


 Cmp_Buttons =   CmpCustExpTile(
  ExpIcon:Icon(Icons.check_box_outline_blank,color:Colors.white,),
  ExpTitle:"7.Buttons",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_Button_Quizz",
  CardLength:ButtonCardsList.length,
  CardsList:ButtonCardsList,
  isBookmarked:Show_Buttons,
  ID:7,
  Type:"FrontEnd",
);

 Cmp_Toast = CmpCustExpTile(
                    ExpIcon:Icon(Icons.album,color:Colors.white),
                    ExpTitle:"8.Toast",
                    ExpBg:CardBg,
                    ExInsideBg:CardBg.withOpacity(0.5),
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_Toast_Quizz",
                    CardLength:ToastList.length,
                    CardsList:ToastList,
  isBookmarked:Show_Toast,
  ID:8,
  Type:"FrontEnd",
);


 Cmp_Layouts = CmpCustExpTile(
  ExpIcon:Icon(Icons.grid_on,color:Colors.white),
  ExpTitle:"9.Layouts",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_Layouts_Quizz",
  CardLength:LayoutsList.length,
  CardsList:LayoutsList,
  isBookmarked:Show_Layouts,
  ID:9,
  Type:"FrontEnd",
);

 Cmp_Dialogs = CmpCustExpTile(
  ExpIcon:Icon(Icons.chrome_reader_mode,color:Colors.white,),
  ExpTitle:"10.Dialogs",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_Dialogs_Quizz",
  CardLength:DialogsList.length,
  CardsList:DialogsList,
  isBookmarked:Show_Dialogs,
  ID:10,
  Type:"FrontEnd",
);

 Cmp_Divider = CmpCustExpTile(
  ExpIcon:Icon(Icons.linear_scale,color:Colors.white),
  ExpTitle:"11.Divider",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_Divider_Quizz",
  CardLength:DividerList.length,
  CardsList:DividerList,
  isBookmarked:Show_Divider,
  ID:11,
  Type:"FrontEnd",
);


 Cmp_Navigator = CmpCustExpTile(
  ExpIcon:Icon(Icons.navigation,color:Colors.white),
  ExpTitle:"12.Navigator",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_Navigator_Quizz",
  CardLength:NavigatorList.length,
  CardsList:NavigatorList,
  isBookmarked:Show_Navigator,
  ID:12,
  Type:"FrontEnd",
);

 Cmp_SnackBar = CmpCustExpTile(
  ExpIcon:Icon(Icons.blur_linear,color:Colors.white,),
  ExpTitle:"13.SnackBar",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_SnackBar_Quizz",
  CardLength:SnackBarList.length,
  CardsList:SnackBarList,
  isBookmarked:Show_SnackBar,
  ID:13,
  Type:"FrontEnd",
);

 Cmp_FlushBar = CmpCustExpTile(
  ExpIcon:Icon(Icons.space_bar,color:Colors.white),
  ExpTitle:"14.FlushBar",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_FlushBar_Quizz",
  CardLength:FlushBarList.length,
  CardsList:FlushBarList,
  isBookmarked:Show_FlushBar,
  ID:14,
  Type:"FrontEnd",
);

 Cmp_Card =  CmpCustExpTile(
  ExpIcon:Icon(Icons.four_k,color:Colors.white),
  ExpTitle:"15.Card",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_Card_Quizz",
  CardLength:CardList.length,
  CardsList:CardList,
  isBookmarked:Show_Card,
  ID:15,
  Type:"FrontEnd",
);

 Cmp_TextOverFlow =  CmpCustExpTile(
  ExpIcon:Icon(Icons.title,color:Colors.white,),
  ExpTitle:"16.TextOverFlow",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_TextOverFlow_Quizz",
  CardLength:TextOverFlowList.length,
  CardsList:TextOverFlowList,
  isBookmarked:Show_TextOverFlow,
  ID:16,
  Type:"FrontEnd",
);


 Cmp_GestureDetector =  CmpCustExpTile(
  ExpIcon:Icon(Icons.touch_app,color:Colors.white,),
  ExpTitle:"17.Gesture Detector",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_GestureDetector_Quizz",
  CardLength:GestureDetectorList.length,
  CardsList:GestureDetectorList,
  isBookmarked:Show_GestureDetector,
  ID:17,
  Type:"FrontEnd",
);


 Cmp_ListView =  CmpCustExpTile(
  ExpIcon:Icon(Icons.filter_list,color:Colors.white,),
  ExpTitle:"18.ListView",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_ListView_Quizz",
  CardLength:ListViewList.length,
  CardsList:ListViewList,
  isBookmarked:Show_ListView,
  ID:18,
  Type:"FrontEnd",
);

 Cmp_TextField =  CmpCustExpTile(
  ExpIcon:Icon(Icons.input,color:Colors.white,),
  ExpTitle:"19.TextField",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_TextField_Quizz",
  CardLength:TextFieldList.length,
  CardsList:TextFieldList,
  isBookmarked:Show_TextField,
  ID:19,
  Type:"FrontEnd",
);

 Cmp_FooterAppBar =  CmpCustExpTile(
  ExpIcon:Icon(Icons.fiber_dvr,color:Colors.white,),
  ExpTitle:"20.Footer AppBar",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_FooterAppBar_Quizz",
  CardLength:FooterAppbarList.length,
  CardsList:FooterAppbarList,
  isBookmarked:Show_FooterAppBar,
  ID:20,
  Type:"FrontEnd",
);

 Cmp_ImageSlider =  CmpCustExpTile(
  ExpIcon:Icon(Icons.ondemand_video,color:Colors.white,),
  ExpTitle:"21.Image Slider",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_FooterAppBar_Quizz",
  CardLength:ImageSliderList.length,
  CardsList:ImageSliderList,
  isBookmarked:Show_ImageSlider,
  ID:21,
  Type:"FrontEnd",
);


 Cmp_Notification = CmpCustExpTile(
  ExpIcon:Icon(Icons.notifications_active,color:Colors.white,),
  ExpTitle:"22.Notification",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_Notification_Quizz",
  CardLength:NotificationList.length,
  CardsList:NotificationList,
  isBookmarked:Show_Notification,
  ID:22,
  Type:"FrontEnd",
);

 Cmp_Switch =  CmpCustExpTile(
  ExpIcon:Icon(Icons.switch_camera,color:Colors.white,),
  ExpTitle:"23.Switch",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_Switch_Quizz",
  CardLength:SwitchList.length,
  CardsList:SwitchList,
  isBookmarked:Show_Switch,
  ID:23,
  Type:"FrontEnd",
);


 Cmp_Audio =  CmpCustExpTile(
  ExpIcon:Icon(Icons.audiotrack,color:Colors.white,),
  ExpTitle:"24.Audio",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_Audio_Quizz",
  CardLength:AudioList.length,
  CardsList:AudioList,
  isBookmarked:Show_Audio,
  ID:24,
  Type:"FrontEnd",
);


 Cmp_Video =  CmpCustExpTile(
  ExpIcon:Icon(Icons.videocam,color:Colors.white,),
  ExpTitle:"25.Video",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_Video_Quizz",
  CardLength:VideoList.length,
  CardsList:VideoList,
  isBookmarked:Show_Video,
  ID:25,
  Type:"FrontEnd",
);


 Cmp_SimpleLoader =  CmpCustExpTile(
  ExpIcon:Icon(Icons.timelapse,color:Colors.white,),
  ExpTitle:"26.Simple Loader",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_SimpleLoader_Quizz",
  CardLength:SimpleLoaderList.length,
  CardsList:SimpleLoaderList,
  isBookmarked:Show_SimpleLoader,
  ID:26,
  Type:"FrontEnd",
);

 Cmp_AdvancedLoader =  CmpCustExpTile(
  ExpIcon:Icon(Icons.av_timer,color:Colors.white,),
  ExpTitle:"27.Advanced Loader",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_AdvancedLoader_Quizz",
  CardLength:AdvancedLoaderList.length,
  CardsList:AdvancedLoaderList,
  isBookmarked:Show_AdvancedLoader,
  ID:27,
  Type:"FrontEnd",
);

 Cmp_Animation =  CmpCustExpTile(
  ExpIcon:Icon(Icons.video_label,color:Colors.white,),
  ExpTitle:"28.Animation",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_Animation_Quizz",
  CardLength:AnimationList.length,
  CardsList:AnimationList,
  isBookmarked:Show_Animation,
  ID:28,
  Type:"FrontEnd",
);

 Cmp_Radio =   CmpCustExpTile(
  ExpIcon:Icon(Icons.radio_button_checked,color:Colors.white,),
  ExpTitle:"29.Radio",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_Radio_Quizz",
  CardLength:RadioList.length,
  CardsList:RadioList,
  isBookmarked:Show_Radio,
  ID:29,
  Type:"FrontEnd",
);

 Cmp_CheckBox =   CmpCustExpTile(
  ExpIcon:Icon(Icons.check_box,color:Colors.white,),
  ExpTitle:"30.CheckBox",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_CheckBox_Quizz",
  CardLength:CheckBoxList.length,
  CardsList:CheckBoxList,
  isBookmarked:Show_CheckBox,
  ID:30,
  Type:"FrontEnd",
);


 Cmp_Chip =   CmpCustExpTile(
  ExpIcon:Icon(Icons.blur_circular,color:Colors.white,),
  ExpTitle:"31.Chip",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_Chip_Quizz",
  CardLength:ChipList.length,
  CardsList:ChipList,
  isBookmarked:Show_Chip,
  ID:31,
  Type:"FrontEnd",
);


 Cmp_TabBar =   CmpCustExpTile(
  ExpIcon:Icon(Icons.navigation,color:Colors.white,),
  ExpTitle:"32.Tab Bar",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_TabBar_Quizz",
  CardLength:TabBarList.length,
  CardsList:TabBarList,
  isBookmarked:Show_TabBar,
  ID:32,
  Type:"FrontEnd",
);

 Cmp_PageSlector =   CmpCustExpTile(
  ExpIcon:Icon(Icons.threesixty,color:Colors.white,),
  ExpTitle:"33.Page Selector",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_Selector_Quizz",
  CardLength:PageSelectorList.length,
  CardsList:PageSelectorList,
  isBookmarked:Show_PageSelector,
  ID:33,
  Type:"FrontEnd",
);

 Cmp_Flex =   CmpCustExpTile(
  ExpIcon:Icon(Icons.compare_arrows,color:Colors.white,),
  ExpTitle:"34.Flex",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_Flex_Quizz",
  CardLength:FlexList.length,
  CardsList:FlexList,
  isBookmarked:Show_Flex,
  ID:34,
  Type:"FrontEnd",
);

 Cmp_SelectComboBox =   CmpCustExpTile(
  ExpIcon:Icon(Icons.arrow_drop_down_circle,color:Colors.white,),
  ExpTitle:"35.Select ComboBox",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_ComboBox_Quizz",
  CardLength:ComboBoxList.length,
  CardsList:ComboBoxList,
  isBookmarked:Show_SelectComboBox,
  ID:35,
  Type:"FrontEnd",
);


 Cmp_ExpandableList =    CmpCustExpTile(
  ExpIcon:Icon(Icons.expand_more,color:Colors.white,),
  ExpTitle:"36.Expandable List",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_ExpandableList_Quizz",
  CardLength:ExpandableListList.length,
  CardsList:ExpandableListList,
  isBookmarked:Show_ExpandableList,
  ID:36,
  Type:"FrontEnd",
);

 Cmp_Slider =    CmpCustExpTile(
  ExpIcon:Icon(Icons.tune,color:Colors.white,),
  ExpTitle:"37.Slider",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_Slider_Quizz",
  CardLength:SliderList.length,
  CardsList:SliderList,
  isBookmarked:Show_Slider,
  ID:37,
  Type:"FrontEnd",
);


 Cmp_Drawer =    CmpCustExpTile(
  ExpIcon:Icon(Icons.menu,color:Colors.white,),
  ExpTitle:"38.Drawer",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_Drawer_Quizz",
  CardLength:DrawerList.length,
  CardsList:DrawerList,
  isBookmarked:Show_Drawer,
  ID:38,
  Type:"FrontEnd",
);


 Cmp_MainSplashScreen =    CmpCustExpTile(
  ExpIcon:Icon(Icons.broken_image,color:Colors.white,),
  ExpTitle:"39.Main Splash Screen",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_MainSplashScreen_Quizz",
  CardLength:MainSplashScreenList.length,
  CardsList:MainSplashScreenList,
  isBookmarked:Show_MainSplashScreen,
  ID:39,
  Type:"FrontEnd",
);


 Cmp_Admob =    CmpCustExpTile(
  ExpIcon:Icon(Icons.adb,color:Colors.white,),
  ExpTitle:"40.Admob",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_Admob_Quizz",
  CardLength:AdmobList.length,
  CardsList:AdmobList,
  isBookmarked:Show_Admob,
  ID:40,
  Type:"FrontEnd",
);


 Cmp_FlipCard =    CmpCustExpTile(
  ExpIcon:Icon(Icons.flip_to_back,color:Colors.white,),
  ExpTitle:"41.Flip Card",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_FlipCard_Quizz",
  CardLength:FlipCardList.length,
  CardsList:FlipCardList,
  isBookmarked:Show_FlipCard,
  ID:41,
  Type:"FrontEnd",
);


 Cmp_FlipView =    CmpCustExpTile(
  ExpIcon:Icon(Icons.flip,color:Colors.white,),
  ExpTitle:"42.Flip View",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_FlipView_Quizz",
  CardLength:FlipViewList.length,
  CardsList:FlipViewList,
  isBookmarked:Show_FlipView,
  ID:42,
  Type:"FrontEnd",
);


 Cmp_Stepper =    CmpCustExpTile(
  ExpIcon:Icon(Icons.format_line_spacing,color:Colors.white,),
  ExpTitle:"43.Stepper",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_Stepper_Quizz",
  CardLength:StepperList.length,
  CardsList:StepperList,
  isBookmarked:Show_Stepper,
  ID:43,
  Type:"FrontEnd",
);


 Cmp_BottomSheet =    CmpCustExpTile(
  ExpIcon:Icon(Icons.dashboard,color:Colors.white,),
  ExpTitle:"44.Bottom Sheet",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_BottomSheet_Quizz",
  CardLength:BottomSheetList.length,
  CardsList:BottomSheetList,
  isBookmarked:Show_BottomSheet,
  ID:44,
  Type:"FrontEnd",
);


 Cmp_SmoothPageIndicator =  CmpCustExpTile(
  ExpIcon:Icon(Icons.slideshow,color:Colors.white,),
  ExpTitle:"45.Smooth Page Indicator",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_SPI_Quizz",
  CardLength:SmoothPageIndicatorList.length,
  CardsList:SmoothPageIndicatorList,
  isBookmarked:Show_SmoothPageIndicator,
  ID:45,
  Type:"FrontEnd",
);


 Cmp_Expandable =  CmpCustExpTile(
  ExpIcon:Icon(Icons.arrow_drop_down,color:Colors.white,),
  ExpTitle:"46.Expandable",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_Expandable_Quizz",
  CardLength:ExpandableCardsList.length,
  CardsList:ExpandableCardsList,
  isBookmarked:Show_Expandable,
  ID:46,
  Type:"FrontEnd",
);


 Cmp_Marquee =  CmpCustExpTile(
  ExpIcon:Icon(Icons.forward,color:Colors.white,),
  ExpTitle:"47.Marquee",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_Marquee_Quizz",
  CardLength:MarqueeCardsList.length,
  CardsList:MarqueeCardsList,
  isBookmarked:Show_Marquee,
  ID:47,
  Type:"FrontEnd",
);


 Cmp_ContainerWaves =  CmpCustExpTile(
  ExpIcon:Icon(Icons.exposure,color:Colors.white,),
  ExpTitle:"48.Container Waves",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_ContainerWaves_Quizz",
  CardLength:ContainerWavesList.length,
  CardsList:ContainerWavesList,
  isBookmarked:Show_ContainerWaves,
  ID:48,
  Type:"FrontEnd",
);


 Cmp_RouteTransition =  CmpCustExpTile(
  ExpIcon:Icon(Icons.navigate_next,color:Colors.white,),
  ExpTitle:"49.Route Transition",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_RouteTransition_Quizz",
  CardLength:RouteTransitionList.length,
  CardsList:RouteTransitionList,
  isBookmarked:Show_RouteTransition,
  ID:49,
  Type:"FrontEnd",
);


 Cmp_FlutterSyntaxe =  CmpCustExpTile(
  ExpIcon:Icon(Icons.highlight,color:Colors.white,),
  ExpTitle:"50.Flutter Syntaxe",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_FlutterSyntaxe_Quizz",
  CardLength:DartSyntaxeHighlighList.length,
  CardsList:DartSyntaxeHighlighList,
  isBookmarked:Show_FlutterSyntaxe,
  ID:50,
  Type:"FrontEnd",
);


 Cmp_SlidingUpPanel =  CmpCustExpTile(
  ExpIcon:Icon(Icons.open_in_browser,color:Colors.white,),
  ExpTitle:"51.Sliding Up Panel",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_SlidingUpPanel_Quizz",
  CardLength:SlidingUpPanelList.length,
  CardsList:SlidingUpPanelList,
  isBookmarked:Show_SlidingUpPanel,
  ID:51,
  Type:"FrontEnd",
);


 Cmp_PopupMenuButton =  CmpCustExpTile(
  ExpIcon:Icon(Icons.more_vert,color:Colors.white,),
  ExpTitle:"52.Popup Menu Button",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_PopupMenuButton_Quizz",
  CardLength:PopupMenuButtonList.length,
  CardsList:PopupMenuButtonList,
  isBookmarked:Show_PopupMenuButton,
  ID:52,
  Type:"FrontEnd",
);

 Cmp_HeroAnimation =   CmpCustExpTile(
  ExpIcon:Icon(Icons.wallpaper,color:Colors.white,),
  ExpTitle:"53.Hero Animation",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_Hero_Quizz",
  CardLength:HeroList.length,
  CardsList:HeroList,
  isBookmarked:Show_HeroAnimation,
  ID:53,
  Type:"FrontEnd",
);


 Cmp_AvatarGlow =   CmpCustExpTile(
  ExpIcon:Icon(Icons.wifi_tethering,color:Colors.white,),
  ExpTitle:"54.Avatar Glow",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_AvatarGlow_Quizz",
  CardLength:AvatarGlowList.length,
  CardsList:AvatarGlowList,
  isBookmarked:Show_AvatarGlow,
  ID:54,
  Type:"FrontEnd",
);

 Cmp_DataTable =   CmpCustExpTile(
  ExpIcon:Icon(Icons.table_chart,color:Colors.white,),
  ExpTitle:"55.DataTable",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_DataTable_Quizz",
  CardLength:DataTableList.length,
  CardsList:DataTableList,
  isBookmarked:Show_DataTable,
  ID:55,
  Type:"FrontEnd",
);

 Cmp_WebView =   CmpCustExpTile(
  ExpIcon:Icon(Icons.web_asset,color:Colors.white,),
  ExpTitle:"56.WebView",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_WebView_Quizz",
  CardLength:WebViewList.length,
  CardsList:WebViewList,
  isBookmarked:Show_WebView,
  ID:56,
  Type:"FrontEnd",
);


 Cmp_BackDrop =    CmpCustExpTile(
  ExpIcon:Icon(Icons.menu,color:Colors.white,),
  ExpTitle:"57.BackDrop",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_BackDrop_Quizz",
  CardLength:BackDropList.length,
  CardsList:BackDropList,
  isBookmarked:Show_BackDrop,
  ID:57,
  Type:"FrontEnd",
);

 Cmp_AnimatedIcons =    CmpCustExpTile(
  ExpIcon:Icon(Icons.video_library,color:Colors.white,),
  ExpTitle:"58.Animated Icons",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_AnimatedIcons_Quizz",
  CardLength:AnimatedIconsList.length,
  CardsList:AnimatedIconsList,
  isBookmarked:Show_AnimatedIcons,
  ID:58,
  Type:"FrontEnd",
);


 Cmp_TinderSwipe =     CmpCustExpTile(
  ExpIcon:Icon(Icons.wrap_text,color:Colors.white,),
  ExpTitle:"59.Tinder Swipe",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_TinderSwipe_Quizz",
  CardLength:TinderSwipeList.length,
  CardsList:TinderSwipeList,
  isBookmarked:Show_TinderSwipe,
  ID:59,
  Type:"FrontEnd",
);


 Cmp_ImagePicker =     CmpCustExpTile(
  ExpIcon:Icon(Icons.image,color:Colors.white,),
  ExpTitle:"60.Image Picker",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_ImagePicker_Quizz",
  CardLength:ImagePickerList.length,
  CardsList:ImagePickerList,
  isBookmarked:Show_ImagePicker,
  ID:60,
  Type:"FrontEnd",
);


 Cmp_MultiImagePicker =      CmpCustExpTile(
  ExpIcon:Icon(Icons.image,color:Colors.white,),
  ExpTitle:"61.Multi Image Picker",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_MultipleImagePicker_Quizz",
  CardLength:MultipleImagePickerList.length,
  CardsList:MultipleImagePickerList,
  isBookmarked:Show_MultiImagePicker,
  ID:61,
  Type:"FrontEnd",
);


 Cmp_AdvancePdfViewer =      CmpCustExpTile(
  ExpIcon:Icon(Icons.attachment,color:Colors.white,),
  ExpTitle:"62.Advance Pdf Viewer",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_AdvancePdfViewer_Quizz",
  CardLength:AdvancePdfViewerList.length,
  CardsList:AdvancePdfViewerList,
  isBookmarked:Show_AdvancePdfViewer,
  ID:62,
  Type:"FrontEnd",
);


 Cmp_GoogleNavBar =      CmpCustExpTile(
  ExpIcon:Icon(Icons.edit_attributes,color:Colors.white,),
  ExpTitle:"63.Google NavBar",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_GoogleNavBar_Quizz",
  CardLength:GoogleNavBarList.length,
  CardsList:GoogleNavBarList,
  isBookmarked:Show_GoogleNavBar,
  ID:63,
  Type:"FrontEnd",
);


 Cmp_Clippy =      CmpCustExpTile(
  ExpIcon:Icon(Icons.format_shapes,color:Colors.white,),
  ExpTitle:"64.Clippy",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_Clippy_Quizz",
  CardLength:ClippyList.length,
  CardsList:ClippyList,
  isBookmarked:Show_Clippy,
  ID:64,
  Type:"FrontEnd",
);

 Cmp_WaterDrop =      CmpCustExpTile(
  ExpIcon:Icon(Icons.grain,color:Colors.white,),
  ExpTitle:"65.Water Drop",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_WaterDrop_Quizz",
  CardLength:WaterDropList.length,
  CardsList:WaterDropList,
  isBookmarked:Show_WaterDrop,
  ID:65,
  Type:"FrontEnd",
);


 Cmp_DayNightPicker =      CmpCustExpTile(
  ExpIcon:Icon(Icons.timer,color:Colors.white,),
  ExpTitle:"66.Day Night Picker",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_DayNightPicker_Quizz",
  CardLength:DayNightPickerList.length,
  CardsList:DayNightPickerList,
  isBookmarked:Show_DayNightPicker,
  ID:66,
  Type:"FrontEnd",
);


 Cmp_Grafpix =      CmpCustExpTile(
  ExpIcon:Icon(Icons.import_contacts,color:Colors.white,),
  ExpTitle:"67.GrafPix",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_GrafPix_Quizz",
  CardLength:GrafPixList.length,
  CardsList:GrafPixList,
  isBookmarked:Show_GrafPix,
  ID:67,
  Type:"FrontEnd",
);

 Cmp_ListScrollWheel =      CmpCustExpTile(
  ExpIcon:Icon(Icons.wb_iridescent,color:Colors.white,),
  ExpTitle:"68.ListScrollWheel",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_ListScrollWheel_Quizz",
  CardLength:ListScrollWheelList.length,
  CardsList:ListScrollWheelList,
  isBookmarked:Show_ListScrollWheel,
  ID:68,
  Type:"FrontEnd",
);

 Cmp_AnimatedDialog =      CmpCustExpTile(
  ExpIcon:Icon(Icons.warning,color:Colors.white,),
  ExpTitle:"69.Animated Dialog",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_AnimatedDialog_Quizz",
  CardLength:AnimatedDialog.length,
  CardsList:AnimatedDialog,
  isBookmarked:Show_AnimatedDialog,
  ID:69,
  Type:"FrontEnd",
);

 Cmp_ToggleButtons =      CmpCustExpTile(
  ExpIcon:Icon(Icons.repeat,color:Colors.white,),
  ExpTitle:"70.Toggle Buttons",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_ToggleButtons_Quizz",
  CardLength:ToggleButtonsLst.length,
  CardsList:ToggleButtonsLst,
  isBookmarked:Show_ToggleButtons,
  ID:70,
  Type:"FrontEnd",
);


 Cmp_SelectableText =      CmpCustExpTile(
  ExpIcon:Icon(Icons.title,color:Colors.white,),
  ExpTitle:"71.Selectable Text",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_Selectable_Quizz",
  CardLength:SelectableTextLst.length,
  CardsList:SelectableTextLst,
  isBookmarked:Show_SelectableText,
  ID:71,
  Type:"FrontEnd",
);


 Cmp_GridView =      CmpCustExpTile(
  ExpIcon:Icon(Icons.grid_on,color:Colors.white,),
  ExpTitle:"72.GridView",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_GridView_Quizz",
  CardLength:GridViewLst.length,
  CardsList:GridViewLst,
  isBookmarked:Show_GridView,
  ID:72,
  Type:"FrontEnd",
);


 Cmp_CurvedNavBar =    CmpCustExpTile(
  ExpIcon:Icon(Icons.navigation,color:Colors.white,),
  ExpTitle:"73.Curved NavBar",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_CurvedNavBar_Quizz",
  CardLength:CurvedNavBarLst.length,
  CardsList:CurvedNavBarLst,
  isBookmarked:Show_CurvedNavBar,
  ID:73,
  Type:"FrontEnd",
);

 Cmp_FloatingActionButton =    CmpCustExpTile(
  ExpIcon:Icon(Icons.navigation,color:Colors.white,),
  ExpTitle:"74.FloatingActionButton",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_FloatingActionButton_Quizz",
  CardLength:FloatingActionButtonLst.length,
  CardsList:FloatingActionButtonLst,
  isBookmarked:Show_FloatingActionButton,
  ID:74,
  Type:"FrontEnd",
);

 Cmp_Tooltip =    CmpCustExpTile(
  ExpIcon:Icon(Icons.info,color:Colors.white,),
  ExpTitle:"75.ToolTip",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_ToolTip_Quizz",
  CardLength:ToolTipLst.length,
  CardsList:ToolTipLst,
  isBookmarked:Show_Tooltip,
  ID:75,
  Type:"FrontEnd",
);

 Cmp_BackDetector =    CmpCustExpTile(
  ExpIcon:Icon(Icons.arrow_back,color:Colors.white,),
  ExpTitle:"76.Back Detector",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_BackDetector_Quizz",
  CardLength:BackDetectorLst.length,
  CardsList:BackDetectorLst,
  isBookmarked:Show_BackDetector,
  ID:76,
  Type:"FrontEnd",
);

 Cmp_Clipping =    CmpCustExpTile(
  ExpIcon:Icon(Icons.content_cut,color:Colors.white,),
  ExpTitle:"77.Clipping",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_Clipping_Quizz",
  CardLength:ClippingLst.length,
  CardsList:ClippingLst,
  isBookmarked:Show_Clipping,
  ID:77,
  Type:"FrontEnd",
);

 Cmp_NavigationBarRail =     CmpCustExpTile(
  ExpIcon:Icon(Icons.navigation,color:Colors.white,),
  ExpTitle:"78.NavigationBar Rail",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_NavigationBarRail_Quizz",
  CardLength:NavBarRailLst.length,
  CardsList:NavBarRailLst,
  isBookmarked:Show_NavigationRail,
  ID:78,
  Type:"FrontEnd",
);

 Cmp_FancyBottomNavBar =     CmpCustExpTile(
  ExpIcon:Icon(Icons.navigation,color:Colors.white,),
  ExpTitle:"79.Fancy Bottom NavBar",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_FancyBottomNavBar_Quizz",
  CardLength:FancyNavBarLst.length,
  CardsList:FancyNavBarLst,
  isBookmarked:Show_FancyBottomNavBar,
  ID:79,
  Type:"FrontEnd",
);


 Cmp_ColorPicker =     CmpCustExpTile(
  ExpIcon:Icon(Icons.color_lens,color:Colors.white,),
  ExpTitle:"80.Color Picker",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_ColorPicker_Quizz",
  CardLength:ColorPickerLst.length,
  CardsList:ColorPickerLst,
  isBookmarked:Show_ColorPicker,
  ID:80,
  Type:"FrontEnd",
);

 Cmp_LikeButton =     CmpCustExpTile(
  ExpIcon:Icon(Icons.favorite,color:Colors.white,),
  ExpTitle:"81.Like Button",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_LikeButton_Quizz",
  CardLength:LikeButtonLst.length,
  CardsList:LikeButtonLst,
  isBookmarked:Show_LikeButton,
  ID:81,
  Type:"FrontEnd",
);

 Cmp_SliverAppBar =     CmpCustExpTile(
  ExpIcon:Icon(Icons.fiber_dvr,color:Colors.white,),
  ExpTitle:"82.Sliver AppBar",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_SliverAppBar_Quizz",
  CardLength:SliverAppBarLst.length,
  CardsList:SliverAppBarLst,
  isBookmarked:Show_SliverAppBar,
  ID:82,
  Type:"FrontEnd",
);

 Cmp_AnimatedTextKit =     CmpCustExpTile(
  ExpIcon:Icon(Icons.title,color:Colors.white,),
  ExpTitle:"83.Animated Text Kit",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_AnimatedTextKit_Quizz",
  CardLength:AnimatedTextKitLst.length,
  CardsList:AnimatedTextKitLst,
  isBookmarked:Show_AnimatedTextKit,
  ID:83,
  Type:"FrontEnd",
);


 Cmp_FoldableSideBar =     CmpCustExpTile(
  ExpIcon:Icon(Icons.navigation,color:Colors.white,),
  ExpTitle:"84.Foldable SideBar",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_FoldableSideBar_Quizz",
  CardLength:FoldableSideBarLst.length,
  CardsList:FoldableSideBarLst,
  isBookmarked:Show_FoldableSideBar,
  ID:84,
  Type:"FrontEnd",
);

 Cmp_PercentIndicator =     CmpCustExpTile(
  ExpIcon:Icon(Icons.access_time,color:Colors.white,),
  ExpTitle:"85.Percent Indicator",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_PercentIndicator_Quizz",
  CardLength:PercentIndicatorList.length,
  CardsList:PercentIndicatorList,
  isBookmarked:Show_PercentIndicator,
  ID:85,
  Type:"FrontEnd",
);

 Cmp_Connectivity =     CmpCustExpTile(
  ExpIcon:Icon(Icons.network_check,color:Colors.white,),
  ExpTitle:"86.Connectivity",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_Connectivity_Quizz",
  CardLength:ConnectivityList.length,
  CardsList:ConnectivityList,
  isBookmarked:Show_Connectivity,
  ID:88,
  Type:"FrontEnd",
);

 Cmp_SpinCircleBottomBar =     CmpCustExpTile(
  ExpIcon:Icon(Icons.access_time,color:Colors.white,),
  ExpTitle:"87.Spin Circle Bottom Bar",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_SpinCircleBottomBar_Quizz",
  CardLength:SpinCircleBottomBarList.length,
  CardsList:SpinCircleBottomBarList,
  isBookmarked:Show_SpinCircleBottomBar,
  ID:89,
  Type:"FrontEnd",
);


 Cmp_StaggeredGridView =     CmpCustExpTile(
  ExpIcon:Icon(Icons.view_column,color:Colors.white,),
  ExpTitle:"88.Staggered Grid View",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_StaggeredGridView_Quizz",
  CardLength:StaggeredGridViewList.length,
  CardsList:StaggeredGridViewList,
  isBookmarked:Show_StaggeredGridView,
  ID:90,
  Type:"FrontEnd",
);


 Cmp_InAppUpdate =     CmpCustExpTile(
  ExpIcon:Icon(Icons.update,color:Colors.white,),
  ExpTitle:"89.In App Update",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_InAppUpdate_Quizz",
  CardLength:InAppUpdateList.length,
  CardsList:InAppUpdateList,
  isBookmarked:Show_InAppUpdate,
  ID:91,
  Type:"FrontEnd",
);


 Cmp_Timer =     CmpCustExpTile(
  ExpIcon:Icon(Icons.timelapse,color:Colors.white,),
  ExpTitle:"90.Timer",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_Timer_Quizz",
  CardLength:TimerList.length,
  CardsList :TimerList,
  isBookmarked:Show_Timer,
  ID:92,
  Type:"FrontEnd",
);

 Cmp_Share =     CmpCustExpTile(
  ExpIcon:Icon(Icons.share,color:Colors.white,),
  ExpTitle:"91.Share",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_Share_Quizz",
  CardLength:ShareList.length,
  CardsList :ShareList,
  isBookmarked:Show_Share,
  ID:93,
  Type:"FrontEnd",
);


 Cmp_ExitApp =     CmpCustExpTile(
  ExpIcon:Icon(Icons.close,color:Colors.white,),
  ExpTitle:"92.ExitApp",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_ExitApp_Quizz",
  CardLength:ExitAppList.length,
  CardsList :ExitAppList,
  isBookmarked:Show_ExitApp,
  ID:94,
  Type:"FrontEnd",
);

 Cmp_TensorFlow =     CmpCustExpTile(
  ExpIcon:Icon(Icons.camera_front,color:Colors.white,),
  ExpTitle:"93.TensorFlow",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_TensorFlow_Quizz",
  CardLength:TensorFlowList.length,
  CardsList :TensorFlowList,
  isBookmarked:Show_TensorFlow,
  ID:95,
  Type:"FrontEnd",
);

 Cmp_Pimp_My_Button =     CmpCustExpTile(
  ExpIcon:Icon(Icons.all_out,color:Colors.white,),
  ExpTitle:"94.Pimp My Button",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_PimpMyButton_Quizz",
  CardLength:PimpMyButtonList.length,
  CardsList :PimpMyButtonList,
  isBookmarked:Show_PimpByButton,
  ID:96,
  Type:"FrontEnd",
);


 Cmp_AnimatedList =     CmpCustExpTile(
  ExpIcon:Icon(Icons.list,color:Colors.white,),
  ExpTitle:"95.Animated List",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_AnimatedList_Quizz",
  CardLength:AnimatedList_List.length,
  CardsList :AnimatedList_List,
  isBookmarked:Show_AnimatedList,
  ID:97,
  Type:"FrontEnd",
);


 Cmp_FlutterAppBadger =     CmpCustExpTile(
  ExpIcon:Icon(Icons.notification_important,color:Colors.white,),
  ExpTitle:"96.Flutter App Badger",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_FlutterAppBadger_Quizz",
  CardLength:FlutterAppBadger_List.length,
  CardsList :FlutterAppBadger_List,
  isBookmarked:Show_FlutterAppBadger,
  ID:98,
  Type:"FrontEnd",
);

Cmp_InAppPurchase =     CmpCustExpTile(
  ExpIcon:Icon(Icons.monetization_on,color:Colors.white,),
  ExpTitle:"97.In App Purchase",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_InAppPurchase_Quizz",
  CardLength:InAppPurchase_List.length,
  CardsList :InAppPurchase_List,
  isBookmarked:Show_InAppPurchase,
  ID:99,
  Type:"FrontEnd",
);


Cmp_PageViewAnimation =     CmpCustExpTile(
  ExpIcon:Icon(Icons.pages,color:Colors.white,),
  ExpTitle:"98.PageView Animation",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_PageViewAnimation_Quizz",
  CardLength:PageViewAnimation_List.length,
  CardsList :PageViewAnimation_List,
  isBookmarked:Show_PageViewAnimation,
  ID:100,
  Type:"FrontEnd",
);

Cmp_AnimatedBackground =     CmpCustExpTile(
  ExpIcon:Icon(Icons.wallpaper,color:Colors.white,),
  ExpTitle:"99.Animated Background",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_AnimatedBackground_Quizz",
  CardLength:AnimatedBackground_List.length,
  CardsList :AnimatedBackground_List,
  isBookmarked:Show_AnimatedBackground,
  ID:101,
  Type:"FrontEnd",
);

Cmp_Geolocator =     CmpCustExpTile(
  ExpIcon:Icon(Icons.map,color:Colors.white,),
  ExpTitle:"100.Geolocator",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_Geolocator_Quizz",
  CardLength:Geolocator_List.length,
  CardsList :Geolocator_List,
  isBookmarked:Show_Geolocator,
  ID:102,
  Type:"FrontEnd",
);

Cmp_GoogleMaps =     CmpCustExpTile(
  ExpIcon:Icon(Icons.map,color:Colors.white,),
  ExpTitle:"101.Google Map",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_Geolocator_Quizz",
  CardLength:GoogleMaps_List.length,
  CardsList :GoogleMaps_List,
  isBookmarked:Show_GoogleMaps,
  ID:103,
  Type:"FrontEnd",
);

Cmp_KFDrawer =     CmpCustExpTile(
  ExpIcon:Icon(Icons.navigation,color:Colors.white,),
  ExpTitle:"101.KFDrawer",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_KFDrawer_Quizz",
  CardLength:KFDrawer_List.length,
  CardsList :KFDrawer_List,
  isBookmarked:Show_KFDrawer,
  ID:104,
  Type:"FrontEnd",
);


Cmp_GoogleTranslator =     CmpCustExpTile(
  ExpIcon:Icon(Icons.map,color:Colors.white,),
  ExpTitle:"102.Google Translator",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_GoogleTranslator_Quizz",
  CardLength:GoogleTranslator_List.length,
  CardsList :GoogleTranslator_List,
  isBookmarked:Show_GoogleTranslator,
  ID:105,
  Type:"FrontEnd",
);


Cmp_ApkAdmin =     CmpCustExpTile(
  ExpIcon:Icon(Icons.adb,color:Colors.white,),
  ExpTitle:"103.Apk Admin",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_ApkAdmin_Quizz",
  CardLength:ApkAdmin_List.length,
  CardsList :ApkAdmin_List,
  isBookmarked:Show_ApkAdmin,
  ID:106,
  Type:"FrontEnd",
);







Cmp_Advanced =     CmpCustExpTile(
  ExpIcon:Icon(Icons.more_horiz,color:Colors.white,),
  ExpTitle:"104.Advanced",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_Advanced_Quizz",
  CardLength:AdvancedList.length,
  CardsList:AdvancedList,
  isBookmarked:Show_Advanced,
  ID:86,
  Type:"FrontEnd",
);


Cmp_Production =     CmpCustExpTile(
  ExpIcon:Icon(Icons.android,color:Colors.white,),
  ExpTitle:"105.Production", 
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_Production_Quizz",
  CardLength:ProductionList.length,
  CardsList:ProductionList,
  isBookmarked:Show_Production,
  ID:87,
  Type:"FrontEnd",
);


    AddAllFrontEndList();
    });


  }


Future<void> _onBkChanged(bool value)  async {
  var dbApp = DBApp();
  App AS;

    setState (()   {
      GettingBookmarkFrontEndContent=true;
      BookmarkValue = value;

      if(SoundResult=="NotMuted") {
        PlayTapSound();
      }

      if(BookmarkValue==false){
        AS=new App(4,"ShowBookmarkFrontEnd","ShowBookmark");
        ShowBookmarks_FrontEnd="ShowBookmark";
      }
      else{
        AS=new App(4,"ShowBookmarkFrontEnd","DontShowBookmark");
        ShowBookmarks_FrontEnd="DontShowBookmark";
      }

    });
    setState(() {
      GettingBookmarkFrontEndContent=true;
    });
    await dbApp.update(AS);
    await dbApp.getShowBookmarkFrontEnd();
    await new DBBkContApp().getContentBookmark();
    setState(() {
      GettingBookmarkFrontEndContent=false;
    });
}

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
                  children:<Widget>[

                    SizedBox(height: 5,),
                    UpdateReminderUI(widget.parent),

                    
                    SizedBox(height: 5,),
                    GiftReminderUI(widget.parent),

                    SizedBox(height: 5,),
                    SourceCodeUI(),

                    SizedBox(height: 5,),
                    TestMeRandomQuizzesUI(),

                    SizedBox(height: 5,),
                    CodesByUsersUI(),

                    SizedBox(height: 10,),
                    StartSelectUI(),

                    
                   Card(
                color:Colors.grey[200],
                child:(GettingBookmarkFrontEndContent==false)?
                Row(
                  children: <Widget>[
                    Container(
                      width:MediaQuery.of(context).size.width*0.20,
                      child:Icon(Icons.favorite,color:Colors.red),
                    ),
                    Text(OnTxtTrans),
                    Container(
                      width:MediaQuery.of(context).size.width*0.26,
                      child:Switch(
                        activeColor:Colors.white,
                        inactiveThumbColor:Colors.white,
                        value: BookmarkValue,
                        onChanged: _onBkChanged,
                      ),
                    ),
                    Text(OffTxtTrans),
                    Container(
                      width:MediaQuery.of(context).size.width*0.20,
                      child:Icon(Icons.favorite_border,color:Colors.red),
                    ),
                  ],
                ):Center(
                  child:Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Row(
                      children: <Widget>[
                        CircularProgressIndicator(
                          backgroundColor:
                          Colors.blueAccent,
                          valueColor:
                          AlwaysStoppedAnimation<Color>(Colors.indigo),
                        ),
                        SizedBox(width:10,),
                        Text(
                          "Updating Data...",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CardBg,
                            fontFamily: "Lobster",
                            fontSize: 18,
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),

              Card(
               color:Colors.grey[200],
               child:Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget>[
                      Container(
                        width:210,
                        child:TextField(
                         controller:SearchTFCtrl,
                         decoration:InputDecoration(
                           hintText:SearchContentsTxtTrans
                         )
                        ),
                      ),
                        RaisedButton(
                          child:Text(SearchTxtTrans),
                          onPressed:(){
                            setState(() {
                              FetchContentFrontEndHashMap(SearchTFCtrl.text);
                            });
                          }
                        )
                      
                    ]
                  ),
               ),
              ),

              
                    

                    (ShowBookmarks_FrontEnd=="DontShowBookmark")?
                    Column(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius:BorderRadius.circular(30.0),
                          child:
                          SizedBox(width:MediaQuery.of(context).size.width,
                            child:Card(
                              color:Colors.green[200],
                              child:Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  (SearchTFCtrl.text=="")?AllContentsShownTxtTrans:SearchShownTxtTrans,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Lobster",
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ),),
                          SizedBox(),
                          for(var item in AllContentsList)
                            Container(child:item),

                          
                        
                      ],
                    )
                     :SizedBox(),



                    (ShowBookmarks_FrontEnd=="ShowBookmark" && ContentBookMarkedList.length!=0 )?
                    Column(
                      children: <Widget>[
                        SizedBox(),
                        for(var item in ContentBookMarkedList)
                          Container(child:item),
                      ],
                    ):(ShowBookmarks_FrontEnd=="ShowBookmark" && ContentBookMarkedList.length==0 )?  ClipRRect(
                      borderRadius:BorderRadius.circular(30.0),
                      child:SizedBox(width:MediaQuery.of(context).size.width,
                        child:
                        Card(
                          color:Colors.red[200],
                          child:Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "No Bookmark Found!",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Lobster",
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),):SizedBox(),

      
                    


                    



                    SizedBox(height: 20,),
                    RatingUI(),




                  ]
              
            
          
        
      
        

      ),
    );
  }


}



