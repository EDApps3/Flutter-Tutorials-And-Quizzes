import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


String InAppUpdate_Explanation=
    "Soon!\n\n";


List InAppUpdate_list =[
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
              CmpTitle(Title:"What Is InAppUpdate?",),
              Divider(),
              CmpSubTitle(SubTitle:"Enables In App Updates on Android using the official Android APIs.",),
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
              Image.asset("Images/InAppUpdate.PNG",),
              CmpSubTitle(SubTitle:"\n\nDon't Forget To Get Packages!",),
              CmpSubTitle(SubTitle:"\n\nWe Need To Import:\nimport 'package:in_app_update/in_app_update.dart';\n",),
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
              CmpSubTitle(SubTitle:"1-Create Variabble\n",),
              CmpCode(CodeTxt:" AppUpdateInfo _updateInfo;\n",),

              CmpSubTitle(SubTitle:"2-Check For Update\n",),
              CmpCode(
                CodeTxt:
                  "Future<void> checkForUpdate() async {\n"
                  " InAppUpdate.checkForUpdate().then((info) {\n"
                  "  setState(() {\n"
                  "   _updateInfo = info;\n"
                  "  });\n"
                  " }).catchError((e) => _showError(e));\n"
                  " if(_updateInfo.updateAvailable == true){\n"
                  "  Update();\n"
                  " }\n"
                  " else{\n"
                  "  //Updated\n"
                  " }\n"
                  "}\n"
                ),

                CmpSubTitle(SubTitle:"2-Perform Update\n",),
              CmpCode(
                CodeTxt:
                  "Future<void> Update() async {\n"
                  " InAppUpdate.performImmediateUpdate().catchError(\n"
                  "   (e) => _showError(e)\n"
                  " );\n"
                  "}\n"
                ),

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




String InAppUpdate2_Explanation=
    "Soon!\n\n";


List InAppUpdate2_list =[
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
              CmpTitle(Title:"What Is PackageInfo?",),
              Divider(),
              CmpSubTitle(SubTitle:"Package Used To Get App Installed PackageName,Version,Build Number And Description.Will be Used Here To Detect User App Version And Compare It To PlayStoreApp version!",),
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
              CmpSubTitle(SubTitle:"We Need To Import Into The Yaml The Plugins:",),
              SizedBox(height: 16,),
              Image.asset("Images/InAppUpdate2.PNG",),
              CmpSubTitle(SubTitle:"\n\nDon't Forget To Get Packages!",),
              CmpSubTitle(
                SubTitle:
                 "\n\nWe Need To Import:\n"
                 "import 'package:package_info/package_info.dart';\n"
                 "import 'package:toast/toast.dart';\n"
                 "import 'package:url_launcher/url_launcher.dart';\n"
                 "import 'package:http/http.dart' as http;\n"
                ),
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

              CmpSubTitle(SubTitle:"1-Create PackageInfo Variable\n",),
              CmpCode(
                CodeTxt:
                 "PackageInfo PI=PackageInfo(\n"
                 " appName    :  'Unknown',\n"
                 " packageName:  'Unknown',\n"
                 " version    :  'Unknown',\n"
                 " buildNumber:  'Unknown',\n"
                 ");\n",
              ),

              CmpSubTitle(SubTitle:"2-Create AppPlayStoreVersion Variable\n",),
              CmpCode(CodeTxt:"String AppPlayStoreVersion;",),

              CmpSubTitle(SubTitle:"3-Create MyAppVersion Variable\n",),
              CmpCode(CodeTxt:"String MyAppVersion;",),

              CmpSubTitle(SubTitle:"4-Get Installed App Version\n",),
              CmpCode(
                CodeTxt:
                  "Future<void> GetMyAppVersion() async {\n"
                  " final PackageInfo info=await PackageInfo.fromPlatform();\n"
                  " setState(() {\n"
                  "  PI=info;\n"
                  "  MyAppVersion=PI.version;\n"
                  " });\n"
                  "}\n"
                ),


              CmpSubTitle(SubTitle:"5-Get PlayStore App Version\n",),
              CmpCode(
                CodeTxt:
                  "Future<void> GetAppPlayStoreVersion() async {\n"
                  " var url = 'https://play.google.com/store/apps/details?id=edapps.com.flutter_tutorials_and_quizzes';\n"
                  " http.Response response = await http.get(url);\n"
                  " setState(() {\n"
                  "  DataTxt=response.body;\n"
                  " });\n"
                  " String pat1 = 'Current Version</div><span class='htlgb'><div class='IQ1z0d'><span class='htlgb'>';\n"
                  " String pat2 = '</span>';\n"
                  " int p1 = DataTxt.indexOf(pat1) + pat1.length;\n"
                  " String f = DataTxt.substring(p1,DataTxt.length);\n"
                  " int p2 = f.indexOf(pat2);\n"
                  " AppPlayStoreVersion = f.substring(0, p2);\n"
                  "}"
                ),

              CmpSubTitle(SubTitle:"6-Now If The User App Version Is Less Then PlayStore App Update Required!\n",),
             
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

