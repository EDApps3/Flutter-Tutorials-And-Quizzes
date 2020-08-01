import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';
import 'package:get/get.dart';
import '../AppSoundPlay.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Courses/CmpWebView.dart';

var AppBadgerGlobal =ListTile(
    leading:Image.asset("Images/Dart_Logo.png"),
    title:Text("Flutter App Badger",),
    subtitle:Text("Tap Here To See The Official Documentation Provided On This Widget!",),
    onTap:(){
      PlayTapSound();
      Get.to(
      CmpWebViewPage(
        Title:"Flutter App Badger",
        GoUrl:"https://pub.dev/packages/flutter_app_badger",
      )
      );
    },
);

List AppBadger_OffDoc=[
  SizedBox(height:10),
  AppBadgerGlobal,
];




String FlutterAppBadger_Explanation=
    "-main Is The Principal Method Used To Run FlutterAppBadgerRun Class On Start\n\n"
    "-Creating Class FlutterAppBadgerRun,Statefull Widget Due To Applying Changes And Changing NotifCount Appearing To The Badge, Create State Needed\n\n"
    "-Creating State Class FlutterAppBadgerState That Extend Its Main State From The Main Class FlutterAppBadgerRun\n\n"
    "-Creating String Variable _appBadgeSupported Where We Store Text If Plugin Supported Initialized To Unknown From Start\n\n"
    "-Creating Variable NotifCounter Where It Store Number To Show On Badge Incremented On Raised Button Press\n\n"
    "-First in initState We Need To Initialize Page And Plugin\n\n"
    "-initPlatformState Is Async Due To It Has To Be Ready Always And Run Fastly Inside Of It FlutterAppBadger Is Checked If Supported Or No And Stored Into Our Variable That W Have Created It _appBadgeSupported\n\n"
    "-As Flutter Is Based On Widgets We Need To Create One\n\n"
    "-Returning Material App That Take As Home Scaffold That Allow Using Body And AppBar\n\n"
    "-As An AppBar Taking Simple Text\n\n"
    "-As An Body Taking Container With Full Width And Height Taking Column (Elements Places Each On Row ) Where The Children Centered Horizontally And Vertically!\n\n"
    "-Row 1 Taking Text Displaying If Plugin Supported\n\n"
    "-Row 2 Taking Sized Raised Button To Width 200 Used To ADD/Update NotifCounter And Display The Badge! Badge Displayed By FlutterAppBadger.updateBadgeCount(NotifCounter); Where NotifCounter Is The Data To Show\n\n"
    "-Row 3 Taking Sized Raised Button To Width 200 Used To Remove The Badge! Badge Removed By FlutterAppBadger.removeBadge();\n\n";



List FlutterAppBadger_list =[
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"What Is AppBadger?",),
              Divider(),
              CmpSubTitle(SubTitle:"This plugin for Flutter adds the ability to change the badge of the app in the launcher.\n",),
              Image.asset("Images/FAppBadger.png"),
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Getting Started:",),
              Divider(),
              CmpSubTitle(SubTitle:"We Need To Import Into The Yaml The Plugin:",),
              SizedBox(height: 16,),
              Image.asset("Images/AppBadger.PNG",),
              CmpSubTitle(SubTitle:"\n\nDon't Forget To Get Packages!",),
              CmpSubTitle(SubTitle:"\n\nWe Need To Import:\nimport 'package:flutter_app_badger/flutter_app_badger.dart';\n",),
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Code:",),
              Divider(),

              CmpSubTitle(SubTitle:"1-Creating String Variable To Display If Plugin Supported:",),
              CmpCode(CodeTxt:"String _appBadgeSupported = 'Unknown';",),

              CmpSubTitle(SubTitle:"2-Initialize Badge Platform",),
              CmpCode(
                CodeTxt:
                 "initPlatformState() async {\n"
                 " String appBadgeSupported;\n"
                 "  try {\n"
                 "   bool res = await FlutterAppBadger.isAppBadgeSupported();\n"
                 "   if (res) {\n"
                 "    appBadgeSupported = 'Supported';\n"
                 "   } else {\n"
                 "    appBadgeSupported = 'Not supported';\n"
                 "   }\n"
                 "  } on PlatformException {\n"
                 "  appBadgeSupported = 'Failed to get badge support.';\n"
                 " }\n"
                 " if (!mounted) return;\n"
                 " setState(() {\n"
                 "  _appBadgeSupported = appBadgeSupported;\n"
                 " });\n"
                 "}\n"
              ),

              CmpSubTitle(SubTitle:"3-Add Or Update Badge:",),
              CmpCode(CodeTxt:"FlutterAppBadger.updateBadgeCount(NotifCounter);",),

              CmpSubTitle(SubTitle:"4-Remove Badge:",),
              CmpCode(CodeTxt:"FlutterAppBadger.removeBadge();",),

            ]
        ),
      ),
    ),
  ),
];


//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------

