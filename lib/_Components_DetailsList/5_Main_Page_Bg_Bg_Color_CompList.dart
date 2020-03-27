import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


String MainBg_MainBg_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(MainBgCustomColorRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Set Background Color to Blue (No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Contain A Scaffold That Allow Us To Create The Body Of The Page (All Widgets That Appear)\n\n"
    "-Now Body Is Covered By a Container That Has\n"
    "  Blue Background Color Set By color\n"
    "  A Width That Cover The Page\n"
    "  A Height That Cover The Page\n\n"
    "-double.infinity Genrerate Max Width Height\n\n"
    "-Now All Widgets To Be Added Will Be Childrens Of The Container";


List MainBg_MainBg_list =[
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
              CmpTitle(Title:"Main BackgroundColor:",),
              Divider(),
              CmpSubTitle(SubTitle:"Set The Color To A The Body Of The Page",),
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
                    "body:\n"
                    " Container(\n"
                    "   color:Colors.blue,\n"
                    "   width:double.infinity,\n"
                    "   height: double.infinity,\n"
                    "  child:\n"
                    "   //Widgets Go Here\n"
                    "),\n",
              ),
            ]
        ),
      ),
    ),
  ),
];


//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------

String MainBg_GradientBgColor_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(MainBgGradientRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Set Background Color to Gradient (No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Contain A Scaffold That Allow Us To Create The Body Of The Page (All Widgets That Appear)\n\n"
    "-Now Body Is Covered By a Container That Has\n"
    "  A Width That Cover The Page\n"
    "  A Height That Cover The Page\n"
    "  A BoxDecoration To Set Gradient \n\n"
    "-double.infinity Genrerate Max Width Height\n\n"
    "-First BoxDecoration Must Have:\n"
    "  LinearGradient To Set The Gradient Of Colors That Go From Purple Opacity 700 To 500\n"
    "  Fractional Offset Represent fraction Of Size\n"
    "  Begin Offset Wich Stop At 5 From Start And End Wich Stop At 5 where the gradient is placed\n"
    "  stops Number Always Between 0 and 1 that Denote Fraction along the Gradient\n"
    "  Tile Mode Clamp Replicate The Edge Color\n\n"
    "-Now All Widgets To Be Added Will Be Childrens Of The Container";


List MainBg_GradientBgColor_list =[
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
              CmpTitle(Title:"Main BackgroundColor:",),
              Divider(),
              CmpSubTitle(SubTitle:"Set The Color To A The Body Of The Page",),
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
                    "body:\n"
                    " new Container(\n"
                    "  width: double.infinity,\n"
                    "  height: double.infinity,\n"
                    "decoration:\n"
                    "  new BoxDecoration(\n"
                    " gradient:\n"
                    "  new LinearGradient(\n"
                    "   colors:[\n"
                    "    Colors.deepPurple[700],\n"
                    "    Colors.purple[500]\n"
                    "   ],\n"
                    "  begin:\n"
                    "   const FractionalOffset(0.5,0.0),\n"
                    "  end:\n"
                    "   const FractionalOffset(0.0,0.5),\n"
                    "  stops:[0.0,1.0],\n"
                    "  tileMode:\n"
                    "   TileMode.clamp\n"
                    "  ),\n"
                    " ),\n"
                    " child:\n"
                    "  //Widgets\n"
                    "),",
              ),
            ]
        ),
      ),
    ),
  ),
];


//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------


String MainBg_GradientBgColorAppBar_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(MainBgGradientAppBarRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Set Background Color to Gradient With An AppBar (No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Contain A Scaffold That Allow Us To Create AppBar And The Body Of The Page (All Widgets That Appear)\n\n"
    "-As An AppBar It Take An Title\n\n"
    "-Now Body Is Covered By a Container That Has\n"
    "  A Width That Cover The Page\n"
    "  A Height That Cover The Page\n"
    "  A BoxDecoration To Set Gradient \n\n"
    "-double.infinity Genrerate Max Width Height\n\n"
    "-First BoxDecoration Must Have:\n"
    "  LinearGradient To Set The Gradient Of Colors That Go From Purple Opacity 700 To 500\n"
    "  Fractional Offset Represent fraction Of Size\n"
    "  Begin Offset Wich Stop At 5 From Start And End Wich Stop At 5 where the gradient is placed\n"
    "  stops Number Always Between 0 and 1 that Denote Fraction along the Gradient\n"
    "  Tile Mode Clamp Replicate The Edge Color\n\n"
    "-Now All Widgets To Be Added Will Be Childrens Of The Container\n";


List MainBg_GradientBgColorAppBar_list =[
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
              CmpTitle(Title:"Main BackgroundColor:",),
              Divider(),
              CmpSubTitle(SubTitle:"Set The Color To A The Body Of The Page",),
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
                "body:\n"
                    " Container(\n"
                    "   color:Colors.blue,\n"
                    "   width:double.infinity,\n"
                    "   height: double.infinity,\n"
                    "  child:\n"
                    "   //Widgets Go Here\n"
                    "),\n",
              ),
            ]
        ),
      ),
    ),
  ),
];


//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------


String MainBg_BgDarkGAppBar_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(MainBgDarkGAppBarRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Set AppBar Background Color to Grey With Dark Theme (No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-Material App Has The Dark Theme Display On Entire View\n\n"
    "-As An Home It Contain A Scaffold That Allow Us To Create The AppBar\n\n"
    "-Finally The App Bar Has Title And The BackgroundColor Set To Grey\n\n";


List MainBg_BgDarkGAppBar_list =[
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
              CmpTitle(Title:"Styling The Page:",),
              Divider(),
              CmpSubTitle(SubTitle:"Setting Up Theme And App Bar Background Color",),
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
                    "MaterialApp (\n"
                    " theme:ThemeData.dark(),\n"
                    " home: new Scaffold(\n"
                    "  appBar: AppBar(\n"
                    '   title:\n'
                    '     Text("Dark Bg + Grey AppBar"),\n'
                    "   backgroundColor:\n"
                    "     Colors.grey,\n"
                    "  ),\n"
                    " ),\n"
                    "),\n"
              ),
            ]
        ),
      ),
    ),
  ),
];


//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------



String MainBg_BgLightRAppBar_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(MainBgLightRAppBarRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Set AppBar Background Color to Red With Light Theme (No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-Material App Has The Light Theme Display On Entire View\n\n"
    "-As An Home It Contain A Scaffold That Allow Us To Create The AppBar\n\n"
    "-Finally The App Bar Has Title And The BackgroundColor Set To Red\n\n";


List MainBg_BgLightRAppBar_list =[
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
              CmpTitle(Title:"Styling The Page:",),
              Divider(),
              CmpSubTitle(SubTitle:"Setting Up Theme And App Bar Background Color",),
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
                      "MaterialApp (\n"
                      " theme:ThemeData.light(),\n"
                      " home: new Scaffold(\n"
                      "  appBar: AppBar(\n"
                      '   title:\n'
                      '     Text("Light Bg + Red AppBar"),\n'
                      "   backgroundColor:\n"
                      "     Colors.red,\n"
                      "  ),\n"
                      " ),\n"
                      " ),\n",
              ),
            ]
        ),
      ),
    ),
  ),
];


//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------