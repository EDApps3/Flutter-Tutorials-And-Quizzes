import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


var Toast_Intro_CompList =[
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
              CmpTitle(Title:"What Is Toast?",),
              Divider(),
              CmpSubTitle(SubTitle:"-Short Popup That Show For User For a Duration\n\n-Duration:Display Slow Or Fast\nToast.Length_SHORT (1.5s)\nToast.Length_LONG  (3.0s)\n\n-gravity:Position To Display\nToast.TOP\nToast.CENTER\nToast.BOTTOM\n\n-textColor:Colors.Color_Name\n\n-backgroundColor:\nColors.Color_Name\n\n",),
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:10,),
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
              Image.asset("Images/T.png",),
              CmpSubTitle(SubTitle:"\n\nDon't Forget To Get Packages!",),
              CmpSubTitle(SubTitle:"\nNow When We Need To Use It W have To Import:\nimport 'package:toast/toast.dart';\n\n",),
            ]
        ),
      ),
    ),
  ),
];

//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------

String Toast_TopToast_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(ToastTopRun) To Be Runned\n\n"
    "-This Class Is Statefull Widget As We Need To Detect Toast State(Shown,Hidden)\n\n"
    "-Creating State Class ToastTopRunState That Extend Its State From The Main Class ToastTopRun\n\n"
    "-Creating A Method ShowToast Used To Show Toast Taking Text To Be Shown,Context As Its An Material Design,Duration And Position To Show\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It And Having Light Theme\n\n"
    "-As An Home It Take Scaffold That Have An AppBar With Title And A Body\n\n"
    "-The Body Contain Center Layout That Hold Raised Button To Be Centered\n\n"
    "-Once The Button Pressed We're Calling The Method That Show A Toast With The Given Options!";


List Toast_TopToast_list =[
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
              CmpTitle(Title:"Top Toast:",),
              Divider(),
              CmpSubTitle(SubTitle:"Toast That Appear At The Top Of The Page!",),
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:10,),
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
                    "Toast.show(\n"
                    " 'Message_Text_To_Show'\n"
                    "  context,\n"
                    "  duration:\nToast.LENGTH_SHORT,\n"
                    "  gravity:Toast.TOP,\n"
                    ");"
              ),
            ]
        ),
      ),
    ),
  ),
];


//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------


String Toast_CenterToast_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(ToastCenterRun) To Be Runned\n\n"
    "-This Class Is Statefull Widget As We Need To Detect Toast State(Shown,Hidden)\n\n"
    "-Creating State Class ToastCenterRunState That Extend Its State From The Main Class ToastCenterRun\n\n"
    "-Creating A Method ShowToast Used To Show Toast Taking Text To Be Shown,Context As Its An Material Design,Duration,Position To Show And Background Color\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It And Having Light Theme\n\n"
    "-As An Home It Take Scaffold That Have An AppBar With Title And A Body\n\n"
    "-The Body Contain Center Layout That Hold Raised Button To Be Centered\n\n"
    "-Once The Button Pressed We're Calling The Method That Show A Toast With The Given Options!";


List Toast_CenterToast_list =[
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
              CmpTitle(Title:"Center Toast:",),
              Divider(),
              CmpSubTitle(SubTitle:"Toast That Appear At The center Of The Page!",),
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:10,),
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
                      "Toast.show(\n"
                      " 'Message_Text_To_Show'\n"
                      " context,\n"
                      " duration:\n  Toast.LENGTH_LONG,\n"
                      " gravity:Toast.CENTER,\n"
                      " backgroundColor:\n Colors.red,\n"
                      ");"
              ),
            ]
        ),
      ),
    ),
  ),
];


//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------



String Toast_BottomToast_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(ToastBottomRun) To Be Runned\n\n"
    "-This Class Is Statefull Widget As We Need To Detect Toast State(Shown,Hidden)\n\n"
    "-Creating State Class ToastBottomRunState That Extend Its State From The Main Class ToastBottomRun\n\n"
    "-Creating A Method ShowToast Used To Show Toast Taking Text To Be Shown,Context As Its An Material Design,Duration,Position To Show And Text Color\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It And Having Light Theme\n\n"
    "-As An Home It Take Scaffold That Have An AppBar With Title And A Body\n\n"
    "-The Body Contain Center Layout That Hold Raised Button To Be Centered\n\n"
    "-Once The Button Pressed We're Calling The Method That Show A Toast With The Given Options!";


List Toast_BottomToast_list =[
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
              CmpTitle(Title:"Bottom Toast:",),
              Divider(),
              CmpSubTitle(SubTitle:"Toast That Appear At The Bottom Of The Page!",),
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:10,),
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
                      "Toast.show(\n"
                      "'Message_Text_To_Show'\n"
                      " context,\n"
                      " duration:\n  Toast.LENGTH_SHORT,\n"
                      " gravity:Toast.BOTTOM,\n"
                      " textColor:\n  Colors.blue\n"
                      ");"
              ),
            ]
        ),
      ),
    ),
  ),
];


//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------