import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


List Divider_Intro_list =[
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
              CmpTitle(Title:"What Is Divider:",),
              Divider(),
              CmpSubTitle(SubTitle: "Divider Is A Horizontal Line\nHis Color Changed By Background Color Propertie",),
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


String Divider_Simple_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(SimpleDivider) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Centered Divider (No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Take Scaffold That Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As AppBar It Has An Title\n\n"
    "-As An Body It Has Centered Layout\n\n"
    "-Centered Layout Contain The Divider\n\n";


List Divider_Simple_list =[
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
                      "Divider()",
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


String Divider_Color_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(DividerColorRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Centered Blue Divider (No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Take An Scaffold That Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As AppBar It Has An Title\n\n"
    "-As An Body It Has Centered Layout\n\n"
    "-Centered Layout Contain The Divider\n\n"
    "-Divider Color Set By color";


List Divider_Color_list =[
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
                    "Divider(\n"
                    " color:Colors.blue,\n"
                    ")",
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





String Divider_WH_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(DividerWHRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Centered Custumized Divider (No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Take Scaffold That Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As AppBar It Has An Title\n\n"
    "-As An Body It Has Centered Layout\n\n"
    "-Centered Layout Contain The Sized Box ( Used To Size Widget )\n\n"
    "-Sized Box Take Width/ Height And Set To 250/10\n\n"
    "-Sized Box Take An Container Used To Draw The Customized Line And Has:\n"
    "  Red Color\n"
    "  Width Set To Infinity => Match His Parent (250 => SizedBox)\n"
    "  Height Set To Infinity => Match His Parent (10 => SizedBox)\n";


List Divider_WH_list =[
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
                    "SizedBox(\n"
                    " width: 250,\n"
                    " height: 10,\n"
                    " child:\n"
                    "  Container(\n"
                    "   width:\n"
                    "    double.infinity,\n"
                    "   height:\n"
                    "    double.infinity,\n"
                    "   color:Colors.red,\n"
                    "  ),\n"
                    "),\n"
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