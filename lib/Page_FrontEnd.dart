import 'package:flutter/material.dart';
import '0_SourceCode.dart';
import '1000_Rating.dart';
import '1_TestMeRandomQuizzes.dart';
import '2_CodesByUsers.dart';
import '3_StartSelect.dart';
import '_Comp_Courses/Cmp_Cust_ExpTile.dart';
import '_GlobalVariables_FrontEnd.dart';
import 'main.dart';


class FrontEndPage extends StatefulWidget {
  @override
  FrontEndPageState createState() => new FrontEndPageState();
}

class FrontEndPageState extends State<FrontEndPage> with AutomaticKeepAliveClientMixin {
  ScrollController SCFrontPage = new ScrollController();

  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        controller:SCFrontPage,
        children:<Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                children:<Widget>[


                  SizedBox(height: 10,),
                  SourceCodeUI(),

                  SizedBox(height: 10,),
                  TestMeRandomQuizzesUI(),

                  SizedBox(height: 10,),
                  CodesByUsersUI(),

                  SizedBox(height: 10,),
                  StartSelectUI(),


                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.chrome_reader_mode),
                    ExpTitle:"1.Introduction",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_Intro_Quizz",
                    CardLength:IntroCardsList.length,
                    CardsList:IntroCardsList,
                  ),


                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.vpn_key),
                    ExpTitle:"2.Keywords",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_Keywords_Quizz",
                    CardLength:KeywordsCardsList.length,
                    CardsList:KeywordsCardsList,
                  ),


                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.short_text),
                    ExpTitle:"3.Text",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_Text_Quizz",
                    CardLength:TextCardsList.length,
                    CardsList:TextCardsList,
                  ),




                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.fiber_dvr),
                    ExpTitle:"4.Header AppBar",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_HeaderAppBar_Quizz",
                    CardLength:HeaderAppBarCardsList.length,
                    CardsList:HeaderAppBarCardsList,
                  ),



                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.format_paint),
                    ExpTitle:"5.Main Page Bg Color",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_MainBg_Quizz",
                    CardLength:MainBgCardsList.length,
                    CardsList:MainBgCardsList,
                  ),


                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.image),
                    ExpTitle:"6.Image",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_Image_Quizz",
                    CardLength:ImageCardsList.length,
                    CardsList:ImageCardsList,
                  ),


                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.check_box_outline_blank),
                    ExpTitle:"7.Buttons",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_Button_Quizz",
                    CardLength:ButtonCardsList.length,
                    CardsList:ButtonCardsList,
                  ),


                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.album),
                    ExpTitle:"8.Toast",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_Toast_Quizz",
                    CardLength:ToastList.length,
                    CardsList:ToastList,
                  ),


                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.grid_on),
                    ExpTitle:"9.Layouts",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_Layouts_Quizz",
                    CardLength:LayoutsList.length,
                    CardsList:LayoutsList,
                  ),

                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.chrome_reader_mode),
                    ExpTitle:"10.Dialogs",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_Dialogs_Quizz",
                    CardLength:DialogsList.length,
                    CardsList:DialogsList,
                  ),


                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.linear_scale),
                    ExpTitle:"11.Divider",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_Divider_Quizz",
                    CardLength:DividerList.length,
                    CardsList:DividerList,
                  ),


                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.navigation),
                    ExpTitle:"12.Navigator",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_Navigator_Quizz",
                    CardLength:NavigatorList.length,
                    CardsList:NavigatorList,
                  ),


                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.blur_linear),
                    ExpTitle:"13.SnackBar",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_SnackBar_Quizz",
                    CardLength:SnackBarList.length,
                    CardsList:SnackBarList,
                  ),


                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.space_bar),
                    ExpTitle:"14.FlushBar",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_FlushBar_Quizz",
                    CardLength:FlushBarList.length,
                    CardsList:FlushBarList,
                  ),


                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.four_k),
                    ExpTitle:"15.Card",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_Card_Quizz",
                    CardLength:CardList.length,
                    CardsList:CardList,
                  ),


                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.title),
                    ExpTitle:"16.TextOverFlow",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_TextOverFlow_Quizz",
                    CardLength:TextOverFlowList.length,
                    CardsList:TextOverFlowList,
                  ),



                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.touch_app),
                    ExpTitle:"17.Gesture Detector",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_GestureDetector_Quizz",
                    CardLength:GestureDetectorList.length,
                    CardsList:GestureDetectorList,
                  ),


                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.filter_list),
                    ExpTitle:"18.ListView",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_ListView_Quizz",
                    CardLength:ListViewList.length,
                    CardsList:ListViewList,
                  ),



                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.input),
                    ExpTitle:"19.TextField",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_TextField_Quizz",
                    CardLength:TextFieldList.length,
                    CardsList:TextFieldList,
                  ),



                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.fiber_dvr),
                    ExpTitle:"20.Footer AppBar",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_FooterAppBar_Quizz",
                    CardLength:FooterAppbarList.length,
                    CardsList:FooterAppbarList,
                  ),


                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.ondemand_video),
                    ExpTitle:"21.Image Slider",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_FooterAppBar_Quizz",
                    CardLength:ImageSliderList.length,
                    CardsList:ImageSliderList,
                  ),


                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.notifications_active),
                    ExpTitle:"22.Notification",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_Notification_Quizz",
                    CardLength:NotificationList.length,
                    CardsList:NotificationList,
                  ),


                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.switch_camera),
                    ExpTitle:"23.Switch",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_Switch_Quizz",
                    CardLength:SwitchList.length,
                    CardsList:SwitchList,
                  ),


                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.audiotrack),
                    ExpTitle:"24.Audio",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_Audio_Quizz",
                    CardLength:AudioList.length,
                    CardsList:AudioList,
                  ),



                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.videocam),
                    ExpTitle:"25.Video",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_Video_Quizz",
                    CardLength:VideoList.length,
                    CardsList:VideoList,
                  ),


                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.timelapse),
                    ExpTitle:"26.Simple Loader",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_SimpleLoader_Quizz",
                    CardLength:SimpleLoaderList.length,
                    CardsList:SimpleLoaderList,
                  ),


                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.av_timer),
                    ExpTitle:"27.Advanced Loader",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_AdvancedLoader_Quizz",
                    CardLength:AdvancedLoaderList.length,
                    CardsList:AdvancedLoaderList,
                  ),


                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.video_label),
                    ExpTitle:"28.Animation",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_Animation_Quizz",
                    CardLength:AnimationList.length,
                    CardsList:AnimationList,
                  ),



                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.radio_button_checked),
                    ExpTitle:"29.Radio",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_Radio_Quizz",
                    CardLength:RadioList.length,
                    CardsList:RadioList,
                  ),



                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.check_box),
                    ExpTitle:"30.CheckBox",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_CheckBox_Quizz",
                    CardLength:CheckBoxList.length,
                    CardsList:CheckBoxList,
                  ),



                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.blur_circular),
                    ExpTitle:"31.Chip",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_Chip_Quizz",
                    CardLength:ChipList.length,
                    CardsList:ChipList,
                  ),




                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.navigation),
                    ExpTitle:"32.Tab Bar",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_TabBar_Quizz",
                    CardLength:TabBarList.length,
                    CardsList:TabBarList,
                  ),



                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.threesixty),
                    ExpTitle:"33.Page Selector",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_Selector_Quizz",
                    CardLength:PageSelectorList.length,
                    CardsList:PageSelectorList,
                  ),


                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.compare_arrows),
                    ExpTitle:"34.Flex",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_Flex_Quizz",
                    CardLength:FlexList.length,
                    CardsList:FlexList,
                  ),



                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.arrow_drop_down_circle),
                    ExpTitle:"35.Select ComboBox",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_ComboBox_Quizz",
                    CardLength:ComboBoxList.length,
                    CardsList:ComboBoxList,
                  ),


                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.expand_more),
                    ExpTitle:"36.Expandable List",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_ExpandableList_Quizz",
                    CardLength:ExpandableListList.length,
                    CardsList:ExpandableListList,
                  ),


                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.tune),
                    ExpTitle:"37.Slider",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_Slider_Quizz",
                    CardLength:SliderList.length,
                    CardsList:SliderList,
                  ),


                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.menu),
                    ExpTitle:"38.Drawer",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_Drawer_Quizz",
                    CardLength:DrawerList.length,
                    CardsList:DrawerList,
                  ),


                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.broken_image),
                    ExpTitle:"39.Main Splash Screen",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_MainSplashScreen_Quizz",
                    CardLength:MainSplashScreenList.length,
                    CardsList:MainSplashScreenList,
                  ),



                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.adb),
                    ExpTitle:"40.Admob",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_Admob_Quizz",
                    CardLength:AdmobList.length,
                    CardsList:AdmobList,
                  ),


                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.flip_to_back),
                    ExpTitle:"41.Flip Card",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_FlipCard_Quizz",
                    CardLength:FlipCardList.length,
                    CardsList:FlipCardList,
                  ),



                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.flip),
                    ExpTitle:"42.Flip View",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_FlipView_Quizz",
                    CardLength:FlipViewList.length,
                    CardsList:FlipViewList,
                  ),



                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.format_line_spacing),
                    ExpTitle:"43.Stepper",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_Stepper_Quizz",
                    CardLength:StepperList.length,
                    CardsList:StepperList,
                  ),



                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.dashboard),
                    ExpTitle:"44.Bottom Sheet",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_BottomSheet_Quizz",
                    CardLength:BottomSheetList.length,
                    CardsList:BottomSheetList,
                  ),



                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.slideshow),
                    ExpTitle:"45.Smooth Page Indicator",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_SPI_Quizz",
                    CardLength:SmoothPageIndicatorList.length,
                    CardsList:SmoothPageIndicatorList,
                  ),


                  //-----------------------------------------
                  //-----------------------------------------
                  //-----------------------------------------
                  //-----------------------------------------
                  //-----------------------------------------
                  //-----------------------------------------
                  //-----------------------------------------
                  //-----------------------------------------
                  //-----------------------------------------
                  //-----------------------------------------


                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.arrow_drop_down),
                    ExpTitle:"46.Expandable",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_Expandable_Quizz",
                    CardLength:ExpandableCardsList.length,
                    CardsList:ExpandableCardsList,
                  ),

                  //-----------------------------------------
                  //-----------------------------------------
                  //-----------------------------------------
                  //-----------------------------------------
                  //-----------------------------------------
                  //-----------------------------------------
                  //-----------------------------------------
                  //-----------------------------------------
                  //-----------------------------------------
                  //-----------------------------------------

                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.forward),
                    ExpTitle:"47.Marquee",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_Marquee_Quizz",
                    CardLength:MarqueeCardsList.length,
                    CardsList:MarqueeCardsList,
                  ),


                  //-----------------------------------------
                  //-----------------------------------------
                  //-----------------------------------------
                  //-----------------------------------------
                  //-----------------------------------------
                  //-----------------------------------------
                  //-----------------------------------------
                  //-----------------------------------------
                  //-----------------------------------------
                  //-----------------------------------------

                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.exposure),
                    ExpTitle:"48.Container Waves",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_ContainerWaves_Quizz",
                    CardLength:ContainerWavesList.length,
                    CardsList:ContainerWavesList,
                  ),



                  //-----------------------------------------
                  //-----------------------------------------
                  //-----------------------------------------
                  //-----------------------------------------
                  //-----------------------------------------
                  //-----------------------------------------
                  //-----------------------------------------
                  //-----------------------------------------
                  //-----------------------------------------
                  //-----------------------------------------

                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.navigate_next),
                    ExpTitle:"49.Route Transition",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_RouteTransition_Quizz",
                    CardLength:RouteTransitionList.length,
                    CardsList:RouteTransitionList,
                  ),



                  //-----------------------------------------
                  //-----------------------------------------
                  //-----------------------------------------
                  //-----------------------------------------
                  //-----------------------------------------
                  //-----------------------------------------
                  //-----------------------------------------
                  //-----------------------------------------
                  //-----------------------------------------
                  //-----------------------------------------

                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.highlight),
                    ExpTitle:"50.Flutter Syntaxe",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_FlutterSyntaxe_Quizz",
                    CardLength:DartSyntaxeHighlighList.length,
                    CardsList:DartSyntaxeHighlighList,
                  ),



                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.open_in_browser),
                    ExpTitle:"51.Sliding Up Panel",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_SlidingUpPanel_Quizz",
                    CardLength:SlidingUpPanelList.length,
                    CardsList:SlidingUpPanelList,
                  ),



                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.more_vert),
                    ExpTitle:"52.Popup Menu Button",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_PopupMenuButton_Quizz",
                    CardLength:PopupMenuButtonList.length,
                    CardsList:PopupMenuButtonList,
                  ),



                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.wallpaper),
                    ExpTitle:"53.Hero Animation",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_Hero_Quizz",
                    CardLength:HeroList.length,
                    CardsList:HeroList,
                  ),

                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.wifi_tethering),
                    ExpTitle:"54.Avatar Glow",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_AvatarGlow_Quizz",
                    CardLength:AvatarGlowList.length,
                    CardsList:AvatarGlowList,
                  ),

                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.table_chart),
                    ExpTitle:"55.DataTable",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_DataTable_Quizz",
                    CardLength:DataTableList.length,
                    CardsList:DataTableList,
                  ),

                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.web_asset),
                    ExpTitle:"56.WebView",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_WebView_Quizz",
                    CardLength:WebViewList.length,
                    CardsList:WebViewList,
                  ),

                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.menu),
                    ExpTitle:"57.BackDrop",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_BackDrop_Quizz",
                    CardLength:BackDropList.length,
                    CardsList:BackDropList,
                  ),


                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.video_library),
                    ExpTitle:"58.Animated Icons",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_AnimatedIcons_Quizz",
                    CardLength:AnimatedIconsList.length,
                    CardsList:AnimatedIconsList,
                  ),



                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.wrap_text),
                    ExpTitle:"59.Tinder Swipe",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_TinderSwipe_Quizz",
                    CardLength:TinderSwipeList.length,
                    CardsList:TinderSwipeList,
                  ),


                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.image),
                    ExpTitle:"60.Image Picker",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_ImagePicker_Quizz",
                    CardLength:ImagePickerList.length,
                    CardsList:ImagePickerList,
                  ),


                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.image),
                    ExpTitle:"61.Multi Image Picker",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_MultipleImagePicker_Quizz",
                    CardLength:MultipleImagePickerList.length,
                    CardsList:MultipleImagePickerList,
                  ),

                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.attachment),
                    ExpTitle:"62.Advance Pdf Viewer",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_AdvancePdfViewer_Quizz",
                    CardLength:AdvancePdfViewerList.length,
                    CardsList:AdvancePdfViewerList,
                  ),


                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.edit_attributes),
                    ExpTitle:"63.Google NavBar",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_GoogleNavBar_Quizz",
                    CardLength:GoogleNavBarList.length,
                    CardsList:GoogleNavBarList,
                  ),


                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.format_shapes),
                    ExpTitle:"64.Clippy",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_Clippy_Quizz",
                    CardLength:ClippyList.length,
                    CardsList:ClippyList,
                  ),


                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.grain),
                    ExpTitle:"65.Water Drop",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_WaterDrop_Quizz",
                    CardLength:WaterDropList.length,
                    CardsList:WaterDropList,
                  ),


                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.timer),
                    ExpTitle:"66.Day Night Picker",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_DayNightPicker_Quizz",
                    CardLength:DayNightPickerList.length,
                    CardsList:DayNightPickerList,
                  ),

                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.import_contacts),
                    ExpTitle:"67.GrafPix",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_GrafPix_Quizz",
                    CardLength:GrafPixList.length,
                    CardsList:GrafPixList,
                  ),

                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.wb_iridescent),
                    ExpTitle:"68.ListScrollWheel",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_ListScrollWheel_Quizz",
                    CardLength:ListScrollWheelList.length,
                    CardsList:ListScrollWheelList,
                  ),

                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.warning),
                    ExpTitle:"69.Animated Dialog",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_AnimatedDialog_Quizz",
                    CardLength:AnimatedDialog.length,
                    CardsList:AnimatedDialog,
                  ),

                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.repeat),
                    ExpTitle:"70.Toggle Buttons",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_ToggleButtons_Quizz",
                    CardLength:ToggleButtonsLst.length,
                    CardsList:ToggleButtonsLst,
                  ),

                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.title),
                    ExpTitle:"71.Selectable Text",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_Selectable_Quizz",
                    CardLength:SelectableTextLst.length,
                    CardsList:SelectableTextLst,
                  ),

                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.grid_on),
                    ExpTitle:"72.GridView",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_Selectable_Quizz",
                    CardLength:GridViewLst.length,
                    CardsList:GridViewLst,
                  ),


                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.navigation),
                    ExpTitle:"73.Curved NavBar",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_CurvedNavBar_Quizz",
                    CardLength:CurvedNavBarLst.length,
                    CardsList:CurvedNavBarLst,
                  ),

                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.navigation),
                    ExpTitle:"74.FloatingActionButton",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_FloatingActionButton_Quizz",
                    CardLength:FloatingActionButtonLst.length,
                    CardsList:FloatingActionButtonLst,
                  ),

                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.info),
                    ExpTitle:"75.ToolTip",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_ToolTip_Quizz",
                    CardLength:ToolTipLst.length,
                    CardsList:ToolTipLst,
                  ),

                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.arrow_back),
                    ExpTitle:"76.Back Detector",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_BackDetector_Quizz",
                    CardLength:BackDetectorLst.length,
                    CardsList:BackDetectorLst,
                  ),

                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.content_cut),
                    ExpTitle:"77.Clipping",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_Clipping_Quizz",
                    CardLength:ClippingLst.length,
                    CardsList:ClippingLst,
                  ),

                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.navigation),
                    ExpTitle:"78.NavigationBar Rail",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_NavigationBarRail_Quizz",
                    CardLength:NavBarRailLst.length,
                    CardsList:NavBarRailLst,
                  ),

                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.navigation),
                    ExpTitle:"79.Fancy Bottom NavBar",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_FancyBottomNavBar_Quizz",
                    CardLength:FancyNavBarLst.length,
                    CardsList:FancyNavBarLst,
                  ),

                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.color_lens),
                    ExpTitle:"80.Color Picker",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_ColorPicker_Quizz",
                    CardLength:ColorPickerLst.length,
                    CardsList:ColorPickerLst,
                  ),



                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.favorite),
                    ExpTitle:"81.Like Button",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_LikeButton_Quizz",
                    CardLength:LikeButtonLst.length,
                    CardsList:LikeButtonLst,
                  ),

                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.fiber_dvr),
                    ExpTitle:"82.Sliver AppBar",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_SliverAppBar_Quizz",
                    CardLength:SliverAppBarLst.length,
                    CardsList:SliverAppBarLst,
                  ),





                  SizedBox(height: 10,),
                  CmpCustExpTile(
                    ExpIcon:Icon(Icons.more_horiz),
                    ExpTitle:"83.Advanced",
                    ExpBg:Colors.teal,
                    ExInsideBg:Colors.teal[100],
                    BordRadius:20.0,
                    InQuizzRoute:"/Generate_Advanced_Quizz",
                    CardLength:AdvancedList.length,
                    CardsList:AdvancedList,
                  ),



                  SizedBox(height: 20,),
                  RatingUI(),




                ]
            ),
          ),
        ],
      ),
      floatingActionButton:Column(
        mainAxisAlignment:MainAxisAlignment.end,
        children: <Widget>[
          Container(
            width:37,
            height:37,
            child:FloatingActionButton(
              heroTag:"FrontPage_Up",
              backgroundColor:Colors.deepOrange,
              child:Icon(Icons.arrow_drop_up),
              onPressed:(){
                SCFrontPage.animateTo(
                  0,
                  duration:Duration(milliseconds:500),
                  curve:Curves.fastOutSlowIn,
                );
              },
            ),
          ),
          SizedBox(height:6,),
          Container(
            width:37,
            height:37,
            child:FloatingActionButton(
              heroTag:"FrontPage_Down",
              backgroundColor:Colors.deepOrange,
              child:Icon(Icons.arrow_drop_down),
              onPressed:(){
                SCFrontPage.animateTo(
                  SCFrontPage.position.maxScrollExtent,
                  duration:Duration(milliseconds:500),
                  curve:Curves.fastOutSlowIn,
                );
              },
            ),
          ),

        ],
      ),

    );
  }

  @override
  bool get wantKeepAlive => true;

}



