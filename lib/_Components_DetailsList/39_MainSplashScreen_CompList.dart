import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';



String MainSplashScreen_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(MainSplashScreenRun) To Be Runned\n\n"
    "-This Class Is Statfull Widget As We Have Timer To Load Wanted Page And We're Creating Its State\n\n"
    "-Now Creating State Class MainSplashScreenState That Extends Its State Fro The Main Class MainSplashScreenRun\n"
    "-Initializing The State Once Class Runned\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App\n\n"
    "-As An Home It Has Scaffold That Allow Us To Set Body\n\n"
    "-As An Body It Has A SplashScreen That:\n\n"
    "-Appear For 5 Seconds\n\n"
    "-Go To Page() After 5 seconds\n\n"
    "-Having Main title\n\n"
    "-Having Image Sized To 175\n\n"
    "-Background Color Set To Blue\n\n"
    "-Loader Color Set To Yellow\n\n"
    "-Finally Loading Text\n\n\n"
    "-Now We Need To Create Page That We Will Load After 5 Seconds\n\n"
    "-The Page Is Simple Having As An Body Cenered Text\n\n";



List MainSplashScreen_list =[
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
              CmpSubTitle(SubTitle:"First We Need To Add The Plugin Into Yaml Dependency\n\n",),
              Image.asset("Images/MSS.PNG"),
              CmpSubTitle(SubTitle:"\n\nDon't Forget To Get Packages\n\n",),
              CmpSubTitle(SubTitle:"\nWhen We Need To Use Used We Have To Import:\nimport 'package:splashscreen/splashscreen.dart';",),
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
              CmpCode(
                CodeTxt:
                    "SplashScreen(\n"
                    " seconds:5,\n"
                    " navigateAfterSeconds:Page(),\n"
                    " title:Text('Title'),\n"
                    " image:Image.asset('ImagePath'),\n"
                    " photoSize:175,\n"
                    " backgroundColor:Colors.white70,\n"
                    " loaderColor:Colors.cyan,\n"
                    " loadingText:Text('Loading Text'),\n"
                    ")",
              ),

            ]
        ),
      ),
    ),
  ),
];

