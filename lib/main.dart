import 'dart:async';
import 'dart:io' as io;
import 'package:path/path.dart';
import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/3_Text/10_TextShadowRun.dart';
import 'package:flutter_tutorials_and_quizzes/3_Text/14_TextAlignCenterRun.dart';
import 'package:flutter_tutorials_and_quizzes/3_Text/3_TextColorRun.dart';
import 'package:flutter_tutorials_and_quizzes/3_Text/5_TextItalicRun.dart';
import 'package:flutter_tutorials_and_quizzes/3_Text/11_TextFontFamilyRun.dart';
import 'package:flutter_tutorials_and_quizzes/3_Text/12_TextBackgroundColorRun.dart';
import 'package:flutter_tutorials_and_quizzes/50_Flutter_Syntaxe/2_FlutterSyntaxe_CodeAndSourceView_Run.dart';
import 'package:flutter_tutorials_and_quizzes/51_SlidingUpPanel/1_Simple_Sliding_Up_Panel_Run.dart';
import 'package:flutter_tutorials_and_quizzes/5_MainBg/4_MainBgDarkGAppBarRun.dart';
import 'package:flutter_tutorials_and_quizzes/5_MainBg/5_MainBgLightRAppBarRun.dart';
import 'package:flutter_tutorials_and_quizzes/62_Advance_Pdf_Viewer/1_Advance_Pdf_Viewer_Asset.dart';
import 'package:flutter_tutorials_and_quizzes/64_Clippy/4_Clippy_Diagonal.dart';
import 'package:flutter_tutorials_and_quizzes/64_Clippy/6_Buttcheek.dart';
import 'package:flutter_tutorials_and_quizzes/7_Buttons/9_Simple_Outline_Button.dart';
import 'package:flutter_tutorials_and_quizzes/9_Layouts/1_Layout_Col_MainAlign_Center_Run.dart';
import 'package:flutter_tutorials_and_quizzes/Advanced/A1Run.dart';
import 'package:flutter_tutorials_and_quizzes/Backend_3_FireBase/1_FireBase_Auth_Email_FB_Google.dart';
import 'package:flutter_tutorials_and_quizzes/Backend_5_FireBase_Admob/2_FireBase_Admob_Interstitial.dart';
import 'package:flutter_tutorials_and_quizzes/_Components_DetailsList/12_Navigator_CompList.dart';
import 'package:flutter_tutorials_and_quizzes/_Components_DetailsList/Backend_2_PHP_HTTP_CompList.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:url_launcher/url_launcher.dart';
import '0_Quizzes/1_Intro_GenerateQuizzes.dart';
import '0_Quizzes/2_Keywords_GenerateQuizzes.dart';
import '0_Quizzes/4_AppBar_GenerateQuizzes.dart';
import '10_Dialogs/1_Simple_Dialog_Run.dart';
import '10_Dialogs/2_Custumized_Dialog_Run.dart';
import '11_Divider/1_Simple_Divider_Run.dart';
import '11_Divider/2_Divider_Color_Run.dart';
import '11_Divider/3_Divider_WH_Run.dart';
import '12_Navigation/1_Navigator_Pages_Run.dart';
import '12_Navigation/2_Navigator_Links_Run.dart';
import '12_Navigation/3_Navigator_Tel_Run.dart';
import '12_Navigation/4_Navigator_Sms_Run.dart';
import '12_Navigation/5_Navigator_Email_Run.dart';
import '13_SnBar/1_Simple_SnackBar_Run.dart';
import '13_SnBar/2_Simple_Red_SnackBar_Run.dart';
import '13_SnBar/3_SnackBar_Duration_Run.dart';
import '13_SnBar/4_SnackBar_Shape_Run.dart';
import '13_SnBar/5_SnackBar_Action_Run.dart';
import '14_FlushBar/1_Simple_FlushBar_Run.dart';
import '14_FlushBar/2_FlushBar_Red_BackgroundColor_Run.dart';
import '14_FlushBar/3_FlushBar_Yellow_Text_Run.dart';
import '14_FlushBar/4_FlushBar_Icon_Run.dart';
import '14_FlushBar/5_FlushBar_Main_Action_Button_Run.dart';
import '14_FlushBar/6_FlushBar_Position_Run.dart';
import '14_FlushBar/7_FlushBar_Duration_Run.dart';
import '15_Card/1_Simple_Card_Run.dart';
import '15_Card/2_Card_WH_Run.dart';
import '15_Card/3_Card_Bg_Run.dart';
import '15_Card/4_Card_Cust_Run.dart';
import '15_Card/5_Card_Elevator_Run.dart';
import '16_TextOverflow/1_TxtF_ClipRun.dart';
import '16_TextOverflow/2_TxtF_EllipsisRun.dart';
import '16_TextOverflow/3_TxtF_FadeRun.dart';
import '16_TextOverflow/4_TxtF_VisibleRun.dart';
import '17_GestureDetector/1_GestImg_Run.dart';
import '17_GestureDetector/2_GestAppBarTitleRun.dart';
import '17_GestureDetector/3_Tap_Coords_Run.dart';
import '18_ListView/1_ListView_Horizontal_Run.dart';
import '18_ListView/3_ListView_ScrollTo.dart';
import '18_ListView/2_ListView_Vertical_Run.dart';
import '19_TextField/1_TextField_Simple_Run.dart';
import '19_TextField/2_TextField_NoBorder_Run.dart';
import '19_TextField/3_TextField_MultiLine_Run.dart';
import '19_TextField/4_TextField_Icon_Run.dart';
import '19_TextField/5_TextField_Style_Run.dart';
import '19_TextField/6_TextField_Password_Run.dart';
import '19_TextField/8_TextForm_Form_Validation_Run.dart';
import '19_TextField/7_TextField_Login_Form_Run.dart';
import '20_Footer/1_Simple_Footer_Run.dart';
import '20_Footer/2_Bottom_NavBar_Run.dart';
import '21_ImageSlider/10_Dots_Slider_Run.dart';
import '21_ImageSlider/1_IS_InitialPage_Run.dart';
import '21_ImageSlider/2_IS_EnlargeCenterPage_Run.dart';
import '21_ImageSlider/3_IS_AutoPlay_Run.dart';
import '21_ImageSlider/4_IS_Enable_Infinite_Scroll_Run.dart';
import '21_ImageSlider/5_IS_AutoPlayInterval_Run.dart';
import '21_ImageSlider/6_IS_Pause_AutoPlay_OnTouch_Run.dart';
import '21_ImageSlider/7_IS_ScrollDirection_Run.dart';
import '21_ImageSlider/8_Slider_WIth_Button_Run.dart';
import '21_ImageSlider/9_Slider_With_Caption_Run.dart';
import '22_Notification/1_Notification_Without_Sound_Run.dart';
import '22_Notification/2_Notification_Default_Sound_Run.dart';
import '22_Notification/3_Notification_Custom_Sound_Run.dart';
import '22_Notification/4_Notification_Custom_Icon_Run.dart';
import '23_Switch/1_Simple_Switch_Run.dart';
import '23_Switch/2_Switch_AppBar_Theme_Run.dart';
import '23_Switch/3_Switch_Light_Dark_Mode_Run.dart';
import '24_Audio/1_Audio_Button_Sound_Run.dart';
import '24_Audio/2_Audio_Music_Player_Run.dart';
import '25_VideoPlayer/1_Video_From_File_Run.dart';
import '25_VideoPlayer/2_Video_From_Url_Run.dart';
import '26_SimpleLoader/1_SLD1_Run.dart';
import '26_SimpleLoader/2_SLD2_Run.dart';
import '28_Animation/10_Animation_ElasticIn_Run.dart';
import '28_Animation/11_Animation_BounceIn_Run.dart';
import '28_Animation/1_Animation_Opacity_Run.dart';
import '28_Animation/2_Animation_Fade_Run.dart';
import '28_Animation/3_Animation_Tween_LtR_Run.dart';
import '28_Animation/4_Animation_Tween_RtL_Run.dart';
import '28_Animation/5_Animation_Rotate_Run.dart';
import '28_Animation/6_Animation_Matrix4_RotZ_Run.dart';
import '28_Animation/7_Animation_Matrix4_RotY_Run.dart';
import '28_Animation/8_Animation_Rotation_Transition_Run.dart';
import '28_Animation/9_Animation_ElasticOut_Run.dart';
import '29_Radio/1_Simple_Radio_Run.dart';
import '29_Radio/2_Radio_AppBar_BackgroungColor_Changer_Run.dart';
import '29_Radio/3_Radio_MainBg_Theme_Changer_Run.dart';
import '30_CheckBox/1_Simple_CheckBox_Run.dart';
import '30_CheckBox/2_CheckBox_Tile_Run.dart';
import '31_Chip/1_SimpleChip_Run.dart';
import '31_Chip/2_Chip_OnDeleted_Run.dart';
import '32_TabBar/1_TopTabBar_Run.dart';
import '32_TabBar/2_BottomTabBar_Run.dart';
import '33_PageSelector/1_PageSelector_Simple_Run.dart';
import '33_PageSelector/2_PageSelector_Btn_Run.dart';
import '34_Flex/1_Image_Flex_Run.dart';
import '34_Flex/2_Button_Flex_Run.dart';
import '34_Flex/3_Advanced_Flex_Run.dart';
import '35_SelectComboBox/1_SelectComboBox_Run.dart';
import '36_ExpandableList/1_Simple_Expandable_List_Run.dart';
import '36_ExpandableList/2_Expandable_List_Trail_Run.dart';
import '36_ExpandableList/3_Expandable_List_BackColor_Run.dart';
import '36_ExpandableList/4_Expandable_List_With_Card_And_Icon_Run.dart';
import '36_ExpandableList/5_Expandable_List_Customized.dart';
import '36_ExpandableList/6_Expandable_List_Sound_Run.dart';
import '36_ExpandableList/7_Expandable_List_Anim_Run.dart';
import '37_Slider/1_SimpleSliderRun.dart';
import '37_Slider/2_SliderColorRun.dart';
import '37_Slider/3_SliderMinMaxDivRun.dart';
import '38_Drawer/1_Drawer_Left_Run.dart';
import '38_Drawer/2_Drawer_Right_Run.dart';
import '39_SplashScreenLoading/MainSplashScreenRun.dart';
import '3_Text/15_TextAlignLeftRun.dart';
import '3_Text/16_TextAlignRightRun.dart';
import '3_Text/7_TextLineTroughRun.dart';
import '3_Text/8_TextOverlineRun.dart';
import '3_Text/9_TextFontSizeRun.dart';
import '0_Quizzes/3_Text_GenerateQuizzes.dart';
import '3_Text/13_RichTextRun.dart';
import '3_Text/4_TextBoldRun.dart';
import '3_Text/1_TextDirection_ltr_Run.dart';
import '3_Text/2_TextDirection_rtl_Run.dart';
import '3_Text/6_TextUnderlineRun.dart';

import '40_Admob/2_AdmobBanner_Run.dart';
import '40_Admob/3_AdmobInterstitial_Run.dart';
import '41_FlipCard/2_FlipCardHor_Run.dart';
import '41_FlipCard/3_FlipCardVert_Run.dart';
import '42_FlipView/2_SimpleFlipView.dart';
import '43_Stepper/2_StepperHor_Run.dart';
import '43_Stepper/3_StepperVer_Run.dart';
import '44_BottomSheet/SimpleBottomSheetRun.dart';
import '45_SmoothPageIndicator/2_SPI_Worm_Run.dart';
import '45_SmoothPageIndicator/3_SPI_ExpDots_Run.dart';
import '45_SmoothPageIndicator/4_SPI_JumpDots_Run.dart';
import '45_SmoothPageIndicator/5_SPI_ScrollDots_Run.dart';
import '45_SmoothPageIndicator/6_SPI_Scale_Run.dart';
import '45_SmoothPageIndicator/7_SPI_Slide_Run.dart';
import '46_Expandable/Simple_Expandable_Run.dart';
import '47_Marquee/1_SimpleMarquee_Run.dart';
import '47_Marquee/2_Marquee_ScrollAxis_Run.dart';
import '47_Marquee/3_Marquee_CrossAxisAlignement_Run.dart';
import '47_Marquee/4_Marquee_PauseAfterRound_Run.dart';
import '47_Marquee/5_Marquee_AccelerationDuration_Run.dart';
import '48_ContainerWaves/ContainerWaves_Simple_Run.dart';
import '49_RouteTransition/1_RouteTransition_SlideRight.dart';
import '49_RouteTransition/2_RouteTransition_SlideLeft.dart';
import '49_RouteTransition/3_RouteTransition_SlideUp.dart';
import '49_RouteTransition/4_RouteTransition_SlideDown.dart';
import '49_RouteTransition/5_RouteTransition_Scale.dart';
import '49_RouteTransition/6_RouteTransition_Rotate.dart';
import '49_RouteTransition/7_RouteTransition_Size.dart';
import '49_RouteTransition/8_RouteTransition_Fade.dart';
import '4_AppBar/7_AppBarDoubleSideIconsRun.dart';
import '4_AppBar/4_AppBarGradient_Run.dart';
import '4_AppBar/5_AppBarGreyBgTextCenteredIndigoLeftIconRun.dart';
import '4_AppBar/6_AppBarLeftRightIconRun.dart';
import '4_AppBar/2_SimpleAppBarDarkRun.dart';
import '4_AppBar/1_SimpleAppBarLightRun.dart';
import '4_AppBar/3_SimpleAppBar_YellowBg_RedColorRun.dart';
import '50_Flutter_Syntaxe/1_FlutterSyntaxe_CodeView_Run.dart';
import '52_Popup_Menu_Button/1_Simple_AppBar_Popup_Menu_Button.dart';
import '52_Popup_Menu_Button/2_ListTile_Popup_Menu_Button.dart';
import '53_Hero_Animation/1_Simple_Hero.dart';
import '53_Hero_Animation/2_Advanced_Hero.dart';
import '54_AvatarGlow/1_AvatarGlow_1Glow.dart';
import '54_AvatarGlow/2_AvatarGlow_2Glow.dart';
import '54_AvatarGlow/3_AvatarGlow_More.dart';
import '55_DataTable/1_DataTable_Simple.dart';
import '55_DataTable/2_DataTable_Sort.dart';
import '55_DataTable/3_DataTable_Insert.dart';
import '55_DataTable/4_DataTable_Update.dart';
import '55_DataTable/5_DataTable_Delete.dart';
import '55_DataTable/6_DataTable_DeleteAll.dart';
import '56_WebView/1_WebView_Simple.dart';
import '57_BackDrop/1_BackDrop_Left.dart';
import '57_BackDrop/2_BackDrop_Right.dart';
import '57_BackDrop/3_BackDrop_Custom.dart';
import '59_TinderSwipe/1_Tinder_Swipe.dart';
import '5_MainBg/1_MainBgCustomColorRun.dart';
import '5_MainBg/2_MainBgGradientRun.dart';
import '5_MainBg/3_MainBgGradientAppBarRun.dart';
import '60_ImagePicker/ImagePicker.dart';
import '61_MultipleImagePicker/MultipleImagePicker.dart';
import '62_Advance_Pdf_Viewer/2_Advance_Pdf_Viewer_Url.dart';
import '63_Google_NavBar/1_Google_NavBar.dart';
import '64_Clippy/1_Clippy_Triangle.dart';
import '64_Clippy/2_Clippy_Chevron.dart';
import '64_Clippy/3_Clippy_Arc.dart';
import '64_Clippy/5_Clippy_Bevel.dart';
import '65_Water_Drop/1_Water_Drop.dart';
import '6_Image/ImgInsImgRun.dart';
import '6_Image/ImgNetworkRun.dart';
import '6_Image/ImgWidthHeightRun.dart';
import '7_Buttons/10_Style_Outline_Button.dart';
import '7_Buttons/11_Round_Outline_Button.dart';
import '7_Buttons/1_BtnSimpleRaisedBtnRun.dart';
import '7_Buttons/2_BtnSimpleRaisedBtnFullWidthRun.dart';
import '7_Buttons/3_BtnSimpleRaisedRoundedBtnRun.dart';
import '7_Buttons/4_BtnRaisedRoundedRedBgWTxtRun.dart';
import '7_Buttons/5_BtnRaisedRoundedGradientRun.dart';
import '7_Buttons/6_BtnRoundedIconButtonRun.dart';
import '7_Buttons/7_BtnSimpleFlatBtnRun.dart';
import '7_Buttons/8_BtnFlatIconGreyBgBtnRun.dart';
import '8_Toast/1_ToastTopRun.dart';
import '8_Toast/2_ToastCenterRun.dart';
import '8_Toast/3_ToastBottomRun.dart';
import '9_Layouts/2_Layout_Col_MainAlign_Start_Run.dart';
import '9_Layouts/3_Layout_Col_MainAlign_End_Run.dart';
import '9_Layouts/4_Layout_Row_MainAlign_Center_Run.dart';
import '9_Layouts/7_Contact_List_Run.dart';
import '9_Layouts/6_Layout_Row_MainAlign_End_Run.dart';
import '9_Layouts/5_Layout_Row_MainAlign_Start_Run.dart';
import 'Advanced/A2Run.dart';
import 'Advanced/A3Run.dart';
import 'Advanced/A4Run.dart';
import 'Backend_1_SQFlite/1_SQFlite_Insert.dart';
import 'Backend_1_SQFlite/2_SQFlite_Update.dart';
import 'Backend_1_SQFlite/3_SQFlite_Delete.dart';
import 'Backend_1_SQFlite/4_SQFlite_DeleteAll.dart';
import 'Backend_2_PHP_Http/1_PHP_GetData.dart';
import 'Backend_2_PHP_Http/2_PHP_InsertData.dart';
import 'Backend_2_PHP_Http/3_PHP_Update.dart';
import 'Backend_2_PHP_Http/4_PHP_Delete.dart';
import 'Backend_4_FireStore/1_FireStore.dart';
import 'Backend_5_FireBase_Admob/1_FireBase_Admob_Banner.dart';
import 'LoadFireBaseAdmob.dart';
import 'Page_BackEnd.dart';
import 'SettingPage.dart';
import 'SoonAlert.dart';
import 'UpdatePage.dart';
import 'Updated.dart';
import '_Components_DetailsList/100_Advanced_CompList.dart';
import '_Components_DetailsList/10_Dialogs_CompList.dart';
import '_Components_DetailsList/11_Divider_CompList.dart';
import '_Components_DetailsList/13_SnackBar_CompList.dart';
import '_Components_DetailsList/14_FlushBar_CompList.dart';
import '_Components_DetailsList/15_Card_CompList.dart';
import '_Components_DetailsList/16_TextOverflow_CompList.dart';
import '_Components_DetailsList/18_ListView_CompList.dart';
import '_Components_DetailsList/19_TextField_CompList.dart';
import '_Components_DetailsList/20_Footer_AppBar_CompList.dart';
import '_Components_DetailsList/21_Image_Slider_CompList.dart';
import '_Components_DetailsList/22_Notification_CompList.dart';
import '_Components_DetailsList/23_Switch_CompList.dart';
import '_Components_DetailsList/24_Audio_CompList.dart';
import '_Components_DetailsList/26_Simple_Loader_CompList.dart';
import '_Components_DetailsList/27_Advanced_Loader_CompList.dart';
import '_Components_DetailsList/2_Keywords_CompList.dart';
import '_Components_DetailsList/4_Header_AppBar_CompList.dart';
import '_Components_DetailsList/51_SlidingUpPanel_CompList.dart';
import '_Components_DetailsList/52_PopupMenuButton_CompList.dart';
import '_Components_DetailsList/53_Hero_CompList.dart';
import '_Components_DetailsList/54_AvatarGlow_CompList.dart';
import '_Components_DetailsList/55_DataTable_CompList.dart';
import '_Components_DetailsList/56_WebView_CompList.dart';
import '_Components_DetailsList/57_BackDrop_CompList.dart';
import '_Components_DetailsList/58_Animated_Icons_CompList.dart';
import '_Components_DetailsList/59_TinderSwipe_CompList.dart';
import '_Components_DetailsList/5_Main_Page_Bg_Bg_Color_CompList.dart';
import '_Components_DetailsList/1_Introduction_CompList.dart';
import '_Components_DetailsList/60_ImagePicker_CompList.dart';
import '_Components_DetailsList/61_MultipleImagePicker_CompList.dart';
import '_Components_DetailsList/62_AdvancePdfViewer_CompList.dart';
import '_Components_DetailsList/63_GoogleNavBar_CompList.dart';
import '_Components_DetailsList/64_Clippy_CompList.dart';
import '_Components_DetailsList/65_WaterDrop_CompList.dart';
import '_Components_DetailsList/6_Image_CompList.dart';
import '_Components_DetailsList/7_Button_CompList.dart';
import '_Components_DetailsList/8_Toast_CompList.dart';
import '_Components_DetailsList/9_Layout_CompList.dart';
import 'MainSplashScreen.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import '_Components_DetailsList/3_Text_CompList.dart';
import '_Components_DetailsList/28_Animation_CompList.dart';
import '_Components_DetailsList/25_Video_CompList.dart';
import '_Components_DetailsList/29_Radio_CompList.dart';
import '_Components_DetailsList/30_CheckBox_CompList.dart';
import '_Components_DetailsList/31_Chip_CompList.dart';
import '_Components_DetailsList/32_TabBar_CompList.dart';
import '_Components_DetailsList/33_PageSelector_CompList.dart';
import '_Components_DetailsList/34_Flex_CompList.dart';
import '_Components_DetailsList/35_Select_Combo_CompList.dart';
import '_Components_DetailsList/36_Expandable_List_CompList.dart';
import '_Components_DetailsList/37_Slider_CompList.dart';
import '_Components_DetailsList/38_Drawer_CompList.dart';
import '_Components_DetailsList/39_MainSplashScreen_CompList.dart';
import '_Components_DetailsList/40_Admob_CompList.dart';
import '_Components_DetailsList/41_FlipCard_CompList.dart';
import '_Components_DetailsList/42_FlipView_CompList.dart';
import '_Components_DetailsList/43_Stepper_CompList.dart';
import '_Components_DetailsList/44_BottomSheet_CompList.dart';
import '_Components_DetailsList/45_SPI_CompList.dart';
import '_Components_DetailsList/17_GestureDetector_CompList.dart';
import '_Components_DetailsList/50_DartSyntaxeHighligh_CompList.dart';
import '_Components_DetailsList/49_RouteTransition_CompList.dart';
import '_Components_DetailsList/48_ContainerWaves_CompList.dart';
import '_Components_DetailsList/47_Marquee_CompList.dart';
import '_Components_DetailsList/46_Expandable_CompList.dart';
import '_Comp_Courses/Cmp_Code_Page.dart';
import '_Comp_Courses/Cmp_Intro_Page.dart';
import 'Page_FrontEnd.dart';
import '_Components_DetailsList/Backend_1_SQLFlite_CompList.dart';
import '_Components_DetailsList/Backend_3_FireBase_CompList.dart';
import '_Components_DetailsList/Backend_4_FireStore_CompList.dart';
import '_Components_DetailsList/Backend_5_FireBase_Admob_CompList.dart';


AudioPlayer advancedPlayer;
AudioCache audioCache;
bool RandQuizz;
int loadAds=0;
Color Clr = Colors.blue;
PageController pageController;
var PopupBool;
AdmobInterstitial admobInterstitial;

String AddAppID="ca-app-pub-1650436277039127~3083637146";
String AddBanID="ca-app-pub-3940256099942544/6300978111";
String AddIntID="ca-app-pub-3940256099942544/1033173712";


void main() {
  runApp(MainSplashScreen());
}

class AppSound {
  int AppSoundID;
  String AppSoundBool;

  AppSound(this.AppSoundID, this.AppSoundBool);

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'AppSoundID'  : AppSoundID,
      'AppSoundBool': AppSoundBool,
    };
    return map;
  }

  AppSound.fromMap(Map<String, dynamic> map) {
    AppSoundID   = map['AppSoundID'];
    AppSoundBool = map['AppSoundBool'];
  }
}


class DBAppSound {
  static Database _dbAppSound;
  static const String DB_NAME      = "AppSound.db";
  static const String AppSoundID   = 'AppSoundID';
  static const String AppSoundBool = 'AppSoundBool';
  static const String TABLE        = 'AppSound';

  Future<Database> get db async {
    if (_dbAppSound != null) {
      return _dbAppSound;
    }
    _dbAppSound = await initDbAppSound();
    return _dbAppSound;
  }

  initDbAppSound() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, DB_NAME);
    var db = await openDatabase(path, version: 1, onCreate: _onCreate);
    return db;
  }

  _onCreate(Database db, int version) async {
    await db.execute("CREATE TABLE $TABLE ($AppSoundID INTEGER PRIMARY KEY, $AppSoundBool TEXT)");
    AppSound AS=new AppSound(null,"NotMuted");
    save(AS);
  }

  Future<AppSound> save(AppSound AS) async {
    var dbAppSound = await db;
    AS.AppSoundID = await dbAppSound.insert(TABLE, AS.toMap());
    return AS;
  }

  Future<String> getAppSound() async {
    var dbAppSound = await db;
    List<Map> maps = await dbAppSound.rawQuery("SELECT * FROM $TABLE");
    List<AppSound> AppSoundArr = [];
    if (maps.length > 0) {
      for (int i = 0; i < maps.length; i++) {
        AppSoundRetrieve=AppSound.fromMap(maps[i]).AppSoundBool;
        break;
      }
    }
  }

  Future<List<AppSound>> DelAllAppSound() async {
    var dbAppSound = await db;
    List<Map> maps = await dbAppSound.rawQuery("DELETE FROM $TABLE");
    List<AppSound> AppSoundArr = [];
    return AppSoundArr;
  }

  Future close() async {
    var dbCourse = await db;
    dbCourse.close();
  }

}



class Main extends StatefulWidget {
  @override
  _MainState createState() => new _MainState();
}

class _MainState extends State<Main> with AutomaticKeepAliveClientMixin {
  int _page = 0;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();

    var dbAppSound = DBAppSound();
    dbAppSound.getAppSound();

    pageController = new PageController();
    Clr=Colors.blue;

    MyBanner?.dispose();
    bannerAdTutorial?.dispose();
    initPlayer();

  }




  void initPlayer(){
    advancedPlayer = new AudioPlayer();
    audioCache = new AudioCache(fixedPlayer: advancedPlayer);
  }

  void PlayTapSound() async{
    if(AppSoundRetrieve=="NotMuted") {
      audioCache.play('Music/Tap.mp3');
    }
  }

  void PlayLuncherSound() async{
      audioCache.play('Music/Luncher.mp3');
  }

  AdmobInterstitial createAdvert(){
    return AdmobInterstitial(
      adUnitId:"ca-app-pub-1650436277039127/3159018130",
      listener: (AdmobAdEvent event , Map<String,dynamic > args){
        if(event == AdmobAdEvent.loaded){
          print("--->Interstitial Loaded");
          admobInterstitial.show();
        }
        else  if(event == AdmobAdEvent.closed){
          admobInterstitial.dispose();
        }
        else  if(event == AdmobAdEvent.failedToLoad){
          print("--->Interstitial Failed To Loaded");
          admobInterstitial.load();
        }
      },
    );
  }





  void navigationTapped(int page) {
    pageController.animateToPage(
        page,
        duration:const Duration(milliseconds: 600),
        curve: Curves.ease
    );
  }

  void onPageChanged(int page) {
    setState(() {
      if(page==0){
        Clr=Colors.blue;
      }
      else if(page==1){
        Clr=Colors.lightBlue;
      }
      else if(page==2){
        Clr=Colors.indigo;
      }
      this._page = page;
    });
  }

  @override
  Widget build(BuildContext context) {

    Timer.run((){
      if(PopupBool!=false){
        PlayLuncherSound();

        showGeneralDialog(
            context: context,
            barrierDismissible:true,
            barrierLabel:'',
            transitionDuration:Duration(seconds:1),
            transitionBuilder: (BuildContext context,Animation<double> a1,Animation<double> a2,Widget child)=>SlideTransition(
              position:Tween<Offset>(
                begin:const Offset(-1,0),
                end:Offset.zero,
              ).animate(a1),
              child:
              Dialog (
                shape: RoundedRectangleBorder (
                  borderRadius: BorderRadius.circular (8),
                ),
                child: Stack (
                  children: <Widget>[
                    Container (
                      decoration: BoxDecoration (
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          borderRadius:
                          BorderRadius.circular (4),
                          boxShadow: [
                            BoxShadow (
                              color: Colors.black,
                              blurRadius: 10.0,
                              offset: const Offset(0.0, 10.0),
                            ),
                          ]),
                      child: Column (
                        crossAxisAlignment:CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          SizedBox (height:6.0),
                          ListTile(
                            leading:Image.asset("Images/160x160_Flutter.png",width:30,height:30,),
                            title:Text (
                              "Last Update:",
                              textAlign: TextAlign.left,
                              style: TextStyle (
                                color: Colors.teal,
                                fontSize: 15.0,
                              ),
                            ),
                            trailing:IconButton(
                              icon: Icon(Icons.close),
                              color: Colors.black,
                              onPressed: () {
                                PlayTapSound();
                                Navigator.of (context, rootNavigator: true).pop ('dialog');
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:5.0,right:5.0),
                            child: UpdatesUI(),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right:8.0,left:8.0,top:2.0,bottom:2.0),
                            child: SizedBox(
                              width:double.infinity,
                              child:
                              RaisedButton (
                                color: Colors.green,
                                shape: RoundedRectangleBorder (
                                    borderRadius: BorderRadius.circular (30.0)
                                ),
                                child: Padding (
                                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                                    child:
                                    Row (
                                      children: <Widget>[
                                        Text (
                                          "Rate 5 ",
                                          maxLines: 1,
                                          style:TextStyle(
                                            fontSize:12,
                                          ),
                                        ),
                                        Icon (Icons.star),
                                        Icon (Icons.star),
                                        Icon (Icons.star),
                                        Icon (Icons.star),
                                        Icon (Icons.star),
                                        Text (
                                          " Now!",
                                          maxLines: 1,
                                          style:TextStyle(
                                            fontSize:12,
                                          ),
                                        ),
                                      ],
                                    )
                                ),
                                onPressed: _launchUrl,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right:8.0,left:8.0,top:2.0,bottom:2.0),
                            child: SizedBox(
                              width:double.infinity,
                              child:RaisedButton (
                                color: Colors.redAccent,
                                shape: RoundedRectangleBorder (
                                    borderRadius: BorderRadius.circular (30.0)
                                ),
                                child: Padding (
                                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                                    child:
                                    Row(
                                      children: <Widget>[
                                        Text (
                                          "Maybe Later",
                                          textAlign:TextAlign.center,
                                          maxLines: 1,
                                          style:TextStyle(
                                            fontSize:12,
                                          ),
                                        ),
                                        Icon(Icons.threesixty)
                                      ],
                                    )
                                ),
                                onPressed: () {
                                  PlayTapSound();
                                  Navigator.of (context, rootNavigator: true).pop ('dialog');
                                },
                              ),
                            ),
                          ),
                          SizedBox (height: 3.0),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            pageBuilder: (context,anim1,anim2){
              return Transform.rotate(
                  angle:anim1.value,
                  child:
                  Container(
                      child:
                      AlertDialog(
                        title:Text("Hi"),
                      )
                  )

              );

            }
        );

        PopupBool=false;
      }
    });





    Admob.initialize("ca-app-pub-1650436277039127~3083637146");
    return MaterialApp(
      title: "Flutter Tutorials & Quizzes",
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          backgroundColor: Clr,
          title:Text(
            "Flutter: Tutorials & Quizzes",
            style: TextStyle(
              fontFamily: "Crimson Text",
            ),
          )
        ),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              Container(
                color:Colors.teal,
                width:double.infinity,
                height:200,
                child:Center(
                  child:Column(
                    children: <Widget>[
                      Image.asset("Images/160x160_Flutter.png",),
                      Text(
                        "Flutter: Tutorials & Quizzes",
                        style: TextStyle(
                          fontFamily: "Crimson Text",
                          fontSize:21,
                          color:Colors.white,
                        ),
                      ),
                    ],
                  )
                )
              ),
              Divider(),
              new ListTile(
                leading: new Icon(Icons.settings),
                title: new Text("Settings"),
                trailing: new Icon(Icons.arrow_forward_ios),
                onTap:(){
                  if(AppSoundRetrieve=="NotMuted") {
                    PlayTapSound();
                  }
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>SettingPage()));
                },
              ),
              Divider(),
            ],
          ),
        ),
        body: new PageView(
          children: [
            FrontEndPage(),
            BackEndPage(),
            UpdatePage(),
          ],
          onPageChanged: onPageChanged,
          controller: pageController,
        ),
        bottomNavigationBar: new BottomNavigationBar(
          backgroundColor: Clr,
          items: [
            new BottomNavigationBarItem(
                icon: new Icon(
                  Icons.flip_to_front,
                  color:Colors.white,
                ),
                title: new Text(
                  "FrontEnd",
                  style: new TextStyle(
                    color:Colors.white,
                  ),
                )),
            new BottomNavigationBarItem(
                icon: new Icon(
                  Icons.flip_to_back,
                  color: Colors.white,
                ),
                title: new Text(
                  "Backend",
                  style: new TextStyle(
                    color: Colors.white,
                  ),
                )),
            new BottomNavigationBarItem(
                icon: new Icon(
                  Icons.update,
                  color: Colors.white,
                ),
                title: new Text(
                  "Update",
                  style: new TextStyle(
                    color: Colors.white,
                  ),
                )),
          ],
          onTap: navigationTapped,
          currentIndex: _page,
        ),
      ),


      routes: <String, WidgetBuilder>{
        "/Main": (BuildContext context)                           => Main(),

        "/Intro_Flutter": (BuildContext context)                  => CmpIntroPage(
          Title:"Flutter Intro",
          BackRoute:"/Main",
          NextRoute:"/Intro_Dart",
          ItemList:FlutterIntroCompList,
        ),


        "/Intro_Dart": (BuildContext context)                     => CmpIntroPage(
          Title:"Dart Intro",
          BackRoute:"/Intro_Flutter",
          NextRoute:"/Intro_Use",
          ItemList:DartIntroCompList,
        ),


        "/Intro_Use": (BuildContext context)                      => CmpIntroPage(
          Title:"Flutter Use",
          BackRoute:"/Intro_Dart",
          NextRoute:"/Keywords_Widget",
          ItemList:FlutterUseIntroCompList,
        ),


        "/Keywords_Widget": (BuildContext context)                => CmpIntroPage(
          Title:"Widget Intro",
          BackRoute:"/Main",
          NextRoute:"/Keywords_Stateless",
          ItemList:WidgetKeywordsCompList,
        ),


        "/Keywords_Stateless": (BuildContext context)             => CmpIntroPage(
          Title:"Stateless Widget",
          BackRoute:"/Keywords_Widget",
          NextRoute:"/Keywords_Statefull",
          ItemList:StatelessKeywordsCompList,
        ),


        "/Keywords_Statefull": (BuildContext context)             => CmpIntroPage(
          Title:"Statefull Widget",
          BackRoute:"/Keywords_Stateless",
          NextRoute:"/Keywords_Navigator",
          ItemList:StatefullKeywordsCompList,
        ),


        "/Keywords_Navigator": (BuildContext context)             => CmpIntroPage(
          Title:"Navigator",
          BackRoute:"/Keywords_Statefull",
          NextRoute:"/Keywords_Scaffold",
          ItemList:NavigatorKeywordsCompList,
        ),


        "/Keywords_Scaffold": (BuildContext context)              => CmpIntroPage(
          Title:"Scaffold",
          BackRoute:"/Keywords_Navigator",
          NextRoute:"/Keywords_AppBar",
          ItemList:ScaffoldKeywordsCompList,
        ),


        "/Keywords_AppBar": (BuildContext context)                => CmpIntroPage(
          Title:"AppBar",
          BackRoute:"/Keywords_Scaffold",
          NextRoute:"/Keywords_MaterialApp",
          ItemList:AppBarKeywordsCompList,
        ),


        "/Keywords_MaterialApp": (BuildContext context)           => CmpIntroPage(
          Title:"Material App",
          BackRoute:"/Keywords_AppBar",
          NextRoute:"/Text_ltr",
          ItemList:MaterialAppKeywordsCompList,
        ),

        //-----------------------------------------------------------------------------
        //-----------------------------------------------------------------------------

        "/Text_ltr": (BuildContext context)                       => CmpCodePage(
          Title:"TextDirection ltr",
          BackRoute:"/Keywords_MaterialApp",
          NextRoute:"/Text_rtl",
          ItemList:TextDirection_ltr_list,
          CodeRoute:"lib/3_Text/1_TextDirection_ltr_Run.dart",
          TabIcon:Icon(Icons.format_textdirection_l_to_r),
          ToDo:"We Need To Write A Simple Text That Flows From Left To Right And Appear in The Center Of The Body",
          TxtExplanation:TextDirection_ltr_Explanation,
          RunCodeRoute:new TextDirection_ltr_Run(),
        ),

        //-----------------------------------------------------------------------------
        //-----------------------------------------------------------------------------


        "/Text_rtl": (BuildContext context)                       => CmpCodePage(
          Title:"TextDirection rtl",
          BackRoute:"/Text_ltr",
          NextRoute:"/Text_Color",
          ItemList:TextDirection_rtl_list,
          CodeRoute:"lib/3_Text/2_TextDirection_rtl_Run.dart",
          TabIcon:Icon(Icons.format_textdirection_r_to_l),
          ToDo:"We Need To Write A Simple Text That Flows From Right To Left And Appear in The Center Of The Body",
          TxtExplanation:TextDirection_rtl_Explanation,
          RunCodeRoute:new TextDirection_rtl_Run(),
        ),


        //-----------------------------------------------------------------------------
        //-----------------------------------------------------------------------------


        "/Text_Color": (BuildContext context)                     => CmpCodePage(
          Title:"Text Color",
          BackRoute:"/Text_rtl",
          NextRoute:"/Text_Bold",
          ItemList:TextColor_list,
          CodeRoute:"lib/3_Text/3_TextColorRun.dart",
          TabIcon:Icon(Icons.color_lens),
          ToDo:"We Need To Write A Simple Red Text That Appear in The Center Of The Body",
          TxtExplanation:TextColor_Explanation,
          RunCodeRoute:new TextColorRun(),
        ),

        //-----------------------------------------------------------------------------
        //-----------------------------------------------------------------------------


        "/Text_Bold": (BuildContext context)                      => CmpCodePage(
          Title:"Bold Text",
          BackRoute:"/Text_Color",
          NextRoute:"/Text_Italic",
          ItemList:TextBold_list,
          CodeRoute:"lib/3_Text/4_TextBoldRun.dart",
          TabIcon:Icon(Icons.format_bold),
          ToDo:"We Need To Write A Simple Bold Text That Appear in The Center Of The Body",
          TxtExplanation:TextBold_Explanation,
          RunCodeRoute:new TextBoldRun(),
        ),

        //-----------------------------------------------------------------------------
        //-----------------------------------------------------------------------------


        "/Text_Italic": (BuildContext context)                    => CmpCodePage(
          Title:"Italic Text",
          BackRoute:"/Text_Bold",
          NextRoute:"/Text_Underline",
          ItemList:TextItalic_list,
          CodeRoute:"lib/3_Text/5_TextItalicRun.dart",
          TabIcon:Icon(Icons.format_italic),
          ToDo:"We Need To Write A Simple Italic Text That Appear in The Center Of The Body",
          TxtExplanation:TextItalic_Explanation,
          RunCodeRoute:new TextItalicRun(),
        ),

        //-----------------------------------------------------------------------------
        //-----------------------------------------------------------------------------


        "/Text_Underline": (BuildContext context)                 => CmpCodePage(
          Title:"Underline Text",
          BackRoute:"/Text_Italic",
          NextRoute:"/Text_LineThrough",
          ItemList:TextUnderline_list,
          CodeRoute:"lib/3_Text/6_TextUnderlineRun.dart",
          TabIcon:Icon(Icons.format_underlined),
          ToDo:"We Need To Write A Simple Underline Text That Appear in The Center Of The Body",
          TxtExplanation:TextUnderline_Explanation,
          RunCodeRoute:new TextUnderlineRun(),
        ),

        //-----------------------------------------------------------------------------
        //-----------------------------------------------------------------------------


        "/Text_LineThrough": (BuildContext context)               => CmpCodePage(
          Title:"Text Line Through",
          BackRoute:"/Text_Underline",
          NextRoute:"/Text_OverLine",
          ItemList:TextLineThrough_list,
          CodeRoute:"lib/3_Text/7_TextLineTroughRun.dart",
          TabIcon:Icon(Icons.line_weight),
          ToDo:"We Need To Write A Simple Line Through Text That Appear in The Center Of The Body",
          TxtExplanation:TextLineThrough_Explanation,
          RunCodeRoute:new TextThroughRun(),
        ),


        //-----------------------------------------------------------------------------
        //-----------------------------------------------------------------------------


        "/Text_OverLine": (BuildContext context)                  => CmpCodePage(
          Title:"Text OverLine",
          BackRoute:"/Text_LineThrough",
          NextRoute:"/Text_FontSize",
          ItemList:TextOverLine_list,
          CodeRoute:"lib/3_Text/8_TextOverlineRun.dart",
          TabIcon:Icon(Icons.line_weight),
          ToDo:"We Need To Write A Simple Overline Text That Appear in The Center Of The Body",
          TxtExplanation:TextOverLine_Explanation,
          RunCodeRoute:new TextOverlineRun(),
        ),


        //-----------------------------------------------------------------------------
        //-----------------------------------------------------------------------------

        "/Text_FontSize": (BuildContext context)                  => CmpCodePage(
          Title:"Text Font Size",
          BackRoute:"/Text_OverLine",
          NextRoute:"/Text_Shadow",
          ItemList:TextFontSize_list,
          CodeRoute:"lib/3_Text/9_TextFontSizeRun.dart",
          TabIcon:Icon(Icons.text_fields),
          ToDo:"We Need To Write A Simple Text With 20 As a Size That Appear in The Center Of The Body",
          TxtExplanation:TextFontSize_Explanation,
          RunCodeRoute:new TextFontSizeRun(),
        ),

        //-----------------------------------------------------------------------------
        //-----------------------------------------------------------------------------


        "/Text_Shadow": (BuildContext context)                    => CmpCodePage(
          Title:"Text Shadow",
          BackRoute:"/Text_FontSize",
          NextRoute:"/Text_FontFamily",
          ItemList:TextShadow_list,
          CodeRoute:"lib/3_Text/10_TextShadowRun.dart",
          TabIcon:Icon(Icons.texture),
          ToDo:"We Need To Write A Simple Text That Has An Shodow With An Blur 10 And 5 Offset With Color Blue That Appear in The Center Of The Body",
          TxtExplanation:TextShadow_Explanation,
          RunCodeRoute:new TextShadowRun(),
        ),

        //-----------------------------------------------------------------------------
        //-----------------------------------------------------------------------------

        "/Text_FontFamily": (BuildContext context)                => CmpCodePage(
          Title:"Text Font Family",
          BackRoute:"/Text_Shadow",
          NextRoute:"/Text_BgColor",
          ItemList:TextFontFamily_list,
          CodeRoute:"lib/3_Text/11_TextFontFamilyRun.dart",
          TabIcon:Icon(Icons.font_download),
          ToDo:"We Need To Write A Simple Text With Raleway Family Font That Appear in The Center Of The Body",
          TxtExplanation:TextFontFamily_Explanation,
          RunCodeRoute:new TextFontFamilyRun(),
        ),

        //-----------------------------------------------------------------------------
        //-----------------------------------------------------------------------------

        "/Text_BgColor": (BuildContext context)                   => CmpCodePage(
          Title:"Text Bg Color",
          BackRoute:"/Text_FontFamily",
          NextRoute:"/Text_RichText",
          ItemList:TextBgColor_list,
          CodeRoute:"lib/3_Text/12_TextBackgroundColorRun.dart",
          TabIcon:Icon(Icons.format_color_fill),
          ToDo:"We Need To Write A Simple Text That Has A Blue Background Color in The Center Of The Body",
          TxtExplanation:TextBgColor_Explanation,
          RunCodeRoute:new TextBgColorRun(),
        ),

        //-----------------------------------------------------------------------------
        //-----------------------------------------------------------------------------

        "/Text_RichText": (BuildContext context)                 => CmpCodePage(
          Title:"Rich Text",
          BackRoute:"/Text_BgColor",
          NextRoute:"/Text_AlignCenter",
          ItemList:TextRich_list,
          CodeRoute:"lib/3_Text/13_RichTextRun.dart",
          TabIcon:Icon(Icons.title),
          ToDo:"We Need To Write A Simple Centered Text HelloWorld That Appear In The Center Of The Body Noting That :\nHello Must Appear In Red\nWorld in Blue\n",
          TxtExplanation:TextRich_Explanation,
          RunCodeRoute:new RichTextRun(),
        ),

        //-----------------------------------------------------------------------------
        //-----------------------------------------------------------------------------

        "/Text_AlignCenter": (BuildContext context)               => CmpCodePage(
          Title:"Text Align Center",
          BackRoute:"/Text_RichText",
          NextRoute:"/Text_AlignLeft",
          ItemList:TextAlignCenter_list,
          CodeRoute:"lib/3_Text/14_TextAlignCenterRun.dart",
          TabIcon:Icon(Icons.format_align_center),
          ToDo:"We Need To Write A Simple Text That Appear In The Center Of Container\n",
          TxtExplanation:TextAlignCenter_Explanation,
          RunCodeRoute:new TextAlignCenterRun(),
        ),

        //-----------------------------------------------------------------------------
        //-----------------------------------------------------------------------------

        "/Text_AlignLeft": (BuildContext context)                 => CmpCodePage(
          Title:"Text Align Left",
          BackRoute:"/Text_AlignCenter",
          NextRoute:"/Text_AlignRight",
          ItemList:TextAlignLeft_list,
          CodeRoute:"lib/3_Text/15_TextAlignLeftRun.dart",
          TabIcon:Icon(Icons.format_align_left),
          ToDo:"We Need To Write A Simple Text That Appear In The Left Of Container\n\n",
          TxtExplanation:TextAlignLeft_Explanation,
          RunCodeRoute:new TextAlignLeftRun(),
        ),

        //-----------------------------------------------------------------------------
        //-----------------------------------------------------------------------------

        "/Text_AlignRight": (BuildContext context)               => CmpCodePage(
          Title:"Text Align Right",
          BackRoute:"/Text_AlignLeft",
          NextRoute:"/AppBar_Light",
          ItemList:TextAlignRight_list,
          CodeRoute:"lib/3_Text/16_TextAlignRightRun.dart",
          TabIcon:Icon(Icons.format_align_right),
          ToDo:"We Need To Write A Simple Text That Appear In The Right Of Container\n\n",
          TxtExplanation:TextAlignRight_Explanation,
          RunCodeRoute:new TextAlignRightRun(),
        ),

        //-----------------------------------------------------------------------------
        //-----------------------------------------------------------------------------


        "/AppBar_Light": (BuildContext context)                   => CmpCodePage(
          Title:"Light AppBar",
          BackRoute:"/Text_AlignRight",
          NextRoute:"/AppBar_Dark",
          ItemList:AppBar_Light_list,
          CodeRoute:"lib/4_AppBar/1_SimpleAppBarLightRun.dart",
          TabIcon:Icon(Icons.fiber_dvr),
          ToDo:"Write a Code That Create A Simple Light Theme AppBar Having App Bar As An Title\n",
          TxtExplanation:AppBar_Light_Explanation,
          RunCodeRoute:new SimpleAppBarLightRun(),
        ),

        //-----------------------------------------------------------------------------
        //-----------------------------------------------------------------------------

        "/AppBar_Dark": (BuildContext context)                      => CmpCodePage(
          Title:"Dark AppBar",
          BackRoute:"/AppBar_Light",
          NextRoute:"/AppBar_YBG_RTXT",
          ItemList:AppBar_Dark_list,
          CodeRoute:"lib/4_AppBar/2_SimpleAppBarDarkRun.dart",
          TabIcon:Icon(Icons.fiber_dvr),
          ToDo:"Write a Code That Create A Simple Dark Theme AppBar Having App Bar As An Title\n",
          TxtExplanation:AppBar_Dark_Explanation,
          RunCodeRoute:new SimpleAppBarDarkRun(),
        ),

        //-----------------------------------------------------------------------------
        //-----------------------------------------------------------------------------

        "/AppBar_YBG_RTXT": (BuildContext context)                => CmpCodePage(
          Title:"Yellow Bg Red Text",
          BackRoute:"/AppBar_Dark",
          NextRoute:"/AppBar_Gradient",
          ItemList:AppBar_YBG_RTXT_list,
          CodeRoute:"lib/4_AppBar/3_SimpleAppBar_YellowBg_RedColorRun.dart",
          TabIcon:Icon(Icons.fiber_dvr),
          ToDo:"Create An AppBar Having Dark Theme Where You Have To Style The AppBar To:\n-Background Color -> Yellow\n-TextColor -> Red\n-Title:Yellow Bg - Red Text",
          TxtExplanation:AppBar_YBG_RTXT_Explanation,
          RunCodeRoute:new SimpleAppBarYBG_RTXT_Run(),
        ),

        //-----------------------------------------------------------------------------
        //-----------------------------------------------------------------------------

        "/AppBar_Gradient": (BuildContext context)                => CmpCodePage(
          Title:"Gradient AppBar",
          BackRoute:"/AppBar_YBG_RTXT",
          NextRoute:"/AppBar_LeftIcon",
          ItemList:AppBar_Gradient_list,
          CodeRoute:"lib/4_AppBar/4_AppBarGradient_Run.dart",
          TabIcon:Icon(Icons.fiber_dvr),
          ToDo:"Create A Gradient App Bar Having Gradiant AppBar! As An Title\n",
          TxtExplanation:AppBar_Gradient_Explanation,
          RunCodeRoute:new GradientAppBarRun(),
        ),

        //-----------------------------------------------------------------------------
        //-----------------------------------------------------------------------------

        "/AppBar_LeftIcon": (BuildContext context)                => CmpCodePage(
          Title:"AppBar Left Icon",
          BackRoute:"/AppBar_Gradient",
          NextRoute:"/AppBar_LeftRightIcon",
          ItemList:AppBar_LeftIcon_list,
          CodeRoute:"lib/4_AppBar/5_AppBarGreyBgTextCenteredIndigoLeftIconRun.dart",
          TabIcon:Icon(Icons.fiber_dvr),
          ToDo:"Create A AppBar Having Grey BackgroundColor,Title LeftIcon Set To Indigo Color Aligned To The Center,Leaded By a Left Icon.\n",
          TxtExplanation:AppBar_LeftIcon_Explanation,
          RunCodeRoute:new AppBarLeftIconRun(),
        ),

        //-----------------------------------------------------------------------------
        //-----------------------------------------------------------------------------

        "/AppBar_LeftRightIcon": (BuildContext context)           => CmpCodePage(
          Title:"AppBar Left & Right Icon",
          BackRoute:"/AppBar_LeftIcon",
          NextRoute:"/AppBar_DoubleSideIcon",
          ItemList:AppBar_LeftRightIcon_list,
          CodeRoute:"lib/4_AppBar/6_AppBarLeftRightIconRun.dart",
          TabIcon:Icon(Icons.fiber_dvr),
          ToDo:"Create An AppBar Having <-- Icons --> As A Title And Has Balance Icon From Left And Right\n",
          TxtExplanation:AppBar_LeftRightIcon_Explanation,
          RunCodeRoute:new AppBarLeftRightIconRun(),
        ),

        //-----------------------------------------------------------------------------
        //-----------------------------------------------------------------------------

        "/AppBar_DoubleSideIcon": (BuildContext context)          => CmpCodePage(
          Title:"AppBar Double Side Icons",
          BackRoute:"/AppBar_LeftRightIcon",
          NextRoute:"/MainBg_BgColor",
          ItemList:AppBar_DoubleSideIcon_list,
          CodeRoute:"lib/4_AppBar/7_AppBarDoubleSideIconsRun.dart",
          TabIcon:Icon(Icons.fiber_dvr),
          ToDo:"Write an AppBar That Hold 2 Icons Left And Right Side With An Centered Title\n",
          TxtExplanation:AppBar_DoubleSideIcon_Explanation,
          RunCodeRoute:new AppBarDoubleSideIconsRun(),
        ),

        //-----------------------------------------------------------------------------
        //-----------------------------------------------------------------------------

        "/MainBg_BgColor": (BuildContext context)                 => CmpCodePage(
          Title:"Custom Background Color",
          BackRoute:"/AppBar_DoubleSideIcon",
          NextRoute:"/MainBg_GradientBgColor",
          ItemList:MainBg_MainBg_list,
          CodeRoute:"lib/5_MainBg/1_MainBgCustomColorRun.dart",
          TabIcon:Icon(Icons.format_paint),
          ToDo:"Create A Simple Body That Has An Blue Background Color\n",
          TxtExplanation:MainBg_MainBg_Explanation,
          RunCodeRoute:new MainBgCustomColorRun(),
        ),

        //-----------------------------------------------------------------------------
        //-----------------------------------------------------------------------------

        "/MainBg_GradientBgColor": (BuildContext context)         => CmpCodePage(
          Title:"Gradient Background Color",
          BackRoute:"/MainBg_BgColor",
          NextRoute:"/MainBg_GradientBgColorAppBar",
          ItemList:MainBg_GradientBgColor_list,
          CodeRoute:"lib/5_MainBg/2_MainBgGradientRun.dart",
          TabIcon:Icon(Icons.format_paint),
          ToDo:"Create A Simple Body That Has An Gradient Background Color\n",
          TxtExplanation:MainBg_GradientBgColor_Explanation,
          RunCodeRoute:new MainBgGradientRun(),
        ),

        //-----------------------------------------------------------------------------
        //-----------------------------------------------------------------------------

        "/MainBg_GradientBgColorAppBar": (BuildContext context)   => CmpCodePage(
          Title:"Gradient Background With AppBar",
          BackRoute:"/MainBg_GradientBgColor",
          NextRoute:"/MainBg_BgDarkGAppBar",
          ItemList:MainBg_GradientBgColorAppBar_list,
          CodeRoute:"lib/5_MainBg/3_MainBgGradientAppBarRun.dart",
          TabIcon:Icon(Icons.format_paint),
          ToDo:"Create A Simple Body That Has An Gradient Background Color Having An AppBar\n",
          TxtExplanation:MainBg_GradientBgColorAppBar_Explanation,
          RunCodeRoute:new MainBgGradientAppBarRun(),
        ),

        //-----------------------------------------------------------------------------
        //-----------------------------------------------------------------------------

        "/MainBg_BgDarkGAppBar": (BuildContext context)           => CmpCodePage(
          Title:"Dark Background Grey AppBar",
          BackRoute:"/MainBg_GradientBgColorAppBar",
          NextRoute:"/MainBg_BgLightRAppBar",
          ItemList:MainBg_BgDarkGAppBar_list,
          CodeRoute:"lib/5_MainBg/4_MainBgDarkGAppBarRun.dart",
          TabIcon:Icon(Icons.format_paint),
          ToDo:"Create A Simple Page That Has Dark Theme With Grey AppBar Background Color\n\n",
          TxtExplanation:MainBg_BgDarkGAppBar_Explanation,
          RunCodeRoute:new MainBgDarkGAppBarRun(),
        ),

        //-----------------------------------------------------------------------------
        //-----------------------------------------------------------------------------

        "/MainBg_BgLightRAppBar": (BuildContext context)           => CmpCodePage(
          Title:"Light Background Red AppBar",
          BackRoute:"/MainBg_BgDarkGAppBar",
          NextRoute:"/Image_Insert",
          ItemList:MainBg_BgLightRAppBar_list,
          CodeRoute:"lib/5_MainBg/5_MainBgLightRAppBarRun.dart",
          TabIcon:Icon(Icons.format_paint),
          ToDo:"Create A Simple Page That Has Light Theme With Red AppBar Background Color\n\n",
          TxtExplanation:MainBg_BgLightRAppBar_Explanation,
          RunCodeRoute:new MainBgLightRAppBarRun(),
        ),

        //-----------------------------------------------------------------------------
        //-----------------------------------------------------------------------------


        "/Image_Insert": (BuildContext context)                   => CmpCodePage(
          Title:"Image Insert",
          BackRoute:"/MainBg_BgLightRAppBar",
          NextRoute:"/Image_WidthHeight",
          ItemList:ImageInsert_list,
          CodeRoute:"lib/6_Image/ImgInsImgRun.dart",
          TabIcon:Icon(Icons.image),
          ToDo:"We Need To Write A Page That Show An Image in The Center Of The Body",
          TxtExplanation:ImageInsert_Explanation,
          RunCodeRoute:new ImgInsRun(),
        ),

        //-----------------------------------------------------------------------------
        //-----------------------------------------------------------------------------


        "/Image_WidthHeight": (BuildContext context)              => CmpCodePage(
          Title:"Image Width & Height",
          BackRoute:"/Image_Insert",
          NextRoute:"/Button_SimpleRaisedBtn",
          ItemList:ImageWidthHeight_list,
          CodeRoute:"lib/6_Image/ImgWidthHeightRun.dart",
          TabIcon:Icon(Icons.image),
          ToDo:"We Need To Write A Page That Show An Image in The Center Of The Body With An Width & Height 40",
          TxtExplanation:ImageWidthHeight_Explanation,
          RunCodeRoute:new ImgInsWHRun(),
        ),

        //-----------------------------------------------------------------------------
        //-----------------------------------------------------------------------------

        "/Image_Network": (BuildContext context)              => CmpCodePage(
          Title:"Image From Network",
          BackRoute:"/Image_WidthHeight",
          NextRoute:"/Button_SimpleRaisedBtn",
          ItemList:ImageNetwork_list,
          CodeRoute:"lib/6_Image/ImgNetworkRun.dart",
          TabIcon:Icon(Icons.image),
          ToDo:"We Need To Write A Page That Show An Image Loaded From Url",
          TxtExplanation:ImageNetwork_Explanation,
          RunCodeRoute:new ImgNetworkRun(),
        ),

        //-----------------------------------------------------------------------------
        //-----------------------------------------------------------------------------

        "/Button_SimpleRaisedBtn": (BuildContext context)         => CmpCodePage(
          Title:"Raised Button",
          BackRoute:"/Main",
          NextRoute:"/Button_MatchParent",
          ItemList:SimpleRaisedBtn_list,
          CodeRoute:"lib/7_Buttons/1_BtnSimpleRaisedBtnRun.dart",
          TabIcon:Icon(Icons.check_box_outline_blank),
          ToDo:"We Need To Write A Page That Show A Raised Button in The Center Of The Body Having Value Click Me\n",
          TxtExplanation:Btn_SimpleRaisedBtn_Explanation,
          RunCodeRoute:new BtnSimpleRaisedBtnRun(),
        ),

        //-----------------------------------------------------------------------------
        //-----------------------------------------------------------------------------

        "/Button_MatchParent": (BuildContext context)              => CmpCodePage(
          Title:"Raised Button Full Width",
          BackRoute:"/Button_SimpleRaisedBtn",
          NextRoute:"/Button_RaisedRoundedBtn",
          ItemList:ButtonMatchParent_list,
          CodeRoute:"lib/7_Buttons/2_BtnSimpleRaisedBtnFullWidthRun.dart",
          TabIcon:Icon(Icons.check_box_outline_blank),
          ToDo:"We Need To Write A Page That Show A Raised Button in The Center Of The Body Having Value Click Me And Has The Full Width Of The Screen\n",
          TxtExplanation:ButtonMatchParent_Explanation,
          RunCodeRoute:new BtnSimpleRaisedBtnFullWidthRun(),
        ),

        //-----------------------------------------------------------------------------
        //-----------------------------------------------------------------------------

        "/Button_RaisedRoundedBtn": (BuildContext context)        => CmpCodePage(
          Title:"Rounded Raised Button",
          BackRoute:"/Button_MatchParent",
          NextRoute:"/Button_RaisedStyledBtn",
          ItemList:Btn_RaisedRoundedBtn_list,
          CodeRoute:"lib/7_Buttons/3_BtnSimpleRaisedRoundedBtnRun.dart",
          TabIcon:Icon(Icons.check_box_outline_blank),
          ToDo:"We Need To Write A Page That Show A Rounded Raised Button in The Center Of The Body Having Value Click Me",
          TxtExplanation:Btn_RaisedRounded_Explanation,
          RunCodeRoute:new BtnSimpleRaisedRoundedBtnRun(),
        ),

        //-----------------------------------------------------------------------------
        //-----------------------------------------------------------------------------

        "/Button_RaisedStyledBtn": (BuildContext context)         => CmpCodePage(
          Title:"Rounded Red Background Button With With White Text",
          BackRoute:"/Button_RaisedRoundedBtn",
          NextRoute:"/Button_RaisedGradientBtn",
          ItemList:Btn_RaisedStyled_list,
          CodeRoute:"lib/7_Buttons/4_BtnRaisedRoundedRedBgWTxtRun.dart",
          TabIcon:Icon(Icons.check_box_outline_blank),
          ToDo:"We Need To Write A Page That Show A Raised Button in The Center Of The Body Having Value Click Me With Red Background Color And White Text",
          TxtExplanation:Btn_RaisedStyled_Explanation,
          RunCodeRoute:new BtnRaisedRoundedRedBgWTxtRun(),
        ),

        //-----------------------------------------------------------------------------
        //-----------------------------------------------------------------------------

        "/Button_RaisedGradientBtn": (BuildContext context)       => CmpCodePage(
          Title:"Rounded Raised Gradient Button",
          BackRoute:"/Button_RaisedStyledBtn",
          NextRoute:"/Button_RoundedIconBtn",
          ItemList:Btn_RaisedRoundedGradient_list,
          CodeRoute:"lib/7_Buttons/5_BtnRaisedRoundedGradientRun.dart",
          TabIcon:Icon(Icons.check_box_outline_blank),
          ToDo:"We Need To Write A Page That Show A Rounded Gradient Raised Button in The Center Of The Body Having Value Gradient Button",
          TxtExplanation:Btn_RaisedRoundedGradient_Explanation,
          RunCodeRoute:new BtnRoundedRaisedGradientBtnRun(),
        ),

        //-----------------------------------------------------------------------------
        //-----------------------------------------------------------------------------

        "/Button_RoundedIconBtn": (BuildContext context)          => CmpCodePage(
          Title:"Rounded Icon Button",
          BackRoute:"/Button_RaisedGradientBtn",
          NextRoute:"/Button_FlatBtn",
          ItemList:Btn_RoundedIconButton_list,
          CodeRoute:"lib/7_Buttons/6_BtnRoundedIconButtonRun.dart",
          TabIcon:Icon(Icons.check_box_outline_blank),
          ToDo:"We Need To Write A Page That Show A Rounded Icon Button in The Center Of The Body Having Android Icon That Appear In Yellow With a Blue Background Color",
          TxtExplanation:Btn_RoundedIconButton_Explanation,
          RunCodeRoute:new BtnLittleRoundedIconBtnRun(),
        ),

        //-----------------------------------------------------------------------------
        //-----------------------------------------------------------------------------

        "/Button_FlatBtn": (BuildContext context)                 => CmpCodePage(
          Title:"Simple Flat Button",
          BackRoute:"/Button_RoundedIconBtn",
          NextRoute:"/Button_FlatIconBtn",
          ItemList:Btn_FlatButton_list,
          CodeRoute:"lib/7_Buttons/7_BtnSimpleFlatBtnRun.dart",
          TabIcon:Icon(Icons.check_box_outline_blank),
          ToDo:"We Need To Write A Page That Show A Flat Button in The Center Of The Body Having Value Login",
          TxtExplanation:Btn_FlatButton_Explanation,
          RunCodeRoute:new BtnSimpleFlatBtnRun(),
        ),

        //-----------------------------------------------------------------------------
        //-----------------------------------------------------------------------------

        "/Button_FlatIconBtn": (BuildContext context)             => CmpCodePage(
          Title:"Flat Button Icon",
          BackRoute:"/Button_FlatBtn",
          NextRoute:"/Button_SimpleOutline",
          ItemList:Btn_FlatIconButton_list,
          CodeRoute:"lib/7_Buttons/8_BtnFlatIconGreyBgBtnRun.dart",
          TabIcon:Icon(Icons.check_box_outline_blank),
          ToDo:"We Need To Write A Page That Show A Raised Button in The Center Of The Body Having label Add With An AddIcon(+) ",
          TxtExplanation:Btn_FlatIconButton_Explanation,
          RunCodeRoute:new BtnFlatIconGreyBgBtnRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Button_SimpleOutline": (BuildContext context)             => CmpCodePage(
          Title:"Simple Outline Button",
          BackRoute:"/Button_FlatIconBtn",
          NextRoute:"/Button_StyledOutline",
          ItemList:Btn_SimpleOutlineButton_list,
          CodeRoute:"lib/7_Buttons/9_Simple_Outline_Button.dart",
          TabIcon:Icon(Icons.check_box_outline_blank),
          ToDo:"We Need To Write A Page That Show A Simple Outline Button in The Center Of The Body",
          TxtExplanation:Btn_SimpleOutlineButton_Explanation,
          RunCodeRoute:new SimpleOutlineBtn(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Button_StyledOutline": (BuildContext context)             => CmpCodePage(
          Title:"Styled Outline Button",
          BackRoute:"/Button_SimpleOutline",
          NextRoute:"/Button_RoundedOutline",
          ItemList:Btn_StyledOutlineButton_list,
          CodeRoute:"lib/7_Buttons/10_Style_Outline_Button.dart",
          TabIcon:Icon(Icons.check_box_outline_blank),
          ToDo:"We Need To Write A Page That Show A Outline Button Having Color blueAccent When Tapped,TextColor And Border Color Set To Teal in The Center Of The Body",
          TxtExplanation:Btn_StyledOutlineButton_Explanation,
          RunCodeRoute:new SimpleStyledOutlineBtn(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Button_RoundedOutline": (BuildContext context)             => CmpCodePage(
          Title:"Rounded Outline Button",
          BackRoute:"/Button_StyledOutline",
          NextRoute:"/Toast_Intro",
          ItemList:Btn_RoundedOutlineButton_list,
          CodeRoute:"lib/7_Buttons/11_Round_Outline_Button.dart",
          TabIcon:Icon(Icons.check_box_outline_blank),
          ToDo:"We Need To Write A Page That Show An Rounded Outline Button In The Center Of The Body",
          TxtExplanation:Btn_RoundedOutlineButton_Explanation,
          RunCodeRoute:new RoundOutlineBtn(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------



        "/Toast_Intro": (BuildContext context)                    => CmpIntroPage(
          Title:"Toast Introduction",
          BackRoute:"/Button_FlatIconBtn",
          NextRoute:"/Toast_Top_Short",
          ItemList:Toast_Intro_CompList,
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Toast_Top_Short": (BuildContext context)                 => CmpCodePage(
          Title:"Short Top Toast",
          BackRoute:"/Toast_Intro",
          NextRoute:"/Toast_Center_Fast",
          ItemList:Toast_TopToast_list,
          CodeRoute:"lib/8_Toast/1_ToastTopRun.dart",
          TabIcon:Icon(Icons.album),
          ToDo:"We Need To Create a Raised Button Having Value ShowToast That Appear In The Center Of The Body, Once The Button Is Clicked A Toast Message Must Appear\nToast Must Have:\n-Short Duration\n-Appear At The Top\n",
          TxtExplanation:Toast_TopToast_Explanation,
          RunCodeRoute:new ToastTopRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Toast_Center_Fast": (BuildContext context)               => CmpCodePage(
          Title:"Fast Centered Toast With Red Background",
          BackRoute:"/Toast_Top_Short",
          NextRoute:"/Toast_Bottom_Short",
          ItemList:Toast_CenterToast_list,
          CodeRoute:"lib/8_Toast/2_ToastCenterRun.dart",
          TabIcon:Icon(Icons.album),
          ToDo:"We Need To Create a Raised Button Having Value ShowToast That Appear In The Center Of The Body, Once The Button Is Clicked A Toast Message Must Appear\nToast Must Have:\n-Long Duration\n-Appear At The Center\n-Having Red Background Color\n",
          TxtExplanation:Toast_CenterToast_Explanation,
          RunCodeRoute:new ToastCenterRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Toast_Bottom_Short": (BuildContext context)               => CmpCodePage(
          Title:"Short Bottom Toast With Blue Text",
          BackRoute:"/Toast_Center_Fast",
          NextRoute:"/Layout_Intro",
          ItemList:Toast_BottomToast_list,
          CodeRoute:"lib/8_Toast/3_ToastBottomRun.dart",
          TabIcon:Icon(Icons.album),
          ToDo:"We Need To Create a Raised Button Having Value ShowToast That Appear In The Center Of The Body, Once The Button Is Clicked A Toast Message Must Appear\nToast Must Have:\n-Short Duration\n-Appear At The Bottom\n-Having Blue Text Color\n",
          TxtExplanation:Toast_BottomToast_Explanation,
          RunCodeRoute:new ToastBottomRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Layout_Intro": (BuildContext context)                     => CmpIntroPage(
          Title:"Layout Introduction",
          BackRoute:"/Toast_Bottom_Short",
          NextRoute:"/Layout_Col_MAC",
          ItemList:Layout_Intro_CompList,
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Layout_Col_MAC": (BuildContext context)                     => CmpCodePage(
          Title:"Column Main Align Center",
          BackRoute:"/Layout_Intro",
          NextRoute:"/Layout_Col_MAS",
          ItemList:Layout_Col_MAC_list,
          CodeRoute:"lib/9_Layouts/1_Layout_Col_MainAlign_Center_Run.dart",
          TabIcon:Icon(Icons.grid_on),
          ToDo:"Write Simple Page That Contain 2 Images Globbed By A Container Having Red Border With Width 2 px where Each Image Display On A Row,Note:Use MainAxisAlignment.center\n",
          TxtExplanation:Layout_Col_MAC_Explanation,
          RunCodeRoute:new Col_MA_CenterRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/Layout_Col_MAS": (BuildContext context)                     => CmpCodePage(
          Title:"Column Main Align Start",
          BackRoute:"/Layout_Col_MAC",
          NextRoute:"/Layout_Col_MAE",
          ItemList:Layout_Col_MAS_list,
          CodeRoute:"lib/9_Layouts/2_Layout_Col_MainAlign_Start_Run.dart",
          TabIcon:Icon(Icons.grid_on),
          ToDo:"Write Simple Page That Contain 2 Texts Globbed By A Container Having Red Border With Width 2 px where Each Text Display On A Row,Note:Use MainAxisAlignment.start (Must Use Column)\n",
          TxtExplanation:Layout_Col_MAS_Explanation,
          RunCodeRoute:new Col_MA_StartRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Layout_Col_MAE": (BuildContext context)                     => CmpCodePage(
          Title:"Column Main Align End",
          BackRoute:"/Layout_Col_MAS",
          NextRoute:"/Layout_Row_MAC",
          ItemList:Layout_Col_MAE_list,
          CodeRoute:"lib/9_Layouts/3_Layout_Col_MainAlign_End_Run.dart",
          TabIcon:Icon(Icons.grid_on),
          ToDo:"Write Simple Page That Contain IconButtton(Android) And Text(Android) Globbed By A Container Having Red Border With Width 2 px where Each Display On A Row,Note:Use MainAxisAlignment.end\n",
          TxtExplanation:Layout_Col_MAE_Explanation,
          RunCodeRoute:new Col_MA_EndRun(),
        ),


        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Layout_Row_MAC": (BuildContext context)                     => CmpCodePage(
          Title:"Row Main Align Center",
          BackRoute:"/Layout_Col_MAE",
          NextRoute:"/Layout_Row_MAS",
          ItemList:Layout_Row_MAC_list,
          CodeRoute:"lib/9_Layouts/4_Layout_Row_MainAlign_Center_Run.dart",
          TabIcon:Icon(Icons.grid_on),
          ToDo:"Write Simple Page That Contain 2 RaisedButton where Buttons Display On One Row ,Note:Use MainAxisAlignment.center\n",
          TxtExplanation:Layout_Row_MAC_Explanation,
          RunCodeRoute:new Row_MA_CenterRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Layout_Row_MAS": (BuildContext context)                     => CmpCodePage(
          Title:"Row Main Align Start",
          BackRoute:"/Layout_Row_MAC",
          NextRoute:"/Layout_Row_MAE",
          ItemList:Layout_Row_MAS_list,
          CodeRoute:"lib/9_Layouts/5_Layout_Row_MainAlign_Start_Run.dart",
          TabIcon:Icon(Icons.grid_on),
          ToDo:"Write Simple Page That Contain 2 RaisedButton where Buttons Display On One Row ,Note:Use MainAxisAlignment.start\n",
          TxtExplanation:Layout_Row_MAS_Explanation,
          RunCodeRoute:new Row_MA_StartRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Layout_Row_MAE": (BuildContext context)                     => CmpCodePage(
          Title:"Row Main Align End",
          BackRoute:"/Layout_Row_MAS",
          NextRoute:"/Layout_ContactListRun",
          ItemList:Layout_Row_MAE_list,
          CodeRoute:"lib/9_Layouts/6_Layout_Row_MainAlign_End_Run.dart",
          TabIcon:Icon(Icons.grid_on),
          ToDo:"Write Simple Page That Contain 2 RaisedButton where Buttons Display On One Row ,Note:Use MainAxisAlignment.end\n",
          TxtExplanation:Layout_Row_MAE_Explanation,
          RunCodeRoute:new Row_MA_EndRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Layout_ContactListRun": (BuildContext context)                => CmpCodePage(
          Title:"Contact List Using Column Rows",
          BackRoute:"/Layout_Row_MAE",
          NextRoute:"/Dialog_Simple",
          ItemList:Layout_Contact_List_list,
          CodeRoute:"lib/9_Layouts/7_Contact_List_Run.dart",
          TabIcon:Icon(Icons.grid_on),
          ToDo:"Write Simple Page That Display Contact List Using Columns And Rows Layouts\n",
          TxtExplanation:Layout_Contact_List_Explanation,
          RunCodeRoute:new CListRun(),
        ),


        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Dialog_Simple": (BuildContext context)                        => CmpCodePage(
          Title:"Simple Dialog",
          BackRoute:"/Layout_ContactListRun",
          NextRoute:"/Dialog_Customized",
          ItemList:Dialogs_Simple_list,
          CodeRoute:"lib/10_Dialogs/1_Simple_Dialog_Run.dart",
          TabIcon:Icon(Icons.chrome_reader_mode),
          ToDo:"We Need To Write A Page That Show A Raised Button Centered In The Body,Once Button Is Pressed An Alert Dialog Must Pop\n",
          TxtExplanation:Dialogs_Simple_Explanation,
          RunCodeRoute:new SimpleDialogRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Dialog_Customized": (BuildContext context)                     => CmpCodePage(
          Title:"Customized Dialog",
          BackRoute:"/Dialog_Simple",
          NextRoute:"/Divider_Intro",
          ItemList:Dialogs_Customized_list,
          CodeRoute:"lib/10_Dialogs/2_Custumized_Dialog_Run.dart",
          TabIcon:Icon(Icons.chrome_reader_mode),
          ToDo:"We Need To Write A Page That Show An Raised Button Once Pressed Show A Custumizable Dialog(Title,Content:text+Button)\n",
          TxtExplanation:Dialogs_Customized_Explanation,
          RunCodeRoute:new SimpleCustumizedDialogRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Divider_Intro": (BuildContext context)                         => CmpIntroPage(
          Title:"Divider Introduction",
          BackRoute:"/Dialog_Customized",
          NextRoute:"/Divider_Simple",
          ItemList:Divider_Intro_list,
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Divider_Simple": (BuildContext context)                         => CmpCodePage(
          Title:"Simple Divider",
          BackRoute:"/Divider_Intro",
          NextRoute:"/Divider_Color",
          ItemList:Divider_Simple_list,
          CodeRoute:"lib/11_Divider/1_Simple_Divider_Run.dart",
          TabIcon:Icon(Icons.linear_scale),
          ToDo:"We Need To Write A Page That Show A Divider At The center Of The Body\n",
          TxtExplanation:Divider_Simple_Explanation,
          RunCodeRoute:new SimpleDividerRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/Divider_Color": (BuildContext context)                         => CmpCodePage(
          Title:"Divider Color",
          BackRoute:"/Divider_Simple",
          NextRoute:"/Divider_WH",
          ItemList:Divider_Color_list,
          CodeRoute:"lib/11_Divider/2_Divider_Color_Run.dart",
          TabIcon:Icon(Icons.linear_scale),
          ToDo:"We Need To Write A Page That Show A Divider With Blue Color At The center Of The Body\n",
          TxtExplanation:Divider_Color_Explanation,
          RunCodeRoute:new DividerColorRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Divider_WH": (BuildContext context)                             => CmpCodePage(
          Title:"Custom Divider Width & Height",
          BackRoute:"/Divider_Color",
          NextRoute:"/Navigation_Page",
          ItemList:Divider_WH_list,
          CodeRoute:"lib/11_Divider/3_Divider_WH_Run.dart",
          TabIcon:Icon(Icons.linear_scale),
          ToDo:"We Need To Write A Page That Show A Divider With red Color At The center Of The Body , The Divider Has Width 250 , Height 10\n",
          TxtExplanation:Divider_WH_Explanation,
          RunCodeRoute:new DividerWHRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Navigation_Page": (BuildContext context)                         => CmpCodePage(
          Title:"Navigations Through Pages",
          BackRoute:"/Divider_WH",
          NextRoute:"/Navigation_Link",
          ItemList:Navigator_Page_list,
          CodeRoute:"lib/12_Navigation/1_Navigator_Pages_Run.dart",
          TabIcon:Icon(Icons.navigation),
          ToDo:"Write 2 Pages :\n\n"
               "Main Page:\n"
               "-Contain A Raised Button That Take Us To Page1\n\n"
               "Page1:\n"
               "Contain An AppBar Leaded With a Left Icon That Take Us Back To Main Page",
          TxtExplanation:Navigator_Page_Explanation,
          RunCodeRoute:new NavPagesRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Navigation_Link": (BuildContext context)                         =>  CmpCodePage(
          Title:"Navigations Through Links",
          BackRoute:"/Navigation_Page",
          NextRoute:"/Navigation_Dialer",
          ItemList:Navigator_Links_list,
          CodeRoute:"lib/12_Navigation/2_Navigator_Links_Run.dart",
          TabIcon:Icon(Icons.navigation),
          ToDo:"Write A Page That Contain An Raised button When Clicked It Take The User To A PlayStore App Link ",
          TxtExplanation:Navigator_Links_Explanation,
          RunCodeRoute:new NavLinksRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Navigation_Dialer": (BuildContext context)                        => CmpCodePage(
          Title:"Navigations Through Tel",
          BackRoute:"/Navigation_Link",
          NextRoute:"/Navigation_SMS",
          ItemList:Navigator_Tel_list,
          CodeRoute:"lib/12_Navigation/3_Navigator_Tel_Run.dart",
          TabIcon:Icon(Icons.navigation),
          ToDo:"Write A Page That Contain An Raised button When Clicked It Take The User To Call +96176404762\n\n",
          TxtExplanation:Navigator_Tel_Explanation,
          RunCodeRoute:new NavTelRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Navigation_SMS": (BuildContext context)                           => CmpCodePage(
          Title:"Navigations Through SMS",
          BackRoute:"/Navigation_Dialer",
          NextRoute:"/Navigation_Email",
          ItemList:Navigator_SMS_list,
          CodeRoute:"lib/12_Navigation/4_Navigator_Sms_Run.dart",
          TabIcon:Icon(Icons.navigation),
          ToDo:"Write A Page That Contain An Raised button When Clicked It Take The User To Send A SMS To +96176404762\n\n",
          TxtExplanation:Navigator_SMS_Explanation,
          RunCodeRoute:new NavSMSRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Navigation_Email": (BuildContext context)                         => CmpCodePage(
          Title:"Navigations Through Email",
          BackRoute:"/Navigation_SMS",
          NextRoute:"/SnackBar_Intro",
          ItemList:Navigator_Email_list,
          CodeRoute:"lib/12_Navigation/5_Navigator_Email_Run.dart",
          TabIcon:Icon(Icons.navigation),
          ToDo:"Write A Page That Contain An Raised button When Clicked It Take The User To Send An Email To edapps.contact@gmail.com\n\n",
          TxtExplanation:Navigator_Email_Explanation,
          RunCodeRoute:new NavEmailRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/SnackBar_Intro": (BuildContext context)                           => CmpIntroPage(
          Title:"SnackBar Introduction",
          BackRoute:"/Navigation_Email",
          NextRoute:"/SnackBar_Simple",
          ItemList:SnackBar_Intro_list,
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/SnackBar_Simple": (BuildContext context)                          =>CmpCodePage(
          Title:"Simple SnackBar",
          BackRoute:"/SnackBar_Intro",
          NextRoute:"/SnackBar_Red_Simple",
          ItemList:Snackbar_Simple_list,
          CodeRoute:"lib/13_SnBar/1_Simple_SnackBar_Run.dart",
          TabIcon:Icon(Icons.blur_linear),
          ToDo:"We Need To Create a Page That Show A Flat Button Centered In The Body,Once The Button Clicked A SnackBar Must Appear \n",
          TxtExplanation:SnackBar_Simple_Explanation,
          RunCodeRoute:new SimpleSnBarRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/SnackBar_Red_Simple": (BuildContext context)                       =>CmpCodePage(
          Title:"Simple Red SnackBar",
          BackRoute:"/SnackBar_Simple",
          NextRoute:"/SnackBar_Duration",
          ItemList:Snackbar_Red_list,
          CodeRoute:"lib/13_SnBar/2_Simple_Red_SnackBar_Run.dart",
          TabIcon:Icon(Icons.blur_linear),
          ToDo:"We Need To Create a Page That Show A Flat Button Centered In The Body,Once The Button Clicked A Red Background color SnackBar Must Appear \n",
          TxtExplanation:SnackBar_Red_Explanation,
          RunCodeRoute:new SnBarBgRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/SnackBar_Duration": (BuildContext context)                        =>CmpCodePage(
          Title:"SnackBar Duration",
          BackRoute:"/SnackBar_Red_Simple",
          NextRoute:"/SnackBar_Shape",
          ItemList:Snackbar_Duration_list,
          CodeRoute:"lib/13_SnBar/3_SnackBar_Duration_Run.dart",
          TabIcon:Icon(Icons.blur_linear),
          ToDo:"We Need To Create a Page That Show A Flat Button Centered In The Body,Once The Button Clicked A SnackBar Must Appear for 10 Sec \n",
          TxtExplanation:SnackBar_Duration_Explanation,
          RunCodeRoute:new SnBarDurRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/SnackBar_Shape": (BuildContext context)                           =>CmpCodePage(
          Title:"SnackBar Shape",
          BackRoute:"/SnackBar_Duration",
          NextRoute:"/SnackBar_Action",
          ItemList:Snackbar_Shape_list,
          CodeRoute:"lib/13_SnBar/4_SnackBar_Shape_Run.dart",
          TabIcon:Icon(Icons.blur_linear),
          ToDo:"We Need To Create a Page That Show A Flat Button Centered In The Body,Once The Button Clicked A SnackBar Must Appear , The Snackbar Must Have Radius Border Shape Set to 30Deg\n",
          TxtExplanation:SnackBar_Shape_Explanation,
          RunCodeRoute:new SnBarShapeRun(),
        ),


        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/SnackBar_Action": (BuildContext context)                           =>CmpCodePage(
          Title:"SnackBar Action Button",
          BackRoute:"/SnackBar_Shape",
          NextRoute:"/FlushBar_Simple",
          ItemList:Snackbar_Action_list,
          CodeRoute:"lib/13_SnBar/5_SnackBar_Action_Run.dart",
          TabIcon:Icon(Icons.blur_linear),
          ToDo:"We Need To Create a Page That Show A Flat Button Centered In The Body,Once The Button Clicked A SnackBar Must Appear With GetIt Now Text And A Download Label That Take The User To Play Store!\n",
          TxtExplanation:SnackBar_Action_Explanation,
          RunCodeRoute:new SnBarActRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/FlushBar_Simple": (BuildContext context)                          =>CmpCodePage(
          Title:"Simple FlushBar",
          BackRoute:"/SnackBar_Action",
          NextRoute:"/Flushbar_RedBg",
          ItemList:FlushBar_Simple_list,
          CodeRoute:"lib/14_FlushBar/1_Simple_FlushBar_Run.dart",
          TabIcon:Icon(Icons.space_bar),
          ToDo:"We Need To Write A Page That Show A Raised Button Centered In The Body,Once Button Is Pressed A FlushhBar Must Be Shown\n",
          TxtExplanation:FlushBar_Simple_Explanation,
          RunCodeRoute:new SimpleFlushBarRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Flushbar_RedBg": (BuildContext context)                          =>CmpCodePage(
          Title:"FlushBar With Red Background Color",
          BackRoute:"/FlushBar_Simple",
          NextRoute:"/Flushbar_YwText",
          ItemList:FlushBar_RedBg_list,
          CodeRoute:"lib/14_FlushBar/2_FlushBar_Red_BackgroundColor_Run.dart",
          TabIcon:Icon(Icons.space_bar),
          ToDo:"We Need To Write A Page That Show A Raised Button Centered In The Body,Once Button Is Pressed A Red FlushhBar Must Be Shown\n",
          TxtExplanation:FlushBar_RedBg_Explanation,
          RunCodeRoute:new FlushBarBGRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Flushbar_YwText": (BuildContext context)                         =>CmpCodePage(
          Title:"FlushBar Yellow Text",
          BackRoute:"/Flushbar_RedBg",
          NextRoute:"/Flushbar_Icon",
          ItemList:FlushBar_Yellow_Text_list,
          CodeRoute:"lib/14_FlushBar/3_FlushBar_Yellow_Text_Run.dart",
          TabIcon:Icon(Icons.space_bar),
          ToDo:"We Need To Write A Page That Show A Raised Button Centered In The Body,Once Button Is Pressed A FlushhBar With Yellow Text Must Be Shown\n",
          TxtExplanation:FlushBar_Yellow_Text_Explanation,
          RunCodeRoute:new FlushBarYWTxtRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Flushbar_Icon": (BuildContext context)                           =>CmpCodePage(
          Title:"FlushBar Icon",
          BackRoute:"/Flushbar_YwText",
          NextRoute:"/Flushbar_ActionButton",
          ItemList:FlushBar_Icon_list,
          CodeRoute:"lib/14_FlushBar/4_FlushBar_Icon_Run.dart",
          TabIcon:Icon(Icons.space_bar),
          ToDo:"We Need To Write A Page That Show A Raised Button Centered In The Body,Once Button Is Pressed A FlushhBar With Leading Icon Must Be Shown\n",
          TxtExplanation:FlushBar_Icon_Explanation,
          RunCodeRoute:new FlushBarIconRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/Flushbar_ActionButton": (BuildContext context)                    =>CmpCodePage(
          Title:"FlushBar Main Action Button",
          BackRoute:"/Flushbar_Icon",
          NextRoute:"/Flushbar_Position",
          ItemList:FlushBar_MainButton_list,
          CodeRoute:"lib/14_FlushBar/5_FlushBar_Main_Action_Button_Run.dart",
          TabIcon:Icon(Icons.space_bar),
          ToDo:"We Need To Write A Page That Show A Raised Button Centered In The Body,Once Button Is Pressed A FlushBar Must Be Shown That Display A Title,Message And A Main Button That Do An Action\n",
          TxtExplanation:FlushBar_MainButton_Explanation,
          RunCodeRoute:new FlushBarMainBtnRun(),
        ),


        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Flushbar_Position": (BuildContext context)                        =>CmpCodePage(
          Title:"FlushBar Position",
          BackRoute:"/Flushbar_ActionButton",
          NextRoute:"/Flushbar_Duration",
          ItemList:FlushBar_Position_list,
          CodeRoute:"lib/14_FlushBar/6_FlushBar_Position_Run.dart",
          TabIcon:Icon(Icons.space_bar),
          ToDo:"We Need To Write A Page That Show A Raised Button Centered In The Body,Once Button Is Pressed It Show A Top And A Bottom FlushBar!\n",
          TxtExplanation:FlushBar_Position_Explanation,
          RunCodeRoute:new FlushBarPosRun(),
        ),


        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Flushbar_Duration": (BuildContext context)                        =>CmpCodePage(
          Title:"FlushBar Duration",
          BackRoute:"/Flushbar_Position",
          NextRoute:"/Card_Intro",
          ItemList:FlushBar_Duration_list,
          CodeRoute:"lib/14_FlushBar/7_FlushBar_Duration_Run.dart",
          TabIcon:Icon(Icons.space_bar),
          ToDo:"We Need To Write A Page That Show A Raised Button Centered In The Body,Once Button Is Pressed It Has To Show FlushBar For 2 Seconds!\n",
          TxtExplanation:FlushBar_Position_Explanation,
          RunCodeRoute:new FlushBarDuration(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Card_Intro": (BuildContext context)                                   =>CmpIntroPage(
          Title:"Card Introduction",
          BackRoute:"/Flushbar_Duration",
          NextRoute:"/Card_Simple",
          ItemList:Card_Intro_list,
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Card_Simple": (BuildContext context)                              =>CmpCodePage(
          Title:"Simple Card",
          BackRoute:"/Card_Intro",
          NextRoute:"/Card_WH",
          ItemList:Card_Simple_list,
          CodeRoute:"lib/15_Card/1_Simple_Card_Run.dart",
          TabIcon:Icon(Icons.four_k),
          ToDo:"We Need To Create 2 Simple Card Having Just Text In The Body\n",
          TxtExplanation:Card_Simple_Explanation,
          RunCodeRoute:new SimpleCardRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Card_WH": (BuildContext context)                                 =>CmpCodePage(
          Title:"Card Width & Height",
          BackRoute:"/Card_Simple",
          NextRoute:"/Card_Red_WH",
          ItemList:Card_WH_list,
          CodeRoute:"lib/15_Card/2_Card_WH_Run.dart",
          TabIcon:Icon(Icons.four_k),
          ToDo:"We Need To Create a Page That Show A Card Centered In The Body Having Maximum Width,Height 200\n",
          TxtExplanation:Card_WH_Explanation,
          RunCodeRoute:new SimpleCardWHRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Card_Red_WH": (BuildContext context)                              =>CmpCodePage(
          Title:"Red Card Width & Height",
          BackRoute:"/Card_WH",
          NextRoute:"/Card_Customized",
          ItemList:Card_Red_WH_list,
          CodeRoute:"lib/15_Card/3_Card_Bg_Run.dart",
          TabIcon:Icon(Icons.four_k),
          ToDo:"We Need To Create a Page That Show A Card Centered In The Body Having Maximum Width,Height 200 , Red Background Color\n",
          TxtExplanation:Card_Red_WH_Explanation,
          RunCodeRoute:new SimpleBgCardWHRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Card_Customized": (BuildContext context)                          =>CmpCodePage(
          Title:"Customized Card",
          BackRoute:"/Card_Red_WH",
          NextRoute:"/Card_Elevator",
          ItemList:Card_Cust_list,
          CodeRoute:"lib/15_Card/4_Card_Cust_Run.dart",
          TabIcon:Icon(Icons.four_k),
          ToDo:"We Need To Create a Customized Card That Take As First Row Image+Text , Second Row Text\n",
          TxtExplanation:Card_Cust_Explanation,
          RunCodeRoute:new CustCardRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Card_Elevator": (BuildContext context)                            =>CmpCodePage(
          Title:"Card Elevator",
          BackRoute:"/Card_Customized",
          NextRoute:"/TextOverFlow_Clip",
          ItemList:Card_Elavator_list,
          CodeRoute:"lib/15_Card/5_Card_Elevator_Run.dart",
          TabIcon:Icon(Icons.four_k),
          ToDo:"We Need To Create a Menu Page That Contain 2 Cards Containing Liste Tiles That Take Users To Pages,Use Elevation 20\n",
          TxtExplanation:Card_Elevator_Explanation,
          RunCodeRoute:new CardElevatorRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/TextOverFlow_Clip": (BuildContext context)                        =>CmpCodePage(
          Title:"TextOverFlow Clip",
          BackRoute:"/Card_Elevator",
          NextRoute:"/TextOverFlow_Ellipsis",
          ItemList:TextOverFlow_Clip_list,
          CodeRoute:"lib/16_TextOverflow/1_TxtF_ClipRun.dart",
          TabIcon:Icon(Icons.title),
          ToDo:"We Need To Write A Page That Show A Container Having Clipped OverFlowed Text\n",
          TxtExplanation:TextOverFlow_Clip_Explanation,
          RunCodeRoute:new TxtFClipRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/TextOverFlow_Ellipsis": (BuildContext context)                     =>CmpCodePage(
          Title:"TextOverFlow Ellipsis",
          BackRoute:"/TextOverFlow_Clip",
          NextRoute:"/TextOverFlow_Fade",
          ItemList:TextOverFlow_Ellipsis_list,
          CodeRoute:"lib/16_TextOverflow/2_TxtF_EllipsisRun.dart",
          TabIcon:Icon(Icons.title),
          ToDo:"We Need To Write A Page That Show A Container That Show Ellipsis When Text Is Overflowed\n",
          TxtExplanation:TextOverFlow_Ellipsis_Explanation,
          RunCodeRoute:new TxtFEllipsisRun(),
        ),


        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/TextOverFlow_Fade": (BuildContext context)                         =>CmpCodePage(
          Title:"TextOverFlow Fade",
          BackRoute:"/TextOverFlow_Ellipsis",
          NextRoute:"/TextOverFlow_Visible",
          ItemList:TextOverFlow_Fade_list,
          CodeRoute:"lib/16_TextOverflow/3_TxtF_FadeRun.dart",
          TabIcon:Icon(Icons.title),
          ToDo:"We Need To Write A Page That Show A Container Having Faded OverFlowed Text\n",
          TxtExplanation:TextOverFlow_Fade_Explanation,
          RunCodeRoute:new TxtFFadeRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/TextOverFlow_Visible": (BuildContext context)                      =>CmpCodePage(
          Title:"TextOverFlow Visible",
          BackRoute:"/TextOverFlow_Fade",
          NextRoute:"/GestureDetector_Intro",
          ItemList:TextOverFlow_Visible_list,
          CodeRoute:"lib/16_TextOverflow/4_TxtF_VisibleRun.dart",
          TabIcon:Icon(Icons.title),
          ToDo:"We Need To Write A Page That Show A Container Having Visible OverFlowed Text\n",
          TxtExplanation:TextOverFlow_Visible_Explanation,
          RunCodeRoute:new TxtFVisibleRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/GestureDetector_Intro": (BuildContext context)                     =>CmpIntroPage(
          Title:"Gesture Detector Introduction",
          BackRoute:"/TextOverFlow_Visible",
          NextRoute:"/GestureDetector_Image",
          ItemList:GestureDetector_Intro_CompList,
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/GestureDetector_Image": (BuildContext context)                     => CmpCodePage(
          Title:"Image Gesture Detector",
          BackRoute:"/GestureDetector_Intro",
          NextRoute:"/GestureDetector_AppBarTitle",
          ItemList:GestureDetector_GestImg_list,
          CodeRoute:"lib/17_GestureDetector/1_GestImg_Run.dart",
          TabIcon:Icon(Icons.touch_app),
          ToDo:"We Need To Write A Page That Show A Image Centered Into The Body,Once The Image Is Tapped An Alert Must Pop\n",
          TxtExplanation:GestureDetector_GestImg_Explanation,
          RunCodeRoute:new GestImgRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/GestureDetector_AppBarTitle": (BuildContext context)               => CmpCodePage(
          Title:"AppBar Title Gesture Detector",
          BackRoute:"/GestureDetector_Image",
          NextRoute:"/GestureDetector_TapCoords",
          ItemList:GestureDetector_GestAppBarTitle_list,
          CodeRoute:"lib/17_GestureDetector/2_GestAppBarTitleRun.dart",
          TabIcon:Icon(Icons.touch_app),
          ToDo:"We Need To Write A Page That Contain An AppBar With Tap Me text Once Text Tapped An Alert Must Pop\n",
          TxtExplanation:GestureDetector_GestAppBarTitle_Explanation,
          RunCodeRoute:new GestAppBarTtileRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/GestureDetector_TapCoords": (BuildContext context)               => CmpCodePage(
          Title:"Tap Coords Detector",
          BackRoute:"/GestureDetector_AppBarTitle",
          NextRoute:"/ListView_Intro",
          ItemList:GestureDetector_TapCoords_list,
          CodeRoute:"lib/17_GestureDetector/3_Tap_Coords_Run.dart",
          TabIcon:Icon(Icons.touch_app),
          ToDo:"We Need To Write A Page That Contain Positioned Containing Text As An Child,Once Used Tap Change The Positined Position According To Tap X And Y\n",
          TxtExplanation:GestureDetector_TapCoords_Explanation,
          RunCodeRoute:new TapCoords(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/ListView_Intro": (BuildContext context)                            =>CmpIntroPage(
          Title:"ListView Introduction",
          BackRoute:"/GestureDetector_AppBarTitle",
          NextRoute:"/ListView_Scroll_Hor",
          ItemList:ListView_Intro_CompList,
        ),


        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/ListView_Scroll_Hor": (BuildContext context)                       =>CmpCodePage(
          Title:"Horizontal ListView",
          BackRoute:"/ListView_Intro",
          NextRoute:"/ListView_Scroll_Ver",
          ItemList:ListView_Horizontal_list,
          CodeRoute:"lib/18_ListView/1_ListView_Horizontal_Run.dart",
          TabIcon:Icon(Icons.filter_list),
          ToDo:"We Need To Write A Page That Allow Scroll Multiple Images Horizontaly\n",
          TxtExplanation:ListView_Horizontal_Explanation,
          RunCodeRoute:new LVHorRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/ListView_Scroll_Ver": (BuildContext context)                       =>CmpCodePage(
          Title:"Vertical ListView",
          BackRoute:"/ListView_Scroll_Hor",
          NextRoute:"/ListView_ScrollTo",
          ItemList:ListView_Vertical_list,
          CodeRoute:"lib/18_ListView/2_ListView_Vertical_Run.dart",
          TabIcon:Icon(Icons.filter_list),
          ToDo:"We Need To Write A Page That Allow Scroll Multiple Images Vertically\n",
          TxtExplanation:ListView_Vertical_Explanation,
          RunCodeRoute:new LVVertRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/ListView_ScrollTo": (BuildContext context)                       =>CmpCodePage(
          Title:"ListView Scroll To",
          BackRoute:"/ListView_Scroll_Ver",
          NextRoute:"/TextField_Simple",
          ItemList:ListView_ScrollTo_list,
          CodeRoute:"lib/18_ListView/3_ListView_ScrollTo.dart",
          TabIcon:Icon(Icons.filter_list),
          ToDo:"We Need To Write A Page Containing 2 Buttons < And > And A ListView Taking Items That Can Be Scrolled With Buttons\n",
          TxtExplanation:ListView_ScrollTo_Explanation,
          RunCodeRoute:new LVScrollTo(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/TextField_Simple": (BuildContext context)                          =>CmpCodePage(
          Title:"Simple TextField",
          BackRoute:"/ListView_Scroll_Ver",
          NextRoute:"/TextField_WithoutBorder",
          ItemList:TextField_Simple_list,
          CodeRoute:"lib/19_TextField/1_TextField_Simple_Run.dart",
          TabIcon:Icon(Icons.input),
          ToDo:"We Need To Create a Page That Show A Simple TextField With A Controller\n",
          TxtExplanation:TextField_Simple_Explanation,
          RunCodeRoute:new SimpleTFRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/TextField_WithoutBorder": (BuildContext context)                   =>CmpCodePage(
          Title:"TextField Without Border",
          BackRoute:"/TextField_Simple",
          NextRoute:"/TextField_MultiLine",
          ItemList:TextField_NoBorder_list,
          CodeRoute:"lib/19_TextField/2_TextField_NoBorder_Run.dart",
          TabIcon:Icon(Icons.input),
          ToDo:"We Need To Create a Page That Show A Simple TextField With A Controller Without Borders\n",
          TxtExplanation:TextField_NoBorder_Explanation,
          RunCodeRoute:new TFNoBordRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/TextField_MultiLine": (BuildContext context)                       =>CmpCodePage(
          Title:"MultiLine TextField",
          BackRoute:"/TextField_WithoutBorder",
          NextRoute:"/TextField_Icon",
          ItemList:TextField_MultiLine_list,
          CodeRoute:"lib/19_TextField/3_TextField_MultiLine_Run.dart",
          TabIcon:Icon(Icons.input),
          ToDo:"We Need To Create a Page That Show A Simple TextField With A Controller That Take 6 Lines\n",
          TxtExplanation:TextField_MultiLine_Explanation,
          RunCodeRoute:new MultiTFRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/TextField_Icon": (BuildContext context)                            =>CmpCodePage(
          Title:"TextField Icon",
          BackRoute:"/TextField_MultiLine",
          NextRoute:"/TextField_Styling",
          ItemList:TextField_Icon_list,
          CodeRoute:"lib/19_TextField/4_TextField_Icon_Run.dart",
          TabIcon:Icon(Icons.input),
          ToDo:"We Need To Create a Page That Show A Simple TextField With A Controller And Icon\n",
          TxtExplanation:TextField_Icon_Explanation,
          RunCodeRoute:new IconTFRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/TextField_Styling": (BuildContext context)                          =>CmpCodePage(
          Title:"TextField Style",
          BackRoute:"/TextField_Icon",
          NextRoute:"/TextField_Pass",
          ItemList:TextField_Style_list,
          CodeRoute:"lib/19_TextField/5_TextField_Style_Run.dart",
          TabIcon:Icon(Icons.input),
          ToDo:"We Need To Create a Page That Show A Simple TextField With A Controller Having Red Hint Text And Blue Text Color Input\n",
          TxtExplanation:TextField_Style_Explanation,
          RunCodeRoute:new TFStyleRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/TextField_Pass": (BuildContext context)                             =>CmpCodePage(
          Title:"Password TextField",
          BackRoute:"/TextField_Styling",
          NextRoute:"/TextField_LoginForm",
          ItemList:TextField_Pass_list,
          CodeRoute:"lib/19_TextField/6_TextField_Password_Run.dart",
          TabIcon:Icon(Icons.input),
          ToDo:"We Need To Create a Password TextField With A Controller \n",
          TxtExplanation:TextField_Pass_Explanation,
          RunCodeRoute:new PassTFRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/TextField_LoginForm": (BuildContext context)                         =>CmpCodePage(
          Title:"Login TextField Form",
          BackRoute:"/TextField_Pass",
          NextRoute:"/TextField_FormValidation",
          ItemList:TextField_LoginForm_list,
          CodeRoute:"lib/19_TextField/7_TextField_Login_Form_Run.dart",
          TabIcon:Icon(Icons.input),
          ToDo:"Create A Simple Login Form Design\n",
          TxtExplanation:TextField_LoginForm_Explanation,
          RunCodeRoute:new LoginFormRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/TextField_FormValidation": (BuildContext context)                    =>CmpCodePage(
          Title:"TextForm Validation",
          BackRoute:"/TextField_LoginForm",
          NextRoute:"/FooterAppbar_Simple",
          ItemList:TextField_FormValidation_list,
          CodeRoute:"lib/19_TextField/8_TextForm_Form_Validation_Run.dart",
          TabIcon:Icon(Icons.input),
          ToDo:"We Need To Write A Page That Take A Login Form Design,Validate Info When Button Is Clicked,Use SnackBar To Show Result If Succeed!\n",
          TxtExplanation:TextField_FormValidation_Explanation,
          RunCodeRoute:new ValidTFRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/FooterAppbar_Simple": (BuildContext context)                         =>CmpCodePage(
          Title:"Simple Footer AppBar",
          BackRoute:"/TextField_FormValidation",
          NextRoute:"/FooterAppbar_NavBar",
          ItemList:Footer_AppBar_Simple_list,
          CodeRoute:"lib/20_Footer/1_Simple_Footer_Run.dart",
          TabIcon:Icon(Icons.input),
          ToDo:"We Need To Write A Page That Show A Footer Containing 2 Images:\n"
               "-Logo App + Text That Take The User To The App\n"
               "-Logo Fb  + Text That Take The User To Fb \n",
          TxtExplanation:Footer_AppBar_Simple_Explanation,
          RunCodeRoute:new SimpleFooterRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/FooterAppbar_NavBar": (BuildContext context)                         =>CmpCodePage(
          Title:"NavBar Footer AppBar",
          BackRoute:"/FooterAppbar_Simple",
          NextRoute:"/ImageSlider_Intro",
          ItemList:Footer_AppBar_NavBar_list,
          CodeRoute:"lib/20_Footer/2_Bottom_NavBar_Run.dart",
          TabIcon:Icon(Icons.input),
          ToDo:"Create A Page Taking A Navigation Bar Footer Taking 3 Different Pages",
          TxtExplanation:Footer_AppBar_NavBar_Explanation,
          RunCodeRoute:new NavBarFooterRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/ImageSlider_Intro": (BuildContext context)                           =>CmpIntroPage(
          Title:"Image Slider Intro",
          BackRoute:"/FooterAppbar_NavBar",
          NextRoute:"/ImageSlider_StartImage",
          ItemList:IS_Intro_list,
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/ImageSlider_StartImage": (BuildContext context)                      =>CmpCodePage(
          Title:"Image Slider Initial Page Index",
          BackRoute:"/ImageSlider_Intro",
          NextRoute:"/ImageSlider_EnlargeCenterPage",
          ItemList:IS_InitialPage_list,
          CodeRoute:"lib/21_ImageSlider/1_IS_InitialPage_Run.dart",
          TabIcon:Icon(Icons.slideshow),
          ToDo: "We Need To Write A Page That Show 2 Slider:\n"
                "-First Slider Start With The Image Index 0\n"
                "-Second Slider Start With The Image Index 1\n",
          TxtExplanation:IS_InitialPage_Explanation,
          RunCodeRoute:new CarouselInitialPageRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/ImageSlider_EnlargeCenterPage": (BuildContext context)               =>CmpCodePage(
          Title:"Image Slider Enlarge Center Page",
          BackRoute:"/ImageSlider_StartImage",
          NextRoute:"/ImageSlider_AutoPlay",
          ItemList:IS_EnlargeCenterPage_list,
          CodeRoute:"lib/21_ImageSlider/2_IS_EnlargeCenterPage_Run.dart",
          TabIcon:Icon(Icons.slideshow),
          ToDo: "We Need To Write A Page That Show 2 Slider:\n"
                "-First Slider Center Page Enlarged\n"
                "-Second Slider Center Page Not Enlarged\n",
          TxtExplanation:IS_EnlargeCenterPage_Explanation,
          RunCodeRoute:new CarouselEnlargeCenterPageRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/ImageSlider_AutoPlay": (BuildContext context)                        =>CmpCodePage(
          Title:"Image Slider Auto Play",
          BackRoute:"/ImageSlider_EnlargeCenterPage",
          NextRoute:"/ImageSlider_InfiniteScroll",
          ItemList:IS_AutoPlay_list,
          CodeRoute:"lib/21_ImageSlider/3_IS_AutoPlay_Run.dart",
          TabIcon:Icon(Icons.slideshow),
          ToDo: "We Need To Write A Page That Show 2 Slider:\n"
              "-First Slider Auto Play Set To True\n"
              "-Second Slider Auto Play Set To False\n",
          TxtExplanation:IS_AutoPlay_Explanation,
          RunCodeRoute:new CarouselAutoPlayRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/ImageSlider_InfiniteScroll": (BuildContext context)                  =>CmpCodePage(
          Title:"Image Slider Infinite Scroll",
          BackRoute:"/ImageSlider_AutoPlay",
          NextRoute:"/ImageSlider_AutoPlayInterval",
          ItemList:IS_InfiniteScroll_list,
          CodeRoute:"lib/21_ImageSlider/4_IS_Enable_Infinite_Scroll_Run.dart",
          TabIcon:Icon(Icons.slideshow),
          ToDo: "We Need To Write A Page That Show 2 Slider:\n"
              "-First Slider Infinite Scroll Set To True\n"
              "-Second Slider Infinite Scroll Set To False\n",
          TxtExplanation:IS_InfiniteScroll_Explanation,
          RunCodeRoute:new CarouselEnableInifiniteScrollRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/ImageSlider_AutoPlayInterval": (BuildContext context)                =>CmpCodePage(
          Title:"Image Slider Auto Play Interval",
          BackRoute:"/ImageSlider_InfiniteScroll",
          NextRoute:"/ImageSlider_PauseAutoPlayOnTouch",
          ItemList:IS_AutoPlayInterval_list,
          CodeRoute:"lib/21_ImageSlider/5_IS_AutoPlayInterval_Run.dart",
          TabIcon:Icon(Icons.slideshow),
          ToDo: "We Need To Write A Page That Show 2 Slider:\n"
                "-First Slider autoPlayInterval Set To 1sec\n"
                "-Second Slider autoPlayInterval Set To 2sec\n",
          TxtExplanation:IS_AutoPlayInterval_Explanation,
          RunCodeRoute:new CarouselAutoPlayIntervRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/ImageSlider_PauseAutoPlayOnTouch": (BuildContext context)            =>CmpCodePage(
          Title:"Image Slider Pause Auto Play On Touch",
          BackRoute:"/ImageSlider_AutoPlayInterval",
          NextRoute:"/ImageSlider_ScrollDirection",
          ItemList:IS_PauseAutoPlayOnTouch_list,
          CodeRoute:"lib/21_ImageSlider/6_IS_Pause_AutoPlay_OnTouch_Run.dart",
          TabIcon:Icon(Icons.slideshow),
          ToDo: "We Need To Write A Page That Show 2 Slider:\n"
              "-First Slider PauseAutoPlayOnTouch Set To 2sec\n"
              "-Second Slider PauseAutoPlayOnTouch Set To 5sec\n",
          TxtExplanation:IS_PauseAutoPlayOnTouch_Explanation,
          RunCodeRoute:new CarouselPauseAutoPlayOnTouchRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/ImageSlider_ScrollDirection": (BuildContext context)                 =>CmpCodePage(
          Title:"Image Slider Scroll Direction",
          BackRoute:"/ImageSlider_PauseAutoPlayOnTouch",
          NextRoute:"/ImageSlider_WithButton",
          ItemList:IS_ScrollDirection_list,
          CodeRoute:"lib/21_ImageSlider/7_IS_ScrollDirection_Run.dart",
          TabIcon:Icon(Icons.slideshow),
          ToDo: "We Need To Write A Page That Show 2 Slider:\n"
                "-First Slider Scrolled Horizontally\n"
                "-Second Slider Scrolled Vertically\n",
          TxtExplanation:IS_ScrollDirection_Explanation,
          RunCodeRoute:new CarouselScrollDirectionRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/ImageSlider_WithButton": (BuildContext context)                      =>CmpCodePage(
          Title:"Image Slider With Buttons",
          BackRoute:"/ImageSlider_ScrollDirection",
          NextRoute:"/ImageSlider_WithCaption",
          ItemList:IS_WithButton_list,
          CodeRoute:"lib/21_ImageSlider/8_Slider_WIth_Button_Run.dart",
          TabIcon:Icon(Icons.slideshow),
          ToDo: "We Need To Write A Page That Show A Slider Taking Buttons To Navigate",
          TxtExplanation:IS_WithButton_Explanation,
          RunCodeRoute:new SliderWithButton(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/ImageSlider_WithCaption": (BuildContext context)                     =>CmpCodePage(
          Title:"Image Slider With Caption",
          BackRoute:"/ImageSlider_WithButton",
          NextRoute:"/ImageSlider_WithDots",
          ItemList:IS_WithCaption_list,
          CodeRoute:"lib/21_ImageSlider/9_Slider_With_Caption_Run.dart",
          TabIcon:Icon(Icons.slideshow),
          ToDo: "We Need To Write A Page That Show A Slider Taking Caption",
          TxtExplanation:IS_WithCaption_Explanation,
          RunCodeRoute:new SliderCaption(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/ImageSlider_WithDots": (BuildContext context)                        =>CmpCodePage(
          Title:"Image Slider With Dots",
          BackRoute:"/ImageSlider_WithCaption",
          NextRoute:"/Notification_WithoutSound",
          ItemList:IS_WithDots_list,
          CodeRoute:"lib/21_ImageSlider/10_Dots_Slider_Run.dart",
          TabIcon:Icon(Icons.slideshow),
          ToDo: "We Need To Write A Page That Show A Slider Taking Dots",
          TxtExplanation:IS_WithDots_Explanation,
          RunCodeRoute:new DotsSliderRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/Notification_WithoutSound": (BuildContext context)                   =>CmpCodePage(
          Title:"Notification Without Sound",
          BackRoute:"/ImageSlider_WithDots",
          NextRoute:"/Notification_DefaultSound",
          ItemList:Notification_WithoutSound_list,
          CodeRoute:"lib/22_Notification/1_Notification_Without_Sound_Run.dart",
          TabIcon:Icon(Icons.notifications_active),
          ToDo:"Create A Simple Page That Take A Button,Once Clicked It Gonna Send A Notification Without A Sound\n",
          TxtExplanation:Notification_WithoutSound_Explanation,
          RunCodeRoute:new NotifNoSound(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/Notification_DefaultSound": (BuildContext context)                   =>CmpCodePage(
          Title:"Notification Default Sound",
          BackRoute:"/Notification_WithoutSound",
          NextRoute:"/Notification_CustomSound",
          ItemList:Notification_DefaultSound_list,
          CodeRoute:"lib/22_Notification/2_Notification_Default_Sound_Run.dart",
          TabIcon:Icon(Icons.notifications_active),
          ToDo:"Create A Simple Page That Take A Button,Once Clicked It Gonna Send A Notification With Default Sound\n",
          TxtExplanation:Notification_DefaultSound_Explanation,
          RunCodeRoute:new NotifDefSound(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/Notification_CustomSound": (BuildContext context)                   =>CmpCodePage(
          Title:"Notification Custom Sound",
          BackRoute:"/Notification_DefaultSound",
          NextRoute:"/Notification_CustomIcon",
          ItemList:Notification_CustomSound_list,
          CodeRoute:"lib/22_Notification/3_Notification_Custom_Sound_Run.dart",
          TabIcon:Icon(Icons.notifications_active),
          ToDo:"Create A Simple Page That Take A Button,Once Clicked It Gonna Send A Notification Without A Custom Sound\n",
          TxtExplanation:Notification_CustomSound_Explanation,
          RunCodeRoute:new NotifCustSound(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/Notification_CustomIcon": (BuildContext context)                   =>CmpCodePage(
          Title:"Notification Custom Icon",
          BackRoute:"/Notification_CustomSound",
          NextRoute:"/Switch_Simple",
          ItemList:Notification_CustomIcon_list,
          CodeRoute:"lib/22_Notification/4_Notification_Custom_Icon_Run.dart",
          TabIcon:Icon(Icons.notifications_active),
          ToDo:"Create A Simple Page That Take A Button,Once Clicked It Gonna Send A Notification With A Custom Icon\n",
          TxtExplanation:Notification_CustomIcon_Explanation,
          RunCodeRoute:new NotifCustIcon(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/Switch_Simple": (BuildContext context)                              =>CmpCodePage(
          Title:"Simple Switch",
          BackRoute:"/Notification_CustomIcon",
          NextRoute:"/Switch_AppBarTheme",
          ItemList:Switch_Simple_list,
          CodeRoute:"lib/23_Switch/1_Simple_Switch_Run.dart",
          TabIcon:Icon(Icons.switch_camera),
          ToDo:
              "Create A Simple Page That Take A Switch With A Text That Show Its State (On |Off),If The Switch Is:\n"
              "-On : Set Its Color To Green\n"
              "-Off: Set Its Color To Red\n",
          TxtExplanation:Switch_Simple_Explanation,
          RunCodeRoute:new SimpleSwitch(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/Switch_AppBarTheme": (BuildContext context)                          =>CmpCodePage(
          Title:"Switch AppBar Theme",
          BackRoute:"/Switch_Simple",
          NextRoute:"/Switch_ThemeMode",
          ItemList:Switch_AppBarTheme_list,
          CodeRoute:"lib/23_Switch/2_Switch_AppBar_Theme_Run.dart",
          TabIcon:Icon(Icons.switch_camera),
          ToDo:
              "Create A Simple Page That Take A Switch When Its State Is:\n"
              "-On : Set The Background Color Of The AppBar To Red\n"
              "-Off: Set The Background Color Of The AppBar To Blue\n",
          TxtExplanation:Switch_AppBarTheme_Explanation,
          RunCodeRoute:new AppBarThemeSwitchRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/Switch_ThemeMode": (BuildContext context)                          =>CmpCodePage(
          Title:"Switch Theme Mode",
          BackRoute:"/Switch_AppBarTheme",
          NextRoute:"/Audio_Btn_Sound",
          ItemList:Switch_ThemeMode_list,
          CodeRoute:"lib/23_Switch/3_Switch_Light_Dark_Mode_Run.dart",
          TabIcon:Icon(Icons.switch_camera),
          ToDo:
           "Create A Simple Page That Take Images When:\n"
           "-On : Dark With Dark Theme\n"
           "-Off: Sun With Light Theme\n",
          TxtExplanation:Switch_ThemeMode_Explanation,
          RunCodeRoute:new LightDarkModeRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/Audio_Btn_Sound": (BuildContext context)                             =>CmpCodePage(
          Title:"Audio Play On Press",
          BackRoute:"/Switch_ThemeMode",
          NextRoute:"/Audio_Player",
          ItemList:Audio_Button_Sound_list,
          CodeRoute:"lib/24_Audio/1_Audio_Button_Sound_Run.dart",
          TabIcon:Icon(Icons.music_note),
          ToDo:"Create A Simple Page That Take A Button,When Clicked Must Play A Sound\n",
          TxtExplanation:Audio_Button_Sound_Explanation,
          RunCodeRoute:new TapSoundBtnRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/Audio_Player": (BuildContext context)                               =>CmpCodePage(
          Title:"Audio Player",
          BackRoute:"/Audio_Btn_Sound",
          NextRoute:"/Video_File",
          ItemList:Audio_Music_Player_list,
          CodeRoute:"lib/24_Audio/2_Audio_Music_Player_Run.dart",
          TabIcon:Icon(Icons.music_note),
          ToDo:"Create A Simple Page That Take 2 Music,With Play,Pause And Stop...Show The Song Progress Into Slider And Durations\n",
          TxtExplanation:Audio_Music_Player_Explanation,
          RunCodeRoute:new AudioRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------



        "/Video_File": (BuildContext context)                                  =>CmpCodePage(
          Title:"Video From File",
          BackRoute:"/Audio_Player",
          NextRoute:"/Video_Url",
          ItemList:Video_From_File_list,
          CodeRoute:"lib/25_VideoPlayer/1_Video_From_File_Run.dart",
          TabIcon:Icon(Icons.videocam),
          ToDo:"Create A Simple Page That Take 2 Videos Loaded From File Inside 2 Cards With Some Text\n",
          TxtExplanation:Video_From_File_Explanation,
          RunCodeRoute:new VideoFromFile(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/Video_Url": (BuildContext context)                                  =>CmpCodePage(
          Title:"Video From Url",
          BackRoute:"/Video_File",
          NextRoute:"/Simple_Loaders",
          ItemList:Video_From_Url_list,
          CodeRoute:"lib/25_VideoPlayer/2_Video_From_Url_Run.dart",
          TabIcon:Icon(Icons.videocam),
          ToDo:"Create A Simple Page That Take 2 Videos Loaded From Url Inside 2 Cards With Some Text\n",
          TxtExplanation:Video_From_Url_Explanation,
          RunCodeRoute:new VideoFromUrl(),
        ),



        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Simple_Loaders": (BuildContext context)                             =>Simple_Loader(),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/SLD1": (BuildContext context)                                          =>CmpCodePage(
          Title:"Linear Progress Indicator",
          BackRoute:"/Simple_Loaders",
          NextRoute:"/SLD2",
          ItemList:SLD1_list,
          CodeRoute:"lib/26_SimpleLoader/1_SLD1_Run.dart",
          TabIcon:Icon(Icons.timelapse),
          ToDo:"We Need To Write A Page That Show A Centered LinearProgressIndicator\n",
          TxtExplanation:SLD1_Explanation,
          RunCodeRoute:new SLD1Run(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/SLD2": (BuildContext context)                                          =>CmpCodePage(
          Title:"Circular Progress Indicator",
          BackRoute:"/SLD1",
          NextRoute:"/Advanced_Loaders",
          ItemList:SLD2_list,
          CodeRoute:"lib/26_SimpleLoader/2_SLD2_Run.dart",
          TabIcon:Icon(Icons.timelapse),
          ToDo:"We Need To Write A Page That Show A Centered CircularProgressIndicator\n",
          TxtExplanation:SLD2_Explanation,
          RunCodeRoute:new SLD2Run(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Advanced_Loaders": (BuildContext context)                            =>Advanced_Loader(),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/Animation_Intro": (BuildContext context)                              =>CmpIntroPage(
          Title:"Animation Intro",
          BackRoute:"/Advanced_Loaders",
          NextRoute:"/Animation_Opacity",
          ItemList:Animation_Intro_list,
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/Animation_Opacity": (BuildContext context)                            =>CmpCodePage(
          Title:"Opacity Animation",
          BackRoute:"/Animation_Intro",
          NextRoute:"/Animation_Fade",
          ItemList:Animation_Opacity_list,
          CodeRoute:"lib/28_Animation/1_Animation_Opacity_Run.dart",
          TabIcon:Icon(Icons.video_label),
          ToDo:"We Need To Write A Page That Show An Image That PLay Opacity Animation\n",
          TxtExplanation:Animation_Opacity_Explanation,
          RunCodeRoute:new AnimOpacityRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/Animation_Fade": (BuildContext context)                               =>CmpCodePage(
          Title:"Fade Animation",
          BackRoute:"/Animation_Opacity",
          NextRoute:"/Animation_Tween_LTR",
          ItemList:Animation_Fade_list,
          CodeRoute:"lib/28_Animation/2_Animation_Fade_Run.dart",
          TabIcon:Icon(Icons.video_label),
          ToDo:"We Need To Write A Page That Show 2 Images That PLay Fade Animation\n",
          TxtExplanation:Animation_Fade_Explanation,
          RunCodeRoute:new FadeRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/Animation_Tween_LTR": (BuildContext context)                          =>CmpCodePage(
          Title:"Tween Animation Left To Right",
          BackRoute:"/Animation_Fade",
          NextRoute:"/Animation_Tween_RTL",
          ItemList:Animation_TweenLtR_list,
          CodeRoute:"lib/28_Animation/3_Animation_Tween_LtR_Run.dart",
          TabIcon:Icon(Icons.video_label),
          ToDo:"We Need To Write A Page That Show 2 Cards Having Different Widgets That Tween From Left To Right\n",
          TxtExplanation:Animation_TweenLtR_Explanation,
          RunCodeRoute:new TweenLtR_Run(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Animation_Tween_RTL": (BuildContext context)                          =>CmpCodePage(
          Title:"Tween Animation Right To Left",
          BackRoute:"/Animation_Tween_LTR",
          NextRoute:"/Animation_Rotate",
          ItemList:Animation_TweenRtL_list,
          CodeRoute:"lib/28_Animation/4_Animation_Tween_RtL_Run.dart",
          TabIcon:Icon(Icons.video_label),
          ToDo:"We Need To Write A Page That Show A Card That Contain Image That Tween From Right To Left With Some Widgets\n",
          TxtExplanation:Animation_TweenRtL_Explanation,
          RunCodeRoute:new TweenRtL_Run(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Animation_Rotate": (BuildContext context)                             =>CmpCodePage(
          Title:"Rotate Animation",
          BackRoute:"/Animation_Tween_RTL",
          NextRoute:"/Animation_Matrix4_RotateZ",
          ItemList:Animation_Rotate_list,
          CodeRoute:"lib/28_Animation/5_Animation_Rotate_Run.dart",
          TabIcon:Icon(Icons.video_label),
          ToDo:"We Need To Write A Page That Show An Image That PLay Rotate Animation\n",
          TxtExplanation:Animation_Rotate_Explanation,
          RunCodeRoute:new AnimRotateRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Animation_Matrix4_RotateZ": (BuildContext context)                    =>CmpCodePage(
          Title:"Rotate Matrix4 RotateZ",
          BackRoute:"/Animation_Rotate",
          NextRoute:"/Animation_Matrix4_RotateY",
          ItemList:Animation_Matrix4_RotateZ_list,
          CodeRoute:"lib/28_Animation/6_Animation_Matrix4_RotZ_Run.dart",
          TabIcon:Icon(Icons.video_label),
          ToDo: "We Need To Write A Page That Show An Image That PLay Matrix4.rotationZ Animation\n",
          TxtExplanation:Animation_Matrix4_RotateZ_Explanation,
          RunCodeRoute:new AnimM4RZRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/Animation_Matrix4_RotateY": (BuildContext context)                    =>CmpCodePage(
          Title:"Rotate Matrix4 RotateY",
          BackRoute:"/Animation_Matrix4_RotateZ",
          NextRoute:"/Animation_Rotation_Transition",
          ItemList:Animation_Matrix4_RotateY_list,
          CodeRoute:"lib/28_Animation/7_Animation_Matrix4_RotY_Run.dart",
          TabIcon:Icon(Icons.video_label),
          ToDo: "We Need To Write A Page That Show An Image That PLay Matrix4.rotationY Animation\n",
          TxtExplanation:Animation_Matrix4_RotateY_Explanation,
          RunCodeRoute:new AnimM4RYRun(),
        ),


        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/Animation_Rotation_Transition": (BuildContext context)                =>CmpCodePage(
          Title:"Animation Rotation Transition",
          BackRoute:"/Animation_Matrix4_RotateY",
          NextRoute:"/Animation_ElasticOut",
          ItemList:Animation_Rotation_Transition_list,
          CodeRoute:"lib/28_Animation/8_Animation_Rotation_Transition_Run.dart",
          TabIcon:Icon(Icons.video_label),
          ToDo:"We Need To Write A Page That Show An Image That PLay Rotate Transition\n",
          TxtExplanation:Animation_Rotation_Transition_Explanation,
          RunCodeRoute:new AnimRotTransRun(),
        ),


        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Animation_ElasticOut": (BuildContext context)                         =>CmpCodePage(
          Title:"Animation Elastic Out",
          BackRoute:"/Animation_Rotation_Transition",
          NextRoute:"/Animation_ElasticIn",
          ItemList:Animation_ElasticOut_list,
          CodeRoute:"lib/28_Animation/9_Animation_ElasticOut_Run.dart",
          TabIcon:Icon(Icons.video_label),
          ToDo:"We Need To Write A Page That Show An Image That PLay Elastic Out Animation\n",
          TxtExplanation:Animation_ElasticOut_Explanation,
          RunCodeRoute:new AnimElasticOutRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Animation_ElasticIn": (BuildContext context)                          =>CmpCodePage(
          Title:"Animation Elastic In",
          BackRoute:"/Animation_ElasticOut",
          NextRoute:"/Animation_BounceIn",
          ItemList:Animation_ElasticIn_list,
          CodeRoute:"lib/28_Animation/10_Animation_ElasticIn_Run.dart",
          TabIcon:Icon(Icons.video_label),
          ToDo:"We Need To Write A Page That Show An Image That PLay Elastic In Animation\n",
          TxtExplanation:Animation_ElasticIn_Explanation,
          RunCodeRoute:new AnimElasticInRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Animation_BounceIn": (BuildContext context)                          =>CmpCodePage(
          Title:"Animation Bounce In",
          BackRoute:"/Animation_ElasticIn",
          NextRoute:"/Radio_Simple",
          ItemList:Animation_BounceIn_list,
          CodeRoute:"lib/28_Animation/11_Animation_BounceIn_Run.dart",
          TabIcon:Icon(Icons.video_label),
          ToDo:"We Need To Write A Page That Show An Image That PLay BounceIn Animation\n",
          TxtExplanation:Animation_BounceIn_Explanation,
          RunCodeRoute:new AnimBounceInRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Radio_Simple": (BuildContext context)                                =>CmpCodePage(
          Title:"Simple Radio",
          BackRoute:"/Animation_BounceIn",
          NextRoute:"/Radio_AppbarBgChange",
          ItemList:Radio_Simple_list,
          CodeRoute:"lib/29_Radio/1_Simple_Radio_Run.dart",
          TabIcon:Icon(Icons.radio_button_checked),
          ToDo:"We Need To Write A Page That Take A Text Question With 3 Radios,User Must Know The Answer.A Dialog Is Displayed To Let The User Know The Result\n",
          TxtExplanation:Radio_Simple_Explanation,
          RunCodeRoute:new SimpleRadio(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Radio_AppbarBgChange": (BuildContext context)                        =>CmpCodePage(
          Title:"AppBar BackgroundColor Changer",
          BackRoute:"/Radio_Simple",
          NextRoute:"/Radio_ThemeChanger",
          ItemList:Radio_App_BackgroundColorChanger_list,
          CodeRoute:"lib/29_Radio/2_Radio_AppBar_BackgroungColor_Changer_Run.dart",
          TabIcon:Icon(Icons.radio_button_checked),
          ToDo:"We Need To Write A Page That Take RadioListTile Having 2 Options Teal And Grey,Once A Tile Is Checked It Change The AppBar BackgroundColor To The Selected Color\n",
          TxtExplanation:Radio_App_BackgroundColorChanger_Explanation,
          RunCodeRoute:new RadioAppBarChangerRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/Radio_ThemeChanger": (BuildContext context)                          =>CmpCodePage(
          Title:"Main BackgroundColor Changer",
          BackRoute:"/Radio_AppbarBgChange",
          NextRoute:"/CheckBox_Simple",
          ItemList:Radio_ThemeChanger_list,
          CodeRoute:"lib/29_Radio/3_Radio_MainBg_Theme_Changer_Run.dart",
          TabIcon:Icon(Icons.radio_button_checked),
          ToDo:"Write A Page That Take 2 RadioListTile That Change Main Background Color Orange Or Yellow Depend On User Selection Of The Radio\n",
          TxtExplanation:Radio_ThemeChanger_Explanation,
          RunCodeRoute:new RadioTilesRun(),
        ),


        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/CheckBox_Simple": (BuildContext context)                             =>CmpCodePage(
          Title:"Simple CheckBox",
          BackRoute:"/Radio_ThemeChanger",
          NextRoute:"/CheckBox_Tile",
          ItemList:CheckBox_Simple_list,
          CodeRoute:"lib/30_CheckBox/1_Simple_CheckBox_Run.dart",
          TabIcon:Icon(Icons.check_box),
          ToDo:"We Need To Write A Page That Contain Simple CheckBoxs Followed By Button That Alert The Selected CheckBoxes\n",
          TxtExplanation:CheckBox_Simple_Explanation,
          RunCodeRoute:new SimpleCheckBox(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/CheckBox_Tile": (BuildContext context)                                =>CmpCodePage(
          Title:"CheckBox Tile",
          BackRoute:"/CheckBox_Simple",
          NextRoute:"/Chip_Simple",
          ItemList:CheckBox_Tile_list,
          CodeRoute:"lib/30_CheckBox/2_CheckBox_Tile_Run.dart",
          TabIcon:Icon(Icons.check_box),
          ToDo:"We Need To Write A Page That Contain CheckBoxs Tile\n",
          TxtExplanation:CheckBox_Tile_Explanation,
          RunCodeRoute:new CBTilesRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/Chip_Simple": (BuildContext context)                                  =>CmpCodePage(
          Title:"Simple Chip",
          BackRoute:"/CheckBox_Tile",
          NextRoute:"/Chip_OnDelete",
          ItemList:Chip_Simple_list,
          CodeRoute:"lib/31_Chip/1_SimpleChip_Run.dart",
          TabIcon:Icon(Icons.blur_circular),
          ToDo:"We Need To Write A Page That Contain Chips\n",
          TxtExplanation:Chip_OnDelete_Explanation,
          RunCodeRoute:new SimpleChipRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/Chip_OnDelete": (BuildContext context)                                =>CmpCodePage(
          Title:"Chip OnDelete",
          BackRoute:"/Chip_Simple",
          NextRoute:"/TabBar_Top",
          ItemList:Chip_OnDelete_list,
          CodeRoute:"lib/31_Chip/2_Chip_OnDeleted_Run.dart",
          TabIcon:Icon(Icons.blur_circular),
          ToDo:"We Need To Write A Page That Contain Chips That Can Be Deleted\n",
          TxtExplanation:Chip_OnDelete_Explanation,
          RunCodeRoute:new ChipOnDel(),
        ),


        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/TabBar_Top": (BuildContext context)                                   =>CmpCodePage(
          Title:"Top TabBar",
          BackRoute:"/Chip_OnDelete",
          NextRoute:"/TabBar_Bottom",
          ItemList:TabBar_Top_list,
          CodeRoute:"lib/32_TabBar/1_TopTabBar_Run.dart",
          TabIcon:Icon(Icons.navigation),
          ToDo:"We Need To Write A Page That Show A Top TabBar\n",
          TxtExplanation:TabBar_Top_Explanation,
          RunCodeRoute:new TopTabBar(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/TabBar_Bottom": (BuildContext context)                                =>CmpCodePage(
          Title:"Bottom TabBar",
          BackRoute:"/TabBar_Top",
          NextRoute:"/PageSelector_Simple",
          ItemList:TabBar_Bottom_list,
          CodeRoute:"lib/32_TabBar/2_BottomTabBar_Run.dart",
          TabIcon:Icon(Icons.navigation),
          ToDo:"We Need To Write A Page That Show A Bottom TabBar\n",
          TxtExplanation:TabBar_Bottom_Explanation,
          RunCodeRoute:new BottomTabBar(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/PageSelector_Simple": (BuildContext context)                          =>CmpCodePage(
          Title:"Simple Page Selector",
          BackRoute:"/TabBar_Bottom",
          NextRoute:"/PageSelector_Buttons",
          ItemList:PageSelector_Simple_list,
          CodeRoute:"lib/33_PageSelector/1_PageSelector_Simple_Run.dart",
          TabIcon:Icon(Icons.threesixty),
          ToDo:"We Need To Write A Page That Show A 3 Slidable Page Selector\n",
          TxtExplanation:PageSelector_Simple_Explanation,
          RunCodeRoute:new SimplePageSelector(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/PageSelector_Buttons": (BuildContext context)                         =>CmpCodePage(
          Title:"Page Selector With Buttons",
          BackRoute:"/PageSelector_Simple",
          NextRoute:"/Flex_Image",
          ItemList:PageSelector_Buttons_list,
          CodeRoute:"lib/33_PageSelector/2_PageSelector_Btn_Run.dart",
          TabIcon:Icon(Icons.threesixty),
          ToDo:"We Need To Write A Page That Show A 3 Slidable Page Selector With Next,Prev And Skip button\n",
          TxtExplanation:PageSelector_Buttons_Explanation,
          RunCodeRoute:new SimplePageSelectorBtn(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/Flex_Image": (BuildContext context)                                   =>CmpCodePage(
          Title:"Image Flex",
          BackRoute:"/PageSelector_Buttons",
          NextRoute:"/Flex_RaisedButton",
          ItemList:Flex_Image_list,
          CodeRoute:"lib/34_Flex/1_Image_Flex_Run.dart",
          TabIcon:Icon(Icons.compare_arrows),
          ToDo:"Write A Page Comporting Some Images Where You Have To Flex One Of Them\n",
          TxtExplanation:Flex_Image_Explanation,
          RunCodeRoute:new ImageFlexRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/Flex_RaisedButton": (BuildContext context)                            =>CmpCodePage(
          Title:"Button Flex",
          BackRoute:"/Flex_Image",
          NextRoute:"/Flex_Advanced",
          ItemList:Flex_Button_list,
          CodeRoute:"lib/34_Flex/2_Button_Flex_Run.dart",
          TabIcon:Icon(Icons.compare_arrows),
          ToDo:"Write A Page Comporting Some Buttons Where You Have To Flex One Of Them\n",
          TxtExplanation:Flex_Button_Explanation,
          RunCodeRoute:new RaisedButtonFlexRun(),
        ),


        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/Flex_Advanced": (BuildContext context)                                =>CmpCodePage(
          Title:"Advanced Flex",
          BackRoute:"/Flex_RaisedButton",
          NextRoute:"/ComboBox_Simple",
          ItemList:Flex_Advanced_list,
          CodeRoute:"lib/34_Flex/3_Advanced_Flex_Run.dart",
          TabIcon:Icon(Icons.compare_arrows),
          ToDo:"Write A Page Comporting 3 Containers,When One Clicked Must Flex\n",
          TxtExplanation:Flex_Advanced_Explanation,
          RunCodeRoute:new AdvancedFlexRun(),
        ),


        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/ComboBox_Simple": (BuildContext context)                              =>CmpCodePage(
          Title:"Select ComboBox",
          BackRoute:"/Flex_Advanced",
          NextRoute:"/ExpandableList_Simple",
          ItemList:SelectCombo_list,
          CodeRoute:"lib/35_SelectComboBox/1_SelectComboBox_Run.dart",
          TabIcon:Icon(Icons.arrow_drop_down),
          ToDo:"We Need To Write A Page That Show A Centered Selectable Letters A->G\n",
          TxtExplanation:SelectCombo_Explanation,
          RunCodeRoute:new SelectComboBoxRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/ExpandableList_Simple": (BuildContext context)                        =>CmpCodePage(
          Title:"Simple Expandable List",
          BackRoute:"/ComboBox_Simple",
          NextRoute:"/ExpandableList_Trail",
          ItemList:ExpandableList_Simple_list,
          CodeRoute:"lib/36_ExpandableList/1_Simple_Expandable_List_Run.dart",
          TabIcon:Icon(Icons.tune),
          ToDo:"We Need To Write A Page That Show A Simple Expandable List\n",
          TxtExplanation:ExpandableList_Simple_Explanation,
          RunCodeRoute:new SimpleExpandableListRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/ExpandableList_Trail": (BuildContext context)                        =>CmpCodePage(
          Title:"Expandable List Trail",
          BackRoute:"/ExpandableList_Simple",
          NextRoute:"/ExpandableList_BackColor",
          ItemList:ExpandableList_Trail_list,
          CodeRoute:"lib/36_ExpandableList/2_Expandable_List_Trail_Run.dart",
          TabIcon:Icon(Icons.tune),
          ToDo:"We Need To Write A Page That Show A Expandable List Having ListTiles,each Having Icon Arrow As A Trail\n",
          TxtExplanation:ExpandableList_Trail_Explanation,
          RunCodeRoute:new ExpandableListTrail(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/ExpandableList_BackColor": (BuildContext context)                     =>CmpCodePage(
          Title:"Expandable List BackColor",
          BackRoute:"/ExpandableList_Trail",
          NextRoute:"/ExpandableList_CardsIcons",
          ItemList:ExpandableList_BackColor_list,
          CodeRoute:"lib/36_ExpandableList/3_Expandable_List_BackColor_Run.dart",
          TabIcon:Icon(Icons.tune),
          ToDo:"We Need To Write A Page That Show A Expandable List That Change Its Background Color When Opened\n",
          TxtExplanation:ExpandableList_BackColor_Explanation,
          RunCodeRoute:new ExpandableListBackColor(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/ExpandableList_CardsIcons": (BuildContext context)                    =>CmpCodePage(
          Title:"Expandable List With Cards And Icons",
          BackRoute:"/ExpandableList_BackColor",
          NextRoute:"/ExpandableList_Customized",
          ItemList:ExpandableList_Cards_Icon_list,
          CodeRoute:"lib/36_ExpandableList/4_Expandable_List_With_Card_And_Icon_Run.dart",
          TabIcon:Icon(Icons.tune),
          ToDo:"We Need To Write A Page That Show A Expandable List That Each List Tile Globbed By A Card And Havin Icon\n",
          TxtExplanation:ExpandableList_Cards_Icon_Explanation,
          RunCodeRoute:new ExpandableListCardsIcons(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/ExpandableList_Customized": (BuildContext context)                    =>CmpCodePage(
          Title:"Customized Expandable List",
          BackRoute:"/ExpandableList_CardsIcons",
          NextRoute:"/ExpandableList_Sound",
          ItemList:ExpandableList_Customized_list,
          CodeRoute:"lib/36_ExpandableList/5_Expandable_List_Customized.dart",
          TabIcon:Icon(Icons.tune),
          ToDo:"We Need To Write A Page That Show A Customized Expandable List\n",
          TxtExplanation:ExpandableList_Customized_Explanation,
          RunCodeRoute:new ExpandableListCustomizedRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/ExpandableList_Sound": (BuildContext context)                         =>CmpCodePage(
          Title:"Expandable List Tap Sound",
          BackRoute:"/ExpandableList_Customized",
          NextRoute:"/ExpandableList_Anim",
          ItemList:ExpandableList_Sound_list,
          CodeRoute:"lib/36_ExpandableList/6_Expandable_List_Sound_Run.dart",
          TabIcon:Icon(Icons.tune),
          ToDo:"We Need To Write A Page That Show A Expandable List When Tapped A Sound Must Be Played\n",
          TxtExplanation:ExpandableList_Sound_Explanation,
          RunCodeRoute:new ExpandableListTapSoundRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/ExpandableList_Anim": (BuildContext context)                          =>CmpCodePage(
          Title:"Expandable List Animating ",
          BackRoute:"/ExpandableList_Sound",
          NextRoute:"/Slider_Simple",
          ItemList:ExpandableList_Anim_list,
          CodeRoute:"lib/36_ExpandableList/7_Expandable_List_Anim_Run.dart",
          TabIcon:Icon(Icons.tune),
          ToDo:"We Need To Write A Page That Show A Expandable List Having Animated Quizz Image\n",
          TxtExplanation:ExpandableList_Anim_Explanation,
          RunCodeRoute:new ExpandableListAnimationRun(),
        ),


        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/Slider_Simple": (BuildContext context)                                =>CmpCodePage(
          Title:"Simple Slider",
          BackRoute:"/ExpandableList_Anim",
          NextRoute:"/Slider_Color",
          ItemList:Slider_Simple_list,
          CodeRoute:"lib/37_Slider/1_SimpleSliderRun.dart",
          TabIcon:Icon(Icons.tune),
          ToDo:"We Need To Write A Page That Show A Centered Simple Slider\n",
          TxtExplanation:Slider_Simple_Explanation,
          RunCodeRoute:new SimpSliderRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Slider_Color": (BuildContext context)                                =>CmpCodePage(
          Title:"Simple Color",
          BackRoute:"/Slider_Simple",
          NextRoute:"/Slider_MaxMinDiv",
          ItemList:Slider_Color_list,
          CodeRoute:"lib/37_Slider/2_SliderColorRun.dart",
          TabIcon:Icon(Icons.tune),
          ToDo:"We Need To Write A Page That Show A Centered Simple Slider Where Active Color Is Green And Inactive In Red\n",
          TxtExplanation:Slider_Color_Explanation,
          RunCodeRoute:new SliderColorRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Slider_MaxMinDiv": (BuildContext context)                             =>CmpCodePage(
          Title:"Slider Max Min Division",
          BackRoute:"/Slider_Color",
          NextRoute:"/Drawer_Left",
          ItemList:Slider_MaxMinDiv_list,
          CodeRoute:"lib/37_Slider/3_SliderMinMaxDivRun.dart",
          TabIcon:Icon(Icons.tune),
          ToDo:"We Need To Write A Page That Show A Centered Simple Slider Where Value Go Between 0 And 1000,Each Division 100\n",
          TxtExplanation:Slider_MaxMinDiv_Explanation,
          RunCodeRoute:new SliderMinMaxDivRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/Drawer_Left": (BuildContext context)                                  =>CmpCodePage(
          Title:"Left Drawer",
          BackRoute:"/Slider_MaxMinDiv",
          NextRoute:"/Drawer_Right",
          ItemList:Drawer_Left_list,
          CodeRoute:"lib/38_Drawer/1_Drawer_Left_Run.dart",
          TabIcon:Icon(Icons.menu),
          ToDo:"We Need To Write A Page That Show A Left Side Drawer\n",
          TxtExplanation:Drawer_Left_Explanation,
          RunCodeRoute:new LeftDrawerRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Drawer_Right": (BuildContext context)                                 =>CmpCodePage(
          Title:"Right Drawer",
          BackRoute:"/Drawer_Left",
          NextRoute:"/MainSplashScreen_Simple",
          ItemList:Drawer_Right_list,
          CodeRoute:"lib/38_Drawer/2_Drawer_Right_Run.dart",
          TabIcon:Icon(Icons.menu),
          ToDo:"We Need To Write A Page That Show A Right Side Drawer\n",
          TxtExplanation:Drawer_Right_Explanation,
          RunCodeRoute:new RightDrawerRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/MainSplashScreen_Simple": (BuildContext context)                      =>CmpCodePage(
          Title:"Main Splash Screen",
          BackRoute:"/Drawer_Right",
          NextRoute:"/Admob_Intro",
          ItemList:MainSplashScreen_list,
          CodeRoute:"lib/39_SplashScreenLoading/MainSplashScreenRun.dart",
          TabIcon:Icon(Icons.adb),
          ToDo: "We Need To Show A Page Having Centered Text,But Before Showing That Page We Need A Loader That Last For 5 Seconds\n",
          TxtExplanation:MainSplashScreen_Explanation,
          RunCodeRoute:new MainSplashScreenRun(),
        ),



        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------



        "/Admob_Intro": (BuildContext context)                                  =>CmpIntroPage(
          Title:"Admob Intro",
          BackRoute:"/MainSplashScreen_Simple",
          NextRoute:"/Admob_Banner",
          ItemList:Admob_Intro_CompList,
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/Admob_Banner": (BuildContext context)                                 =>CmpCodePage(
          Title:"Admob Banner",
          BackRoute:"/Main",
          NextRoute:"/Admob_Interstitial",
          ItemList:Admob_Banner_list,
          CodeRoute:"lib/40_Admob/2_AdmobBanner_Run.dart",
          TabIcon:Icon(Icons.adb),
          ToDo: "Write A Page That Show Banner",
          TxtExplanation:Admob_Banner_Explanation,
          RunCodeRoute:new AdmobBannerRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/Admob_Interstitial": (BuildContext context)                           =>CmpCodePage(
          Title:"Admob Interstitial",
          BackRoute:"/Admob_Banner",
          NextRoute:"/FlipCard_Intro",
          ItemList:Admob_Interstitial_list,
          CodeRoute:"lib/40_Admob/3_AdmobInterstitial_Run.dart",
          TabIcon:Icon(Icons.adb),
          ToDo: "Write A Page That Show Interstitial When:\n1-Loaded\n2-Button Clicked",
          TxtExplanation:Admob_Interstitial_Explanation,
          RunCodeRoute:new AdmobInterstitialRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/FlipCard_Intro": (BuildContext context)                               =>CmpIntroPage(
          Title:"FlipCard Intro",
          BackRoute:"/Admob_Interstitial",
          NextRoute:"/FlipCard_Hor",
          ItemList:FlipCard_Intro_CompList,
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/FlipCard_Hor": (BuildContext context)                                 =>CmpCodePage(
          Title:"Horizontal Flip Card",
          BackRoute:"/FlipCard_Intro",
          NextRoute:"/FlipCard_Ver",
          ItemList:FlipCard_Hor_list,
          CodeRoute:"lib/41_FlipCard/2_FlipCardHor_Run.dart",
          TabIcon:Icon(Icons.flip_to_back),
          ToDo:"Write a Page That Display A Flip Card That Flip Horizontally\n",
          TxtExplanation:FlipCard_Hor_Explanation,
          RunCodeRoute:new FlipCardHorRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/FlipCard_Ver": (BuildContext context)                                 =>CmpCodePage(
          Title:"Vertical Flip Card",
          BackRoute:"/FlipCard_Hor",
          NextRoute:"/FlipView_Intro",
          ItemList:FlipCard_Ver_list,
          CodeRoute:"lib/41_FlipCard/3_FlipCardVert_Run.dart",
          TabIcon:Icon(Icons.flip_to_back),
          ToDo:"Write a Page That Display A Flip Card That Flip Vertically\n",
          TxtExplanation:FlipCard_Ver_Explanation,
          RunCodeRoute:new FlipCardVertRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/FlipView_Intro": (BuildContext context)                               =>CmpIntroPage(
          Title:"FlipView Intro",
          BackRoute:"/FlipCard_Ver",
          NextRoute:"/FlipView_Simple",
          ItemList:FlipView_Intro_CompList,
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/FlipView_Simple": (BuildContext context)                              =>CmpCodePage(
          Title:"Simple FlipView",
          BackRoute:"/FlipView_Intro",
          NextRoute:"/Stepper_Intro",
          ItemList:FlipView_Simple_list,
          CodeRoute:"lib/42_FlipView/2_SimpleFlipView.dart",
          TabIcon:Icon(Icons.flip),
          ToDo:"Write a Page That Display A Flip Card Using Flip View\n",
          TxtExplanation:FlipView_Simple_Explanation,
          RunCodeRoute:new SimpleFlipViewRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Stepper_Intro": (BuildContext context)                                =>CmpIntroPage(
          Title:"Stepper Intro",
          BackRoute:"/FlipView_Simple",
          NextRoute:"/Stepper_Hor",
          ItemList:SPI_Intro_CompList,
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Stepper_Hor": (BuildContext context)                                  =>CmpCodePage(
          Title:"Horizontal Stepper",
          BackRoute:"/Stepper_Intro",
          NextRoute:"/Stepper_Ver",
          ItemList:Stepper_Hor_list,
          CodeRoute:"lib/43_Stepper/2_StepperHor_Run.dart",
          TabIcon:Icon(Icons.format_line_spacing),
          ToDo:"Write a Page That Display Simple Stepper That Step Horizontally\n",
          TxtExplanation:Stepper_Hor_Explanation,
          RunCodeRoute:new StepperHorRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Stepper_Ver": (BuildContext context)                                  =>CmpCodePage(
          Title:"Vertical Stepper",
          BackRoute:"/Stepper_Hor",
          NextRoute:"/BottomSheet_Simple",
          ItemList:Stepper_Ver_list,
          CodeRoute:"lib/43_Stepper/3_StepperVer_Run.dart",
          TabIcon:Icon(Icons.format_line_spacing),
          ToDo:"Write a Page That Display Simple Stepper That Step Vertically\n",
          TxtExplanation:Stepper_Ver_Explanation,
          RunCodeRoute:new StepperVerRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/BottomSheet_Simple": (BuildContext context)                           =>CmpCodePage(
          Title:"Simple Bottom Sheet",
          BackRoute:"/Stepper_Ver",
          NextRoute:"/SPI_Intro",
          ItemList:BottomSheet_Simple_CompList,
          CodeRoute:"lib/44_BottomSheet/SimpleBottomSheetRun.dart",
          TabIcon:Icon(Icons.dashboard),
          ToDo:"Write a Page That Display A Floating Action Button That Open A Bottom Sheet When Clicked\n",
          TxtExplanation:BottomSheet_Simple_Explanation,
          RunCodeRoute:new BottomSheetRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/SPI_Intro": (BuildContext context)                                    =>CmpIntroPage(
          Title:"Smooth Page Indicator Intro",
          BackRoute:"/BottomSheet_Simple",
          NextRoute:"/SPI_Worm",
          ItemList:SPI_Intro_CompList,
        ),


        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/SPI_Worm": (BuildContext context)                                     =>CmpCodePage(
          Title:"SPI Worm Effect",
          BackRoute:"/SPI_Intro",
          NextRoute:"/SPI_ExpDots",
          ItemList:SPI_Worm_list,
          CodeRoute:"lib/45_SmoothPageIndicator/2_SPI_Worm_Run.dart",
          TabIcon:Icon(Icons.slideshow),
          ToDo:"Write a Page That Display Simple PageView With Worm Smooth Page Indicator Effect\n",
          TxtExplanation:SPI_Worm_Explanation,
          RunCodeRoute:new SPIWormRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/SPI_ExpDots": (BuildContext context)                                  =>CmpCodePage(
          Title:"SPI Expanding Dots Effect",
          BackRoute:"/SPI_Worm",
          NextRoute:"/SPI_JmpDots",
          ItemList:SPI_ExpDots_list,
          CodeRoute:"lib/45_SmoothPageIndicator/3_SPI_ExpDots_Run.dart",
          TabIcon:Icon(Icons.slideshow),
          ToDo:"Write a Page That Display Simple PageView With Expanding Dots Page Indicator Effect\n",
          TxtExplanation:SPI_ExpDots_Explanation,
          RunCodeRoute:new SPIExpDotsRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/SPI_JmpDots": (BuildContext context)                                  =>CmpCodePage(
          Title:"SPI Jumping Dots Effect",
          BackRoute:"/SPI_ExpDots",
          NextRoute:"/SPI_ScrollDots",
          ItemList:SPI_JmpDots_list,
          CodeRoute:"lib/45_SmoothPageIndicator/4_SPI_JumpDots_Run.dart",
          TabIcon:Icon(Icons.slideshow),
          ToDo:"Write a Page That Display Simple PageView With Jumping Dots Page Indicator Effect\n",
          TxtExplanation:SPI_JmpDots_Explanation,
          RunCodeRoute:new SPIJmpDotsRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/SPI_ScrollDots": (BuildContext context)                               =>CmpCodePage(
          Title:"SPI Scroll Dots Effect",
          BackRoute:"/SPI_JmpDots",
          NextRoute:"/SPI_Scale",
          ItemList:SPI_ScrollDots_list,
          CodeRoute:"lib/45_SmoothPageIndicator/5_SPI_ScrollDots_Run.dart",
          TabIcon:Icon(Icons.slideshow),
          ToDo:"Write a Page That Display Simple PageView With Scroll Dots Page Indicator Effect\n",
          TxtExplanation:SPI_ScrollDots_Explanation,
          RunCodeRoute:new SPIScrollDotsRun(),
        ),


        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/SPI_Scale": (BuildContext context)                                    =>CmpCodePage(
          Title:"SPI Scale Effect",
          BackRoute:"/SPI_ScrollDots",
          NextRoute:"/SPI_Slider",
          ItemList:SPI_Scale_list,
          CodeRoute:"lib/45_SmoothPageIndicator/6_SPI_Scale_Run.dart",
          TabIcon:Icon(Icons.slideshow),
          ToDo:"Write a Page That Display Simple PageView With Scale Page Indicator Effect\n",
          TxtExplanation:SPI_Scale_Explanation,
          RunCodeRoute:new SPIScaleRun(),
        ),


        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/SPI_Slider": (BuildContext context)                                   =>CmpCodePage(
          Title:"SPI Slider Effect",
          BackRoute:"/SPI_Scale",
          NextRoute:"/Expandable_Intro",
          ItemList:SPI_Slide_list,
          CodeRoute:"lib/45_SmoothPageIndicator/7_SPI_Slide_Run.dart",
          TabIcon:Icon(Icons.slideshow),
          ToDo:"Write a Page That Display Simple PageView With Slide Page Indicator Effect\n",
          TxtExplanation:SPI_Slide_Explanation,
          RunCodeRoute:new SPISlideRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------



        "/Expandable_Intro": (BuildContext context)                     => CmpIntroPage(
          Title:"Expandable Intro",
          BackRoute:"/SPI_Slider",
          NextRoute:"/Simple_Expandable",
          ItemList:Expandable_Intro_CompList,
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Simple_Expandable": (BuildContext context)              => CmpCodePage(
          Title:"Simple Expandable",
          BackRoute:"/Expandable_Intro",
          NextRoute:"/Marquee_Intro",
          ItemList:SimpleExpandable_list,
          CodeRoute:"lib/46_Expandable/Simple_Expandable_Run.dart",
          TabIcon:Icon(Icons.expand_less),
          ToDo:"We Need To Write A Page That Show An Centered Expandable Having Texts As An Body",
          TxtExplanation:SimpleExpandable_Explanation,
          RunCodeRoute:new SimpleExpandableRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Marquee_Intro": (BuildContext context)                     => CmpIntroPage(
          Title:"Marquee Intro",
          BackRoute:"/Simple_Expandable",
          NextRoute:"/Marquee_Simple",
          ItemList:Marquee_Intro_CompList,
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Marquee_Simple": (BuildContext context)                   => CmpCodePage(
          Title:"Simple Marquee",
          BackRoute:"/Marquee_Intro",
          NextRoute:"/Marquee_ScrollAxis",
          ItemList:SimpleMarquee_list,
          CodeRoute:"lib/47_Marquee/1_SimpleMarquee_Run.dart",
          TabIcon:Icon(Icons.forward),
          ToDo:"We Need To Write A Page That Show An AppBar Having Marquee Title,Centered Marquee Inside A Card.",
          TxtExplanation:SimpleMarquee_Explanation,
          RunCodeRoute:new SimpleMarquee(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Marquee_ScrollAxis": (BuildContext context)           => CmpCodePage(
          Title:"Marquee ScrollAxis",
          BackRoute:"/Marquee_Simple",
          NextRoute:"/Marquee_CrossAxis",
          ItemList:MarqueeScrollAxis_list,
          CodeRoute:"lib/47_Marquee/2_Marquee_ScrollAxis_Run.dart",
          TabIcon:Icon(Icons.forward),
          ToDo:"We Need To Write A Page Taking 2 Marquee,First Scroll Horizontally,Second vertically",
          TxtExplanation:SimpleMarquee_Explanation,
          RunCodeRoute:new MarqueeScrollAxis(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Marquee_CrossAxis": (BuildContext context)           => CmpCodePage(
          Title:"Marquee CrossAxis",
          BackRoute:"/Marquee_ScrollAxis",
          NextRoute:"/Marquee_PauseAfterRound",
          ItemList:MarqueeCrossAxis_list,
          CodeRoute:"lib/47_Marquee/3_Marquee_CrossAxisAlignement_Run.dart",
          TabIcon:Icon(Icons.forward),
          ToDo:"We Need To Write A Page Taking Marquees,Show All Options Horizontally And Vertically",
          TxtExplanation:MarqueeCrossAxis_Explanation,
          RunCodeRoute:new MarqueeCrossAxis(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Marquee_PauseAfterRound": (BuildContext context)           => CmpCodePage(
          Title:"Marquee Pause After Round ",
          BackRoute:"/Marquee_CrossAxis",
          NextRoute:"/Marquee_AccelerationDuration",
          ItemList:MarqueePauseAfterRound_list,
          CodeRoute:"lib/47_Marquee/4_Marquee_PauseAfterRound_Run.dart",
          TabIcon:Icon(Icons.forward),
          ToDo:"We Need To Write A Page Taking 2 Marquee,First Pause After Round Duration Take 2secs The Second Take 5secs",
          TxtExplanation:MarqueePauseAfterRound_Explanation,
          RunCodeRoute:new MarqueePauseAfterRound(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Marquee_AccelerationDuration": (BuildContext context)           => CmpCodePage(
          Title:"Marquee Acceleration Duration",
          BackRoute:"/Marquee_PauseAfterRound",
          NextRoute:"/ContainerWaves_Intro",
          ItemList:MarqueeAccelerationDuration_list,
          CodeRoute:"lib/47_Marquee/5_Marquee_AccelerationDuration_Run.dart",
          TabIcon:Icon(Icons.forward),
          ToDo:"We Need To Write A Page Taking 2 Marquee,First Acceleration Duration Take 2secs The Second Take 5secs",
          TxtExplanation:MarqueeAccelerationDuration_Explanation,
          RunCodeRoute:new MarqueeAccelerationDur(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/ContainerWaves_Intro": (BuildContext context)                     => CmpIntroPage(
          Title:"Marquee Intro",
          BackRoute:"/Marquee_AccelerationDuration",
          NextRoute:"/ContainerWaves_Simple",
          ItemList:ContainerWaves_Intro_CompList,
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/ContainerWaves_Simple": (BuildContext context)           => CmpCodePage(
          Title:"Container Waves",
          BackRoute:"/ContainerWaves_Intro",
          NextRoute:"/RouteTransition_Intro",
          ItemList:ContainerWaves_list,
          CodeRoute:"lib/48_ContainerWaves/ContainerWaves_Simple_Run.dart",
          TabIcon:Icon(Icons.exposure),
          ToDo:"We Need To Write A Page That Container A Card Having Waves",
          TxtExplanation:ContainerWaves_Explanation,
          RunCodeRoute:new ContainerWaveRun(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/RouteTransition_Intro": (BuildContext context)                     => CmpIntroPage(
          Title:"Route Transition Introduction",
          BackRoute:"/ContainerWaves_Simple",
          NextRoute:"/RouteTransition_SlideRight",
          ItemList:RouteTransition_Intro_CompList,
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/RouteTransition_SlideRight": (BuildContext context)           => CmpCodePage(
          Title:"Route Transition Slide Right",
          BackRoute:"/RouteTransition_Intro",
          NextRoute:"/RouteTransition_SlideLeft",
          ItemList:RouteTransition_SlideRight_list,
          CodeRoute:"lib/49_RouteTransition/1_RouteTransition_SlideRight.dart",
          TabIcon:Icon(Icons.keyboard_arrow_right),
          ToDo:"We Need To Write A Page1 Containing A Button That Take The User To Page2 Using Slide Right Transition",
          TxtExplanation:RouteTransition_SlideRight_Explanation,
          RunCodeRoute:new SlideRightMain(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/RouteTransition_SlideLeft": (BuildContext context)           => CmpCodePage(
          Title:"Route Transition Slide Left",
          BackRoute:"/RouteTransition_SlideRight",
          NextRoute:"/RouteTransition_SlideUp",
          ItemList:RouteTransition_SlideLeft_list,
          CodeRoute:"lib/49_RouteTransition/2_RouteTransition_SlideLeft.dart",
          TabIcon:Icon(Icons.keyboard_arrow_right),
          ToDo:"We Need To Write A Page1 Containing A Button That Take The User To Page2 Using Slide Left Transition",
          TxtExplanation:RouteTransition_SlideLeft_Explanation,
          RunCodeRoute:new SlideLeftMain(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/RouteTransition_SlideUp": (BuildContext context)           => CmpCodePage(
          Title:"Route Transition Slide Up",
          BackRoute:"/RouteTransition_SlideLeft",
          NextRoute:"/RouteTransition_SlideDown",
          ItemList:RouteTransition_SlideUp_list,
          CodeRoute:"lib/49_RouteTransition/3_RouteTransition_SlideUp.dart",
          TabIcon:Icon(Icons.keyboard_arrow_right),
          ToDo:"We Need To Write A Page1 Containing A Button That Take The User To Page2 Using Slide Up Transition",
          TxtExplanation:RouteTransition_SlideUp_Explanation,
          RunCodeRoute:new SlideUpMain(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/RouteTransition_SlideDown": (BuildContext context)           => CmpCodePage(
          Title:"Route Transition Slide Down",
          BackRoute:"/RouteTransition_SlideUp",
          NextRoute:"/RouteTransition_Scale",
          ItemList:RouteTransition_SlideDown_list,
          CodeRoute:"lib/49_RouteTransition/4_RouteTransition_SlideDown.dart",
          TabIcon:Icon(Icons.keyboard_arrow_right),
          ToDo:"We Need To Write A Page1 Containing A Button That Take The User To Page2 Using Slide Down Transition",
          TxtExplanation:RouteTransition_SlideDown_Explanation,
          RunCodeRoute:new SlideDownMain(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/RouteTransition_Scale": (BuildContext context)            => CmpCodePage(
          Title:"Route Transition Scale",
          BackRoute:"/RouteTransition_SlideDown",
          NextRoute:"/RouteTransition_Rotate",
          ItemList:RouteTransition_Scale_list,
          CodeRoute:"lib/49_RouteTransition/5_RouteTransition_Scale.dart",
          TabIcon:Icon(Icons.keyboard_arrow_right),
          ToDo:"We Need To Write A Page1 Containing A Button That Take The User To Page2 Using Scale Transition",
          TxtExplanation:RouteTransition_Scale_Explanation,
          RunCodeRoute:new ScaleMain(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/RouteTransition_Rotate": (BuildContext context)            => CmpCodePage(
          Title:"Route Transition Rotate",
          BackRoute:"/RouteTransition_Scale",
          NextRoute:"/RouteTransition_Size",
          ItemList:RouteTransition_Rotate_list,
          CodeRoute:"lib/49_RouteTransition/6_RouteTransition_Rotate.dart",
          TabIcon:Icon(Icons.keyboard_arrow_right),
          ToDo:"We Need To Write A Page1 Containing A Button That Take The User To Page2 Using Rotate Transition",
          TxtExplanation:RouteTransition_Rotate_Explanation,
          RunCodeRoute:new RotateMain(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/RouteTransition_Size": (BuildContext context)            => CmpCodePage(
          Title:"Route Transition Size",
          BackRoute:"/RouteTransition_Rotate",
          NextRoute:"/RouteTransition_Fade",
          ItemList:RouteTransition_Size_list,
          CodeRoute:"lib/49_RouteTransition/7_RouteTransition_Size.dart",
          TabIcon:Icon(Icons.keyboard_arrow_right),
          ToDo:"We Need To Write A Page1 Containing A Button That Take The User To Page2 Using Size Transition",
          TxtExplanation:RouteTransition_Size_Explanation,
          RunCodeRoute:new SizeTransMain(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/RouteTransition_Fade": (BuildContext context)            => CmpCodePage(
          Title:"Route Transition Fade",
          BackRoute:"/RouteTransition_Size",
          NextRoute:"/FlutterSyntaxe_Intro",
          ItemList:RouteTransition_Fade_list,
          CodeRoute:"lib/49_RouteTransition/8_RouteTransition_Fade.dart",
          TabIcon:Icon(Icons.keyboard_arrow_right),
          ToDo:"We Need To Write A Page1 Containing A Button That Take The User To Page2 Using Fade Transition",
          TxtExplanation:RouteTransition_Fade_Explanation,
          RunCodeRoute:new FadeTransMain(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/FlutterSyntaxe_Intro": (BuildContext context)                   => CmpIntroPage(
          Title:"Flutter Syntaxe Introduction",
          BackRoute:"/RouteTransition_Fade",
          NextRoute:"/FlutterSyntaxe_CodeView",
          ItemList:DartSyntaxeHighlight_Intro_CompList,
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/FlutterSyntaxe_CodeView": (BuildContext context)           => CmpCodePage(
          Title:"Flutter Syntaxe Code View",
          BackRoute:"/FlutterSyntaxe_Intro",
          NextRoute:"/FlutterSyntaxe_CodeAndSourceView",
          ItemList:FlutterSyntaxe_CodeView_list,
          CodeRoute:"lib/50_Flutter_Syntaxe/1_FlutterSyntaxe_CodeView_Run.dart",
          TabIcon:Icon(Icons.highlight),
          ToDo:"We Need To Write A Page That Show Code Highlited Using Dart",
          TxtExplanation:FlutterSyntaxe_CodeView_Explanation,
          RunCodeRoute:new FlutterSyntaxeCodeView(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/FlutterSyntaxe_CodeAndSourceView": (BuildContext context)           => CmpCodePage(
          Title:"Flutter Syntaxe Code And Source View",
          BackRoute:"/FlutterSyntaxe_CodeView",
          NextRoute:"/SlidingUpPanel_Intro",
          ItemList:FlutterSyntaxe_CodeAndSourceView_list,
          CodeRoute:"lib/50_Flutter_Syntaxe/2_FlutterSyntaxe_CodeAndSourceView_Run.dart",
          TabIcon:Icon(Icons.highlight),
          ToDo:"We Need To Write A Page That Show Code Highlited Using Dart",
          TxtExplanation:FlutterSyntaxe_CodeAndSourceView_Explanation,
          RunCodeRoute:new FlutterSyntaxeCodeAndSourceView(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/SlidingUpPanel_Intro": (BuildContext context)                   => CmpIntroPage(
          Title:"Sliding Up Panel Introduction",
          BackRoute:"/FlutterSyntaxe_CodeAndSourceView",
          NextRoute:"/SlidingUpPanel_Simple",
          ItemList:SlidingUpPanel_Intro_CompList,
        ),

        //----------------------------------------------------------------------------------
        //----------------------------------------------------------------------------------

        "/SlidingUpPanel_Simple": (BuildContext context)                        => CmpCodePage(
          Title:"Simple Sliding Up Panel",
          BackRoute:"/SlidingUpPanel_Intro",
          NextRoute:"/PopupMenuButton_AppBar",
          ItemList:SlidingUpPanel_Simple_list,
          CodeRoute:"lib/51_SlidingUpPanel/1_Simple_Sliding_Up_Panel_Run.dart",
          TabIcon:Icon(Icons.open_in_browser),
          ToDo:"Create A Page Containing A Simple Sliding Up Panel",
          TxtExplanation:SlidingUpPanel_Simple_Explanation,
          RunCodeRoute:new SimpleSlidingUpPanel(),
        ),

        //----------------------------------------------------------------------------------
        //----------------------------------------------------------------------------------

        "/PopupMenuButton_AppBar": (BuildContext context)                        => CmpCodePage(
          Title:"AppBar Popup Menu Button",
          BackRoute:"/SlidingUpPanel_Simple",
          NextRoute:"/PopupMenuButton_ListTile",
          ItemList:PopupMenuButton_AppBar_list,
          CodeRoute:"lib/52_Popup_Menu_Button/1_Simple_AppBar_Popup_Menu_Button.dart",
          TabIcon:Icon(Icons.more_vert),
          ToDo:"Create A Page Containing A PopupMenu In The AppBar",
          TxtExplanation:PopupMenuButton_AppBar_Explanation,
          RunCodeRoute:new SimpleAppBarPopupMenuButton(),
        ),

        //----------------------------------------------------------------------------------
        //----------------------------------------------------------------------------------


        "/PopupMenuButton_ListTile": (BuildContext context)                        => CmpCodePage(
          Title:"ListTile Popup Menu Button",
          BackRoute:"/PopupMenuButton_AppBar",
          NextRoute:"/Hero_Simple",
          ItemList:PopupMenuButton_ListTile_list,
          CodeRoute:"lib/52_Popup_Menu_Button/2_ListTile_Popup_Menu_Button.dart",
          TabIcon:Icon(Icons.more_vert),
          ToDo:"Create A Page Containing A PopupMenu In ListTile",
          TxtExplanation:PopupMenuButton_ListTile_Explanation,
          RunCodeRoute:new ListTilePopupMenuButton(),
        ),

        //----------------------------------------------------------------------------------
        //----------------------------------------------------------------------------------

        "/Hero_Simple": (BuildContext context)                        => CmpCodePage(
          Title:"Simple Hero Animation",
          BackRoute:"/PopupMenuButton_ListTile",
          NextRoute:"/Hero_Advanced",
          ItemList:Hero_Simple_list,
          CodeRoute:"lib/53_Hero_Animation/1_Simple_Hero.dart",
          TabIcon:Icon(Icons.wallpaper),
          ToDo:"Create A Page Containing A Simple ListTiles Having Images As Leading,Playing Hero Animation When Tapped",
          TxtExplanation:Hero_Simple_Explanation,
          RunCodeRoute:new SimpleHero(),
        ),

        //----------------------------------------------------------------------------------
        //----------------------------------------------------------------------------------

        "/Hero_Advanced": (BuildContext context)                        => CmpCodePage(
          Title:"Advanced Hero Animation",
          BackRoute:"/Hero_Simple",
          NextRoute:"/AvatarGlow_Intro",
          ItemList:Hero_Advanced_list,
          CodeRoute:"lib/53_Hero_Animation/2_Advanced_Hero.dart",
          TabIcon:Icon(Icons.wallpaper),
          ToDo:"Create A Page Containing A PageView Taking Images,Once Tapped hero Animation Must Be Played",
          TxtExplanation:Hero_Advanced_Explanation,
          RunCodeRoute:new AdvancedHeroRun(),
        ),

        //----------------------------------------------------------------------------------
        //----------------------------------------------------------------------------------

        "/AvatarGlow_Intro": (BuildContext context)                        => CmpIntroPage(
          Title:"Avatar Glow Intro",
          BackRoute:"/Hero_Advanced",
          NextRoute:"/AvatarGlow_1Glow",
          ItemList:AvatarGlow_Intro_CompList,
        ),

        //----------------------------------------------------------------------------------
        //----------------------------------------------------------------------------------

        "/AvatarGlow_1Glow": (BuildContext context)                        => CmpCodePage(
          Title:"Avatar Glow 1 Glow",
          BackRoute:"/AvatarGlow_Intro",
          NextRoute:"/AvatarGlow_2Glow",
          ItemList:AvatarGlow_1Glow_list,
          CodeRoute:"lib/54_AvatarGlow/1_AvatarGlow_1Glow.dart",
          TabIcon:Icon(Icons.wifi_tethering),
          ToDo:"Create A Page Containing In A Center Layout AvatarGlow Taking An Circle Image With 1 Glow",
          TxtExplanation:AvatarGlow_1Glow_Explanation,
          RunCodeRoute:new Avatar1Glow(),
        ),

        //----------------------------------------------------------------------------------
        //----------------------------------------------------------------------------------

        "/AvatarGlow_2Glow": (BuildContext context)                        => CmpCodePage(
          Title:"Avatar Glow 2 Glow",
          BackRoute:"/AvatarGlow_1Glow",
          NextRoute:"/AvatarGlow_More",
          ItemList:AvatarGlow_2Glow_list,
          CodeRoute:"lib/54_AvatarGlow/2_AvatarGlow_2Glow.dart",
          TabIcon:Icon(Icons.wifi_tethering),
          ToDo:"Create A Page Containing In A Center Layout AvatarGlow Taking An Circle Image With 2 Glow",
          TxtExplanation:AvatarGlow_2Glow_Explanation,
          RunCodeRoute:new Avatar2Glow(),
        ),

        //----------------------------------------------------------------------------------
        //----------------------------------------------------------------------------------

        "/AvatarGlow_More": (BuildContext context)                        => CmpCodePage(
          Title:"Avatar Glow More",
          BackRoute:"/AvatarGlow_2Glow",
          NextRoute:"/DataTable_Simple",
          ItemList:AvatarGlow_More_list,
          CodeRoute:"lib/54_AvatarGlow/3_AvatarGlow_More.dart",
          TabIcon:Icon(Icons.wifi_tethering),
          ToDo:"Create A Page Containing Avatar Glows With Different EndRadius And Glow\n\n",
          TxtExplanation:AvatarGlow_More_Explanation,
          RunCodeRoute:new AvatarGlowMore(),
        ),

        //----------------------------------------------------------------------------------
        //----------------------------------------------------------------------------------

        "/DataTable_Simple": (BuildContext context)                        => CmpCodePage(
          Title:"Simple Data Table",
          BackRoute:"/AvatarGlow_More",
          NextRoute:"/DataTable_Sort",
          ItemList:DataTable_Simple_list,
          CodeRoute:"lib/55_DataTable/1_DataTable_Simple.dart",
          TabIcon:Icon(Icons.table_chart),
          ToDo:"Create A Page Containing A Simple DataTable With Fixed Data",
          TxtExplanation:DataTable_Simple_Explanation,
          RunCodeRoute:new SimpleDataTable(),
        ),

        //----------------------------------------------------------------------------------
        //----------------------------------------------------------------------------------

        "/DataTable_Sort": (BuildContext context)                        => CmpCodePage(
          Title:"Data Table Sort",
          BackRoute:"/DataTable_Simple",
          NextRoute:"/DataTable_Insert",
          ItemList:DataTable_Sort_list,
          CodeRoute:"lib/55_DataTable/2_DataTable_Sort.dart",
          TabIcon:Icon(Icons.table_chart),
          ToDo:"Create A Page Containing A Simple DataTable With Fixed Data,Allow Sorting By Columns",
          TxtExplanation:DataTable_Sort_Explanation,
          RunCodeRoute:new SortDataTable(),
        ),

        //----------------------------------------------------------------------------------
        //----------------------------------------------------------------------------------

        "/DataTable_Insert": (BuildContext context)                        => CmpCodePage(
          Title:"Data Table Insert",
          BackRoute:"/DataTable_Sort",
          NextRoute:"/DataTable_Update",
          ItemList:DataTable_Insert_list,
          CodeRoute:"lib/55_DataTable/3_DataTable_Insert.dart",
          TabIcon:Icon(Icons.table_chart),
          ToDo:"Create A Page Containing A Simple DataTable Where User Can Insert New Data To The DataTable",
          TxtExplanation:DataTable_Insert_Explanation,
          RunCodeRoute:new InsertDataTable(),
        ),

        //----------------------------------------------------------------------------------
        //----------------------------------------------------------------------------------

        "/DataTable_Update": (BuildContext context)                        => CmpCodePage(
          Title:"Data Table Update",
          BackRoute:"/DataTable_Insert",
          NextRoute:"/DataTable_Delete",
          ItemList:DataTable_Update_list,
          CodeRoute:"lib/55_DataTable/4_DataTable_Update.dart",
          TabIcon:Icon(Icons.table_chart),
          ToDo:"Create A Page Containing A Simple DataTable Where User Can Update Data From The DataTable",
          TxtExplanation:DataTable_Update_Explanation,
          RunCodeRoute:new UpdateDataTable(),
        ),

        //----------------------------------------------------------------------------------
        //----------------------------------------------------------------------------------

        "/DataTable_Delete": (BuildContext context)                        => CmpCodePage(
          Title:"Data Table Delete",
          BackRoute:"/DataTable_Update",
          NextRoute:"/DataTable_DeleteAll",
          ItemList:DataTable_Delete_list,
          CodeRoute:"lib/55_DataTable/5_DataTable_Delete.dart",
          TabIcon:Icon(Icons.table_chart),
          ToDo:"Create A Page Containing A Simple DataTable Where User Can Delete Data From The DataTable",
          TxtExplanation:DataTable_Delete_Explanation,
          RunCodeRoute:new DeleteDataTable(),
        ),

        //----------------------------------------------------------------------------------
        //----------------------------------------------------------------------------------

        "/DataTable_DeleteAll": (BuildContext context)                        => CmpCodePage(
          Title:"Data Table DeleteAll",
          BackRoute:"/DataTable_Delete",
          NextRoute:"/WebView_Intro",
          ItemList:DataTable_DeleteAll_list,
          CodeRoute:"lib/55_DataTable/6_DataTable_DeleteAll.dart",
          TabIcon:Icon(Icons.table_chart),
          ToDo:"Create A Page Containing A Simple DataTable With DeleteAll Button,Once Clicked All Data Must Be Cleared From DataTable",
          TxtExplanation:DataTable_DeleteAll_Explanation,
          RunCodeRoute:new DeleteAllDataTable(),
        ),

        //----------------------------------------------------------------------------------
        //----------------------------------------------------------------------------------

        "/WebView_Intro": (BuildContext context)                        => CmpIntroPage(
          Title:"WebView Intro",
          BackRoute:"/DataTable_DeleteAll",
          NextRoute:"/WebView_Simple",
          ItemList:WebView_Intro_CompList,
        ),

        //----------------------------------------------------------------------------------
        //----------------------------------------------------------------------------------

        "/WebView_Simple": (BuildContext context)                        => CmpCodePage(
          Title:"Simple WebView",
          BackRoute:"/WebView_Intro",
          NextRoute:"/BackDrop_Intro",
          ItemList:WebView_Simple_list,
          CodeRoute:"lib/56_WebView/1_WebView_Simple.dart",
          TabIcon:Icon(Icons.web_asset),
          ToDo:"Create A Page Containing Icon And A Button,Once Button Is Clicked Load Any Web Page",
          TxtExplanation:WebView_Simple_Explanation,
          RunCodeRoute:new SimpleWebView(),
        ),

        //----------------------------------------------------------------------------------
        //----------------------------------------------------------------------------------

        "/BackDrop_Intro": (BuildContext context)                        => CmpIntroPage(
          Title:"BackDrop Intro",
          BackRoute:"/WebView_Simple",
          NextRoute:"/BackDrop_Left",
          ItemList:BackDrop_Intro_CompList,
        ),

        //----------------------------------------------------------------------------------
        //----------------------------------------------------------------------------------
        "/BackDrop_Left": (BuildContext context)                        => CmpCodePage(
          Title:"Left BackDrop",
          BackRoute:"/BackDrop_Intro",
          NextRoute:"/BackDrop_Right",
          ItemList:BackDrop_Left_List,
          CodeRoute:"lib/57_BackDrop/1_BackDrop_Left.dart",
          TabIcon:Icon(Icons.menu),
          ToDo:"Create A Page Containing Taking A Left Icon BackDrop",
          TxtExplanation:BackDrop_Left_Explanation,
          RunCodeRoute:new SimpleLeftBackDrop(),
        ),

        //----------------------------------------------------------------------------------
        //----------------------------------------------------------------------------------

        "/BackDrop_Right": (BuildContext context)                        => CmpCodePage(
          Title:"Right BackDrop",
          BackRoute:"/BackDrop_Left",
          NextRoute:"/BackDrop_Custom",
          ItemList:BackDrop_Right_List,
          CodeRoute:"lib/57_BackDrop/2_BackDrop_Right.dart",
          TabIcon:Icon(Icons.menu),
          ToDo:"Create A Page Containing Taking A Right Icon BackDrop",
          TxtExplanation:BackDrop_Right_Explanation,
          RunCodeRoute:new SimpleRightBackDrop(),
        ),

        //----------------------------------------------------------------------------------
        //----------------------------------------------------------------------------------

        "/BackDrop_Custom": (BuildContext context)                        => CmpCodePage(
          Title:"Custiom BackDrop",
          BackRoute:"/BackDrop_Right",
          NextRoute:"/Animated_Icons",
          ItemList:BackDrop_Custom_List,
          CodeRoute:"lib/57_BackDrop/3_BackDrop_Custom.dart",
          TabIcon:Icon(Icons.menu),
          ToDo:"Create A Page Containing Taking Teal Background Color Backdrop,Customizable Icon.Set 2 ListTile That Each Change FrontLayer Page",
          TxtExplanation:BackDrop_Custom_Explanation,
          RunCodeRoute:new CustomBackDrop(),
        ),

        //----------------------------------------------------------------------------------
        //----------------------------------------------------------------------------------


        "/Animated_Icons": (BuildContext context)                             =>Animated_Icons(),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/Tinder_Swipe": (BuildContext context)                        => CmpCodePage(
          Title:"Tinder Swipe",
          BackRoute:"/Animated_Icons",
          NextRoute:"/Advanced1",
          ItemList:TinderSwipe_List,
          CodeRoute:"lib/59_TinderSwipe/1_Tinder_Swipe.dart",
          TabIcon:Icon(Icons.wrap_text),
          ToDo:"Soon",
          TxtExplanation:TinderSwipe_Explanation,
          RunCodeRoute:new TinderSwipe(),
        ),

        //----------------------------------------------------------------------------------
        //----------------------------------------------------------------------------------

        "/Image_Picker": (BuildContext context)                        => CmpCodePage(
          Title:"Image Picker",
          BackRoute:"/Tinder_Swipe",
          NextRoute:"/Multiple_Image_Picker",
          ItemList:ImagePicker_List,
          CodeRoute:"lib/60_ImagePicker/ImagePicker.dart",
          TabIcon:Icon(Icons.image),
          ToDo:"Create A Page That Allow User To Select Image From Gallery Or From Camera",
          TxtExplanation:ImagePicker_Explanation,
          RunCodeRoute:new ImagePickerRun(),
        ),

        //----------------------------------------------------------------------------------
        //----------------------------------------------------------------------------------

        "/Multiple_Image_Picker": (BuildContext context)                        => CmpCodePage(
          Title:"Multiple Image Picker",
          BackRoute:"/Image_Picker",
          NextRoute:"/Advance_Pdf_Viewer_Asset",
          ItemList:MultipleImagePicker_List,
          CodeRoute:"lib/61_MultipleImagePicker/MultipleImagePicker.dart",
          TabIcon:Icon(Icons.image),
          ToDo:"Create A Page That Allow User To Select Multiple Image From Gallery Or From Camera",
          TxtExplanation:MultipleImagePicker_Explanation,
          RunCodeRoute:new MutipleImagePickerRun(),
        ),

        //----------------------------------------------------------------------------------
        //----------------------------------------------------------------------------------

        "/Advance_Pdf_Viewer_Asset": (BuildContext context)                        => CmpCodePage(
          Title:"Advance Pdf Viewer Asset",
          BackRoute:"/Multiple_Image_Picker",
          NextRoute:"/Advance_Pdf_Viewer_Url",
          ItemList:AdvancePdfViewer_Asset_List,
          CodeRoute:"lib/62_Advance_Pdf_Viewer/1_Advance_Pdf_Viewer_Asset.dart",
          TabIcon:Icon(Icons.attachment),
          ToDo:"Create A Page That Load PDF Document From Assets Once Page Loaded",
          TxtExplanation:AdvancePdfViewer_Asset_Explanation,
          RunCodeRoute:new AdvancePdfViewerAsset(),
        ),

        //----------------------------------------------------------------------------------
        //----------------------------------------------------------------------------------

        "/Advance_Pdf_Viewer_Url": (BuildContext context)                        => CmpCodePage(
          Title:"Advance Pdf Viewer Url",
          BackRoute:"/Advance_Pdf_Viewer_Asset",
          NextRoute:"/Google_NavBar",
          ItemList:AdvancePdfViewer_Url_List,
          CodeRoute:"lib/62_Advance_Pdf_Viewer/2_Advance_Pdf_Viewer_Url.dart",
          TabIcon:Icon(Icons.attachment),
          ToDo:"Create A Page That Load PDF Document From Url Once Page Loaded",
          TxtExplanation:AdvancePdfViewer_Url_Explanation,
          RunCodeRoute:new AdvancePdfViewerUrl(),
        ),

        //----------------------------------------------------------------------------------
        //----------------------------------------------------------------------------------

        "/Google_NavBar": (BuildContext context)                        => CmpCodePage(
          Title:"Google NavBar",
          BackRoute:"/Advance_Pdf_Viewer_Url",
          NextRoute:"/Clippy_Triangle",
          ItemList:GoogleNavBar_List,
          CodeRoute:"lib/63_Google_NavBar/1_Google_NavBar.dart",
          TabIcon:Icon(Icons.edit_attributes),
          ToDo:"Create A Page That Show A Bottom Google NavBar",
          TxtExplanation:GoogleNavBar_Explanation,
          RunCodeRoute:new GoogleNavBar(),
        ),

        //----------------------------------------------------------------------------------
        //----------------------------------------------------------------------------------

        "/Clippy_Triangle": (BuildContext context)                        => CmpCodePage(
          Title:"Clippy Triangle",
          BackRoute:"/Google_NavBar",
          NextRoute:"/Clippy_Chevron",
          ItemList:Clippy_Triangle_List,
          CodeRoute:"lib/64_Clippy/1_Clippy_Triangle.dart",
          TabIcon:Icon(Icons.format_shapes),
          ToDo:"Create A Page That Clip An Image As Triangle",
          TxtExplanation:Clippy_Triangle_Explanation,
          RunCodeRoute:new ClippyTriangle(),
        ),

        //----------------------------------------------------------------------------------
        //----------------------------------------------------------------------------------

        "/Clippy_Chevron": (BuildContext context)                        => CmpCodePage(
          Title:"Clippy Chevron",
          BackRoute:"/Clippy_Triangle",
          NextRoute:"/Clippy_Arc",
          ItemList:Clippy_Chevron_List,
          CodeRoute:"lib/64_Clippy/2_Clippy_Chevron.dart",
          TabIcon:Icon(Icons.format_shapes),
          ToDo:"Create A Page That Clip An Image As Chevron",
          TxtExplanation:Clippy_Chevron_Explanation,
          RunCodeRoute:new ClippyChevron(),
        ),

        //----------------------------------------------------------------------------------
        //----------------------------------------------------------------------------------

        "/Clippy_Arc": (BuildContext context)                        => CmpCodePage(
          Title:"Clippy Arc",
          BackRoute:"/Clippy_Chevron",
          NextRoute:"/Clippy_Diagonal",
          ItemList:Clippy_Arc_List,
          CodeRoute:"lib/64_Clippy/3_Clippy_Arc.dart",
          TabIcon:Icon(Icons.format_shapes),
          ToDo:"Create A Page That Clip An Image As Arc",
          TxtExplanation:Clippy_Arc_Explanation,
          RunCodeRoute:new ClippyArc(),
        ),

        //----------------------------------------------------------------------------------
        //----------------------------------------------------------------------------------

        "/Clippy_Diagonal": (BuildContext context)                        => CmpCodePage(
          Title:"Clippy Diagonal",
          BackRoute:"/Clippy_Arc",
          NextRoute:"/Clippy_Bevel",
          ItemList:Clippy_Diagonal_List,
          CodeRoute:"lib/64_Clippy/4_Clippy_Diagonal.dart",
          TabIcon:Icon(Icons.format_shapes),
          ToDo:"Create A Page That Clip An Image As Diagonal",
          TxtExplanation:Clippy_Diagonal_Explanation,
          RunCodeRoute:new ClippyDiagonal(),
        ),

        //----------------------------------------------------------------------------------
        //----------------------------------------------------------------------------------

        "/Clippy_Bevel": (BuildContext context)                        => CmpCodePage(
          Title:"Clippy Bevel",
          BackRoute:"/Clippy_Diagonal",
          NextRoute:"/Clippy_ButtCheek",
          ItemList:Clippy_Bevel_List,
          CodeRoute:"lib/64_Clippy/5_Clippy_Bevel.dart",
          TabIcon:Icon(Icons.format_shapes),
          ToDo:"Create A Page That Clip An Image As Bevel",
          TxtExplanation:Clippy_Bevel_Explanation,
          RunCodeRoute:new ClippyBevel(),
        ),

        //----------------------------------------------------------------------------------
        //----------------------------------------------------------------------------------

        "/Clippy_ButtCheek": (BuildContext context)                        => CmpCodePage(
          Title:"Clippy ButtCheek",
          BackRoute:"/Clippy_Bevel",
          NextRoute:"/Water_Drop",
          ItemList:Clippy_ButtCheek_List,
          CodeRoute:"lib/64_Clippy/6_ButtCheek.dart",
          TabIcon:Icon(Icons.format_shapes),
          ToDo:"Create A Page That Clip An Image As ButtCheek",
          TxtExplanation:Clippy_ButtCheek_Explanation,
          RunCodeRoute:new ClippyButtcheek(),
        ),

        //----------------------------------------------------------------------------------
        //----------------------------------------------------------------------------------

        "/Water_Drop": (BuildContext context)                        => CmpCodePage(
          Title:"Water Drop",
          BackRoute:"/Clippy_ButtCheek",
          NextRoute:"/Advanced1",
          ItemList:WaterDrop_List,
          CodeRoute:"lib/65_Water_Drop/1_Water_Drop.dart",
          TabIcon:Icon(Icons.grain),
          ToDo:"Create A Page That Show A Card Having Simple Text With Water Drops",
          TxtExplanation:WaterDrop_Explanation,
          RunCodeRoute:new WaterDropRun(),
        ),

        //----------------------------------------------------------------------------------
        //----------------------------------------------------------------------------------



        "/Advanced1": (BuildContext context)                                   => CmpCodePage(
          Title:"Navigating Through Image Tap",
          BackRoute:"/Tinder_Swipe",
          NextRoute:"/Advanced2",
          ItemList:A1_list,
          CodeRoute:"lib/Advanced/A1Run.dart",
          TabIcon:Icon(Icons.more_horiz),
          ToDo:"Soon",
          TxtExplanation:A1_Explanation,
          RunCodeRoute:new A1Run(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Advanced2": (BuildContext context)                                   => CmpCodePage(
          Title:"Simple GetStarted Page",
          BackRoute:"/Advanced1",
          NextRoute:"/Advanced3",
          ItemList:A2_list,
          CodeRoute:"lib/Advanced/A2Run.dart",
          TabIcon:Icon(Icons.more_horiz),
          ToDo:"Soon",
          TxtExplanation:A2_Explanation,
          RunCodeRoute:new A2Run(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Advanced3": (BuildContext context)                                   => CmpCodePage(
          Title:"Advanced Dialog",
          BackRoute:"/Advanced2",
          NextRoute:"/Advanced4",
          ItemList:A3_list,
          CodeRoute:"lib/Advanced/A3Run.dart",
          TabIcon:Icon(Icons.more_horiz),
          ToDo:"Soon",
          TxtExplanation:A3_Explanation,
          RunCodeRoute:new A3Run(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Advanced4": (BuildContext context)                                   => CmpCodePage(
          Title:"Advanced Dialog",
          BackRoute:"/Advanced3",
          NextRoute:"/Main",
          ItemList:A3_list,
          CodeRoute:"lib/Advanced/A4Run.dart",
          TabIcon:Icon(Icons.more_horiz),
          ToDo:"Soon",
          TxtExplanation:A3_Explanation,
          RunCodeRoute:new A4Run(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/SQLFlite_Intro": (BuildContext context)                   => CmpIntroPage(
          Title:"SQLFlite Introduction",
          BackRoute:"/Main",
          NextRoute:"/SQLFlite_CreateClass",
          ItemList:SQLFlite_Intro_CompList,
        ),

        //----------------------------------------------------------------------------------
        //----------------------------------------------------------------------------------

        "/SQLFlite_CreateClass": (BuildContext context)                   => CmpIntroPage(
          Title:"Create Class",
          BackRoute:"/SQLFlite_Intro",
          NextRoute:"/SQLFlite_CreateTable",
          ItemList:SQLFlite_CreateClass_CompList,
        ),

        //----------------------------------------------------------------------------------
        //----------------------------------------------------------------------------------

        "/SQLFlite_CreateTable": (BuildContext context)                   => CmpIntroPage(
          Title:"SQLFlite Create Table",
          BackRoute:"/SQLFlite_CreateClass",
          NextRoute:"/SQLFlite_Print",
          ItemList:SQLFlite_CreateTable_CompList,
        ),

        //----------------------------------------------------------------------------------
        //----------------------------------------------------------------------------------

        "/SQLFlite_Print": (BuildContext context)                   => CmpIntroPage(
          Title:"SQLFlite Print Data",
          BackRoute:"/SQLFlite_CreateTable",
          NextRoute:"/SQLFlite_Insert",
          ItemList:SQLFlite_Print_CompList,
        ),

        //----------------------------------------------------------------------------------
        //----------------------------------------------------------------------------------

        "/SQLFlite_Insert": (BuildContext context)                   => CmpCodePage(
          Title:"SQLFlite Insert Data",
          BackRoute:"/SQLFlite_Print",
          NextRoute:"/SQLFlite_Update",
          ItemList:SQLFlite_Insert_CompList,
          CodeRoute:"lib/Backend_1_SQFlite/1_SQFlite_Insert.dart",
          TabIcon:Icon(Icons.more_horiz),
          ToDo:"Create A Page Insert Data Into SQFlite Database",
          TxtExplanation:A3_Explanation,
          RunCodeRoute:new SQFlite_Insert(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/SQLFlite_Update": (BuildContext context)                   => CmpCodePage(
          Title:"SQLFlite Update Data",
          BackRoute:"/SQLFlite_Insert",
          NextRoute:"/SQLFlite_Delete",
          ItemList:SQLFlite_Update_CompList,
          CodeRoute:"lib/Backend_1_SQFlite/2_SQFlite_Update.dart",
          TabIcon:Icon(Icons.more_horiz),
          ToDo:"Create A Page That Update Specified Data Contained In SQFlite",
          TxtExplanation:A3_Explanation,
          RunCodeRoute:new SQFlite_Update(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/SQLFlite_Delete": (BuildContext context)                   => CmpCodePage(
          Title:"SQLFlite Delete Data",
          BackRoute:"/SQLFlite_Update",
          NextRoute:"/SQLFlite_DeleteAll",
          ItemList:SQLFlite_Delete_CompList,
          CodeRoute:"lib/Backend_1_SQFlite/3_SQFlite_Delete.dart",
          TabIcon:Icon(Icons.more_horiz),
          ToDo:"Create A Page Delete Specified Data Contained In SQFlite",
          TxtExplanation:A3_Explanation,
          RunCodeRoute:new SQFlite_Delete(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/SQLFlite_DeleteAll": (BuildContext context)                   => CmpCodePage(
          Title:"SQLFlite Delete All  Data",
          BackRoute:"/SQLFlite_Update",
          NextRoute:"/HTTP_PHP_GettingStarted",
          ItemList:SQLFlite_DeleteAll_CompList,
          CodeRoute:"lib/Backend_1_SQFlite/4_SQFlite_DeleteAll.dart",
          TabIcon:Icon(Icons.more_horiz),
          ToDo:"Create A Page Deleting All Data Contained In SQFlite",
          TxtExplanation:A3_Explanation,
          RunCodeRoute:new SQFlite_DeleteAll(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/HTTP_PHP_GettingStarted": (BuildContext context)                   => CmpIntroPage(
          Title:"HTTP PHP Getting Started",
          BackRoute:"/SQLFlite_DeleteAll",
          NextRoute:"/HTTP_PHP_DBConnection",
          ItemList:PHP_HTTP_Intro_CompList,
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/HTTP_PHP_DBConnection": (BuildContext context)                   => CmpIntroPage(
          Title:"HTTP PHP Database Connection",
          BackRoute:"/HTTP_PHP_GettingStarted",
          NextRoute:"/HTTP_PHP_CreateClass",
          ItemList:PHP_HTTP_DbConnection_CompList,
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/HTTP_PHP_CreateClass": (BuildContext context)                   => CmpIntroPage(
          Title:"HTTP PHP Database Connection",
          BackRoute:"/HTTP_PHP_DBConnection",
          NextRoute:"/HTTP_PHP_GetData",
          ItemList:PHP_HTTP_CreateClass_CompList,
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/HTTP_PHP_GetData": (BuildContext context)                   => CmpCodePage(
          Title:"HTTP PHP Get Data",
          BackRoute:"/HTTP_PHP_CreateClass",
          NextRoute:"/HTTP_PHP_InsertData",
          ItemList:PHP_HTTP_GetData_CompList,
          CodeRoute:"lib/Backend_2_PHP_Http/1_PHP_GetData.dart",
          TabIcon:Icon(Icons.data_usage),
          ToDo:"Create A Page That Get Data Returned From Server",
          TxtExplanation:PHP_HTTP_GetData_Explanation,
          RunCodeRoute:new PHP_GetData(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/HTTP_PHP_InsertData": (BuildContext context)                   => CmpCodePage(
          Title:"HTTP PHP Insert Data",
          BackRoute:"/HTTP_PHP_GetData",
          NextRoute:"/HTTP_PHP_UpdateData",
          ItemList:PHP_HTTP_Insert_CompList,
          CodeRoute:"lib/Backend_2_PHP_Http/2_PHP_InsertData.dart",
          TabIcon:Icon(Icons.data_usage),
          ToDo:"Create A Page That Insert And Get Data Returned From Server",
          TxtExplanation:PHP_HTTP_Insert_Explanation,
          RunCodeRoute:new PHP_InsData(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/HTTP_PHP_UpdateData": (BuildContext context)                   => CmpCodePage(
          Title:"HTTP PHP Update Data",
          BackRoute:"/HTTP_PHP_InsertData",
          NextRoute:"/HTTP_PHP_DeleteData",
          ItemList:PHP_HTTP_Update_CompList,
          CodeRoute:"lib/Backend_2_PHP_Http/3_PHP_Update.dart",
          TabIcon:Icon(Icons.data_usage),
          ToDo:"Create A Page That Update And Get New Data Returned From Server",
          TxtExplanation:PHP_HTTP_Insert_Explanation,
          RunCodeRoute:new PHP_UpdateData(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/HTTP_PHP_DeleteData": (BuildContext context)                   => CmpCodePage(
          Title:"HTTP PHP Delete Data",
          BackRoute:"/HTTP_PHP_UpdateData",
          NextRoute:"/HTTP_PHP_DeleteAllData",
          ItemList:PHP_HTTP_Delete_CompList,
          CodeRoute:"lib/Backend_2_PHP_Http/4_PHP_Delete.dart",
          TabIcon:Icon(Icons.data_usage),
          ToDo:"Create A Page Deleting All Data Contained In SQFlite",
          TxtExplanation:PHP_HTTP_Delete_Explanation,
          RunCodeRoute:new PHP_DelData(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/HTTP_PHP_DeleteAllData": (BuildContext context)                   => CmpCodePage(
          Title:"HTTP PHP Delete All Data",
          BackRoute:"/HTTP_PHP_DeleteData",
          NextRoute:"/Firebase_Setup",
          ItemList:PHP_HTTP_DeleteAll_CompList,
          CodeRoute:"lib/Backend_2_PHP_Http/5_PHP_DeleteAll.dart",
          TabIcon:Icon(Icons.data_usage),
          ToDo:"Create A Page Deleting All Data Contained In SQFlite",
          TxtExplanation:PHP_HTTP_DeleteAll_Explanation,
          RunCodeRoute:new PHP_DelData(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Firebase_Setup": (BuildContext context)                   => CmpIntroPage(
          Title:"Firebase Setup",
          BackRoute:"/HTTP_PHP_DeleteAllData",
          NextRoute:"/Firebase_SetupSHA1",
          ItemList:FireBase_Setup_CompList,
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Firebase_SetupSHA1": (BuildContext context)                => CmpIntroPage(
          Title:"Firebase SHA",
          BackRoute:"/Firebase_Setup",
          NextRoute:"/Firebase_SetupEmail",
          ItemList:FireBase_SetupSHA1_CompList,
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Firebase_SetupEmail": (BuildContext context)                => CmpIntroPage(
          Title:"Firebase Setup Email",
          BackRoute:"/Firebase_SetupSHA1",
          NextRoute:"/Firebase_SetupGoogle",
          ItemList:FireBase_Setup_Email_CompList,
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Firebase_SetupGoogle": (BuildContext context)                => CmpIntroPage(
          Title:"Firebase Setup Google",
          BackRoute:"/Firebase_SetupEmail",
          NextRoute:"/Firebase_SetupFacebook",
          ItemList:FireBase_Setup_Google_CompList,
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Firebase_SetupFacebook": (BuildContext context)                => CmpIntroPage(
          Title:"Firebase Setup Facebook",
          BackRoute:"/Firebase_SetupGoogle",
          NextRoute:"/Firebase_Auth_Email_FB_Google",
          ItemList:FireBase_Setup_Facebook_CompList,
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/Firebase_Auth_Email_FB_Google": (BuildContext context)                   => CmpCodePage(
          Title:"Firebase Email FB Google Authentication",
          BackRoute:"/Firebase_SetupFacebook",
          NextRoute:"/FireStore_Intro",
          ItemList:Firebase_Auth_Email_FB_Google_CompList,
          CodeRoute:"lib/Backend_3_FireBase/1_FireBase_Auth_Email_FB_Google.dart",
          TabIcon:Icon(Icons.data_usage),
          ToDo:"Create A Page That Use Firebase Email  To SignIn,SignUp And Recover An Account Or Continue With Facebook Or Google With Logout.",
          TxtExplanation:"Soon",
          RunCodeRoute:new FireBaseEmail_Google_FB_Authentication(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/FireStore_Intro": (BuildContext context)                => CmpIntroPage(
          Title:"FireStore Introduction",
          BackRoute:"/Firebase_Auth_Email_FB_Google",
          NextRoute:"/FireStore_View",
          ItemList:FireStore_Intro_CompList,
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/FireStore_View": (BuildContext context)                => CmpIntroPage(
          Title:"FireStore View",
          BackRoute:"/FireStore_Intro",
          NextRoute:"/FireStore_Insert",
          ItemList:FireStore_View_CompList,
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/FireStore_Insert": (BuildContext context)                => CmpIntroPage(
          Title:"FireStore Insert",
          BackRoute:"/FireStore_View",
          NextRoute:"/FireStore_Update",
          ItemList:FireStore_Insert_CompList,
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/FireStore_Update": (BuildContext context)                => CmpIntroPage(
          Title:"FireStore Update",
          BackRoute:"/FireStore_Insert",
          NextRoute:"/FireStore_Delete",
          ItemList:FireStore_Update_CompList,
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/FireStore_Delete": (BuildContext context)                => CmpIntroPage(
          Title:"FireStore Delete",
          BackRoute:"/FireStore_Update",
          NextRoute:"/FireStore_All",
          ItemList:FireStore_Delete_CompList,
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------


        "/FireStore_All": (BuildContext context)                   => CmpCodePage(
          Title:"FireStore Add,Update,Delete And View Data",
          BackRoute:"/FireStore_Delete",
          NextRoute:"/FireBase_Admob_Intro",
          ItemList:Firebase_Auth_Email_FB_Google_CompList,
          CodeRoute:"lib/Backend_4_FireStore/1_FireStore.dart",
          TabIcon:Icon(Icons.data_usage),
          ToDo:"Create A Page That Show Products Fetched From FireStore With Insert Update And Delete Action.",
          TxtExplanation:"Soon",
          RunCodeRoute:new FireStoreProduct(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/FireBase_Admob_Intro": (BuildContext context)             => CmpIntroPage(
          Title:"FireStore Delete",
          BackRoute:"/FireStore_All",
          NextRoute:"/FireBase_Admob_Banner",
          ItemList:FireBase_Admob_Intro_CompList,
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/FireBase_Admob_Banner": (BuildContext context)                   => CmpCodePage(
          Title:"FireBase Admob Banner",
          BackRoute:"/FireBase_Admob_Intro",
          NextRoute:"/FireBase_Admob_Interstitial",
          ItemList:FireBase_Admob_Banner_list,
          CodeRoute:"lib/Backend_5_FireBase_Admob/1_FireBase_Admob_Banner.dart",
          TabIcon:Icon(Icons.data_usage),
          ToDo:"Create A Page That Show And Remove A Banner",
          TxtExplanation:FireBase_Admob_Banner_Explanation,
          RunCodeRoute:new FireBaseAdmob_Banner(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------

        "/FireBase_Admob_Interstitial": (BuildContext context)                   => CmpCodePage(
          Title:"FireBase Admob Interstitial",
          BackRoute:"/FireBase_Admob_Banner",
          NextRoute:"/Main",
          ItemList:FireBase_Admob_Interstitial_list,
          CodeRoute:"lib/Backend_5_FireBase_Admob/2_FireBase_Admob_Interstitial.dart",
          TabIcon:Icon(Icons.data_usage),
          ToDo:"Create A Page That Show An Interstitial",
          TxtExplanation:FireBase_Admob_Interstitial_Explanation,
          RunCodeRoute:new FireBaseAdmob_Interstitial(),
        ),

        //---------------------------------------------------------------------------------
        //---------------------------------------------------------------------------------







        "/Generate_Intro_Quizz": (BuildContext context)           => cl_IntroQuizz(),
        "/Generate_Keywords_Quizz": (BuildContext context)        => cl_KeywordsQuizz(),
        "/Generate_Text_Quizz": (BuildContext context)            => cl_TextQuizz(),
        "/Generate_HeaderAppBar_Quizz": (BuildContext context)    => cl_HeaderAppBarQuizz(),
        "/Generate_MainBg_Quizz": (BuildContext context)          => SoonAlert(),
        "/Generate_Image_Quizz": (BuildContext context)           => SoonAlert(),
        "/Generate_Button_Quizz": (BuildContext context)          => SoonAlert(),
        "/Generate_Toast_Quizz": (BuildContext context)           => SoonAlert(),
        "/Generate_Layouts_Quizz": (BuildContext context)           => SoonAlert(),
        "/Generate_Dialogs_Quizz": (BuildContext context)           => SoonAlert(),
        "/Generate_Divider_Quizz": (BuildContext context)           => SoonAlert(),
        "/Generate_Navigator_Quizz": (BuildContext context)           => SoonAlert(),
        "/Generate_SnackBar_Quizz": (BuildContext context)           => SoonAlert(),
        "/Generate_FlushBar_Quizz": (BuildContext context)           => SoonAlert(),
        "/Generate_Card_Quizz": (BuildContext context)           => SoonAlert(),
        "/Generate_TextOverFlow_Quizz": (BuildContext context)           => SoonAlert(),
        "/Generate_GestureDetector_Quizz": (BuildContext context)           => SoonAlert(),
        "/Generate_ListView_Quizz": (BuildContext context)           => SoonAlert(),
        "/Generate_TextField_Quizz": (BuildContext context)           => SoonAlert(),
        "/Generate_FooterAppBar_Quizz": (BuildContext context)           => SoonAlert(),
        "/Generate_ImageSlider_Quizz": (BuildContext context)           => SoonAlert(),
        "/Generate_Notification_Quizz": (BuildContext context)           => SoonAlert(),
        "/Generate_Switch_Quizz": (BuildContext context)           => SoonAlert(),
        "/Generate_Audio_Quizz": (BuildContext context)           => SoonAlert(),
        "/Generate_Video_Quizz": (BuildContext context)           => SoonAlert(),
        "/Generate_SimpleLoader_Quizz": (BuildContext context)           => SoonAlert(),
        "/Generate_AdvancedLoader_Quizz": (BuildContext context)           => SoonAlert(),
        "/Generate_Animation_Quizz": (BuildContext context)           => SoonAlert(),
        "/Generate_Radio_Quizz": (BuildContext context)           => SoonAlert(),
        "/Generate_CheckBox_Quizz": (BuildContext context)           => SoonAlert(),
        "/Generate_Chip_Quizz": (BuildContext context)           => SoonAlert(),
        "/Generate_TabBar_Quizz": (BuildContext context)           => SoonAlert(),
        "/Generate_Selector_Quizz": (BuildContext context)           => SoonAlert(),
        "/Generate_Flex_Quizz": (BuildContext context)           => SoonAlert(),
        "/Generate_ComboBox_Quizz": (BuildContext context)           => SoonAlert(),
        "/Generate_ExpandableList_Quizz": (BuildContext context)           => SoonAlert(),
        "/Generate_Slider_Quizz": (BuildContext context)           => SoonAlert(),
        "/Generate_Drawer_Quizz": (BuildContext context)           => SoonAlert(),
        "/Generate_MainSplashScreen_Quizz": (BuildContext context)           => SoonAlert(),
        "/Generate_Admob_Quizz": (BuildContext context)           => SoonAlert(),
        "/Generate_FlipCard_Quizz": (BuildContext context)           => SoonAlert(),
        "/Generate_FlipView_Quizz": (BuildContext context)           => SoonAlert(),
        "/Generate_Stepper_Quizz": (BuildContext context)           => SoonAlert(),
        "/Generate_BottomSheet_Quizz": (BuildContext context)           => SoonAlert(),
        "/Generate_SPI_Quizz": (BuildContext context)           => SoonAlert(),
        "/Generate_Expandable_Quizz": (BuildContext context)           => SoonAlert(),
        "/Generate_Marquee_Quizz": (BuildContext context)           => SoonAlert(),
        "/Generate_ContainerWaves_Quizz": (BuildContext context)           => SoonAlert(),
        "/Generate_RouteTransition_Quizz": (BuildContext context)           => SoonAlert(),
        "/Generate_FlutterSyntaxe_Quizz": (BuildContext context)           => SoonAlert(),
        "/Generate_Advanced_Quizz": (BuildContext context)           => SoonAlert(),
        "/Generate_SlidingUpPanel_Quizz": (BuildContext context)           => SoonAlert(),
        "/Generate_PopupMenuButton_Quizz": (BuildContext context)           => SoonAlert(),
        "/Generate_SQLFlite_Quizz": (BuildContext context)           => SoonAlert(),
        "/Generate_Hero_Quizz": (BuildContext context)              => SoonAlert(),
        "/Generate_AvatarGlow_Quizz": (BuildContext context)              => SoonAlert(),
        "/Generate_DataTable_Quizz": (BuildContext context)              => SoonAlert(),
        "/Generate_WebView_Quizz": (BuildContext context)              => SoonAlert(),
        "/Generate_AnimatedIcons_Quizz": (BuildContext context)              => SoonAlert(),
        "/Generate_BackDrop_Quizz": (BuildContext context)              => SoonAlert(),
        "/Generate_FireBase_Quizz": (BuildContext context)              => SoonAlert(),
        "/Generate_TinderSwipe_Quizz": (BuildContext context)              => SoonAlert(),
        "/Generate_FireBaseAdmob_Quizz": (BuildContext context)              => SoonAlert(),

      },

    );
  }
}






_launchUrl() async{
  audioCache.play('Music/Tap.mp3');
  const url="https://play.google.com/store/apps/details?id=edapps.com.flutter_tutorials_and_quizzes";
  if(await canLaunch(url)){
    await launch(url);
  }
  else{
    throw 'Could Not Launch Url!';
  }
}






