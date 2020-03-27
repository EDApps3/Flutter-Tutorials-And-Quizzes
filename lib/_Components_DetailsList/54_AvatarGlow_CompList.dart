import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


var AvatarGlow_Intro_CompList =[
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
              CmpTitle(Title:"What Is Avatar Glow?",),
              Divider(),
              CmpSubTitle(SubTitle:"Provides Background Glowing Animation",),
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
              Image.asset("Images/Glow.PNG"),
              CmpSubTitle(SubTitle:"\nTo Use We Need  To Import:\nimport 'package:avatar_glow/avatar_glow.dart';\n",),
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



String AvatarGlow_1Glow_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(Avatar1Glow) To Be Runned\n\n"
    "-This Class Is Stateless As Just We want To Display A Glowing Image\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Allow Us To Use Scaffold\n\n"
    "-Scaffold Allow Us To Use AppBar And Body\n\n"
    "-The AppBar Have Simple Title\n\n"
    "-Body Contain Centered Layout Taking AvatarGlow\n\n"
    "-glowColor Set The Glowing Color\n\n"
    "-showTwoGlows When Set To False It Show 1 Glow,When Set To True Show 2 Glow\n\n"
    "-endRadius Range Radius That Glow End\n\n"
    "-As An Child You Can Set Any Widgets,Here Taking SizedBox Having Width And height Set To 90 Taking An Circle Avatar Where Background Color Set To Cyan Taking An Image\n\n"
    "";


List AvatarGlow_1Glow_list =[
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
                "AvatarGlow(\n"
                " glowColor:Colors.teal,\n"
                " showTwoGlows:false,\n"
                " endRadius:80.0,\n"
                " child:\n"
                "  //Any Widget(CircleAvatar,SizedBox...)\n"
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


String AvatarGlow_2Glow_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(Avatar2Glow) To Be Runned\n\n"
    "-This Class Is Stateless As Just We want To Display A Glowing Image\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Allow Us To Use Scaffold\n\n"
    "-Scaffold Allow Us To Use AppBar And Body\n\n"
    "-The AppBar Have Simple Title\n\n"
    "-Body Contain Centered Layout Taking AvatarGlow\n\n"
    "-glowColor Set The Glowing Color\n\n"
    "-showTwoGlows When Set To False It Show 1 Glow,When Set To True Show 2 Glow\n\n"
    "-endRadius Range Radius That Glow End\n\n"
    "-As An Child You Can Set Any Widgets,Here Taking SizedBox Having Width And height Set To 35 Taking An Circle Avatar Where Background Color Set To Transparent Taking An Image\n\n"
    "";


List AvatarGlow_2Glow_list =[
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
                "AvatarGlow(\n"
                    " glowColor:Colors.cyan,\n"
                    " showTwoGlows:true,\n"
                    " endRadius:80.0,\n"
                    " child:\n"
                    "  //Any Widget(CircleAvatar,SizedBox...)\n"
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



String AvatarGlow_More_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(AvatarGlowMore) To Be Runned\n\n"
    "-Before Creating AvatarGlowMore Lets Create Cmp_AG Class That Return Avatar Glow Using Constructor To Avoid Duplication\n\n"
    "-Creating Class Cmp_AG,Stateless As Returning An Avatar Glow With Specified Data Sent Into Constructor(No State Change)\n\n"
    "-Creating Changable Variables Bool STG Representing Show Two Glow Set To True Or False,Double ER Representing End Radius\n\n"
    "-Now Creating The Contructor Taking Those Variables,Noting That Constructor Have Same Class Name\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Now Return The Avatar Glow With Its Specification\n\n"
    "-glowColor Set The Glowing Color\n\n"
    "-showTwoGlows When Set To False It Show 1 Glow,When Set To True Show 2 Glow\n\n"
    "-endRadius Range Radius That Glow End\n\n"
    "-As An Child Taking Icon\n\n\n\n"

    "-Now Creating The Main Class AvatarGlowMore,Stateless No State Change\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Allow Us To Use Scaffold\n\n"
    "-Scaffold Allow Us To Use AppBar And Body\n\n"
    "-The AppBar Have Simple Title\n\n"
    "-Body Contain ListView That Allow Scroll Verticaly And Avoid OverFlow\n\n"
    "-Taking As Childrens Sized Card Having Simple Text,Divider And SingleChildScrollView\n\n"
    "-SingleChildScrollView Allow Scrolling Horizontally And Take When Child A Row Where It Take 5 Columns\n\n"
    "-Each Columns Divided Into 2 Parts,First Part Showing Values And Second Part Calling Constructor To Set An Avatar Glow With The Passed Values\n\n"
   "";


List AvatarGlow_More_list =[
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
                "AvatarGlow(\n"
                    " glowColor:Colors.cyan,\n"
                    " showTwoGlows:true,\n"
                    " endRadius:80.0,\n"
                    " child:\n"
                    "  //Any Widget(CircleAvatar,SizedBox...)\n"
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