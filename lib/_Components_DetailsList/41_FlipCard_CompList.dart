import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


var FlipCard_Intro_CompList =[
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
              CmpTitle(Title:"What Is FlipCard?",),
              Divider(),
              CmpSubTitle(SubTitle:"Component That Provide Flip Card Animation,Could Be Used To Show Or Hide Something.",),
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
              CmpSubTitle(SubTitle:"Adding Plugin Into Yaml Dependency:\n",),
              Image.asset("Images/FC.PNG"),
              CmpSubTitle(SubTitle:"\nTo Use We Need  To Import:\nimport 'package:flip_card/flip_card.dart';\n",),
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

String FlipCard_Hor_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(FlipCardHorRun) To Be Runned\n\n"
    "-This Class Is Statefull Widget To Detect FlipCard State\n\n"
    "-First Creating Main Class FlipCardHorRun And Set Its Main State\n\n"
    "-Secondly Creating Class _FlipCardHorRunState That Extend Its State From Its Main FlipCardHorRun\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Allow Us To Use Scaffold\n\n"
    "-Scaffold Allow Us To Use AppBar And Body\n\n"
    "-The AppBar Have Simple Title\n\n"
    "-Body Contain Centered FlipCard\n\n"
    "-FlipCard Direction Set Horizontally\n\n"
    "-Front Show An Container 150x150 Yellow Having Text Front\n\n"
    "-Back Show An Container 150x150 Orange Having Text Back\n\n";

List FlipCard_Hor_list =[
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
                    "FlipCard(\n"
                    " direction:\n"
                    "  FlipDirection.HORIZONTAL,\n"
                    "  front:\n"
                    "   //Wanted Widget\n"
                    "  back:\n"
                    "  //Wanted Widget\n"
                    ")\n",
              ),
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

String FlipCard_Ver_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(FlipCardVertRun) To Be Runned\n\n"
    "-This Class Is Statefull Widget To Detect FlipCard State\n\n"
    "-First Creating Main Class FlipCardHorRun And Set Its Main State\n\n"
    "-Secondly Creating Class _FlipCardVertState That Extend Its State From Its Main FlipCardVertRun\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Allow Us To Use Scaffold\n\n"
    "-Scaffold Allow Us To Use AppBar And Body\n\n"
    "-The AppBar Have Simple Title\n\n"
    "-Body Contain Centered FlipCard\n\n"
    "-FlipCard Direction Set Vertically\n\n"
    "-Front Show An Container 150x150 Yellow Having Text Front\n\n"
    "-Back Show An Container 150x150 Orange Having Text Back\n\n";

List FlipCard_Ver_list =[
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
                "FlipCard(\n"
                    " direction:\n"
                    "  FlipDirection.VERTICAL,\n"
                    "  front:\n"
                    "   //Wanted Widget\n"
                    "  back:\n"
                    "  //Wanted Widget\n"
                    ")\n",
              ),
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

