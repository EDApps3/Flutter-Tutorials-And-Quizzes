import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


List SnackBar_Intro_list =[
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
              CmpTitle(Title:"What Is An SnackBar?",),
              Divider(),
              CmpSubTitle(SubTitle:"Message With An Optional Action Wich Briefly Display At The Bottom Of The Screen,Options:\n-BackgroundColor\n-Elevation\n-ShapeBorder\n-Duration\n-Action"),
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


String SnackBar_Simple_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(SimpleSnBarRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Show SnackBar (No State Change)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It And Having Light Theme\n\n"
    "-As An Home It Has Scaffold That Allow Us To Use AppBar And Set Body\n\n"
    "-As An AppBar It Has A Title\n\n"
    "-As An Body It Has Centered Layout That Hold A Flat Button\n\n"
    "-A Flat Button Has its Value Set By Text\n\n"
    "-Once Button Is Pressed It Will Show SnackBar SBarVar\n\n"
    "-SBarVar Is A SnackBar With a Text SnackBarTxt\n\n";


List Snackbar_Simple_list =[
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
                     "final SBarVar=SnackBar(\n"
                      ' content:\n'
                      '  Text("SnackBar Txt"),\n'
                      ");\n"
                      "Scaffold.of(context).showSnackBar(\n SBarVar\n);\n"
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
//---------------------------------------------------------



String SnackBar_Red_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(SnBarBgRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Show SnackBar (No State Change)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It And Having Light Theme\n\n"
    "-As An Home It Has Scaffold That Allow Us To Use AppBar And Set Body\n\n"
    "-As An AppBar It Has A Title\n\n"
    "-As An Body It Has Centered Layout That Hold A Flat Button\n\n"
    "-A Flat Button Has its Value Set By Text\n\n"
    "-Once Button Is Pressed It Will Show SnackBar SBarVar\n\n"
    "-SBarVar Is A SnackBar With a Text SnackBarTxt And Red Background Color Set By BackgroundColor\n\n";


List Snackbar_Red_list =[
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
                      "final SBarVar=SnackBar(\n"
                      " backgroundColor:\n  Colors.red,\n"
                      ' content:\n'
                      '  Text("SnackBar Txt"),\n'
                      ");\n"
                      "Scaffold.of(context).showSnackBar(\n SBarVar\n);\n",
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
//---------------------------------------------------------


String SnackBar_Duration_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(SnBarDurRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Show SnackBar (No State Change)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It And Having Light Theme\n\n"
    "-As An Home It Has Scaffold That Allow Us To Use AppBar And Set Body\n\n"
    "-As An AppBar It Has A Title\n\n"
    "-As An Body It Has Centered Layout That Hold A Flat Button\n\n"
    "-A Flat Button Has its Value Set By Text\n\n"
    "-Once Button Is Pressed It Will Show SnackBar SBarVar\n\n"
    "-SBarVar Is A SnackBar With a Text SnackBarTxt\n\n"
    "-SnackBar Duration Set By duration and it Can Set By Seconds,Minutes....\n\n";



List Snackbar_Duration_list =[
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
                    "final SBarVar=SnackBar(\n"
                    " duration:\n  Duration(seconds:10),\n"
                    ' content:\n'
                    '  Text("SnackBar Txt"),\n'
                    ");\n"
                    "Scaffold.of(context).showSnackBar(\n SBarVar\n);\n",
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
//---------------------------------------------------------


String SnackBar_Shape_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(SnBarShapeRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Show SnackBar (No State Change)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It And Having Light Theme\n\n"
    "-As An Home It Has Scaffold That Allow Us To Use AppBar And Set Body\n\n"
    "-As An AppBar It Has A Title\n\n"
    "-As An Body It Has Centered Layout That Hold A Flat Button\n\n"
    "-A Flat Button Has its Value Set By Text\n\n"
    "-Once Button Is Pressed It Will Show SnackBar SBarVar\n\n"
    "-SBarVar Is A SnackBar With a Text SnackBarTxt\n\n"
    "-The SnackBar Has A Shape Set Radius by 30Deg By Sides\n\n";



List Snackbar_Shape_list =[
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
                    "final SBarVar=SnackBar(\n"
                    " shape:\n"
                    " RoundedRectangleBorder(\n"
                    "  borderRadius:\n   BorderRadius.circular(30),\n"
                    "  ),\n"
                    ' content:\n  Text("SnackBar Txt"),\n'
                    ");\n"
                    "Scaffold.of(context).showSnackBar(\n SBarVar\n);",
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
//---------------------------------------------------------


String SnackBar_Action_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(SnBarActRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Show SnackBar (No State Change)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It And Having Light Theme\n\n"
    "-As An Home It Has Scaffold That Allow Us To Use AppBar And Set Body\n\n"
    "-As An AppBar It Has A Title\n\n"
    "-As An Body It Has Centered Layout That Hold A Flat Button\n\n"
    "-A Flat Button Has its Value Set By Text\n\n"
    "-Once Button Is Pressed It Will Show SnackBar SBarVar\n\n"
    "-SBarVar Is A SnackBar With a Text SnackBarTxt\n\n"
    "-As An Action It Has A label Once Pressed It Gonna Do The Instruction, Here It Take The User To Url Defined in launchUrl Method!\n\n";



List Snackbar_Action_list =[
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
                    "final SBarVar=SnackBar(\n"
                    ' content:\n'
                    '   Text("SnackBar Txt"),\n'
                    ' action:SnackBarAction(\n'
                    '   label:"LabelTxt",\n'
                    '   onPressed:(){ //Do },\n'
                    ' ),\n'
                    ");\n"
                    "Scaffold.of(context).showSnackBar(\n SBarVar\n);\n",
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
//---------------------------------------------------------