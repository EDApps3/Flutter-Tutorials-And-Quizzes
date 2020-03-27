import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';



var Marquee_Intro_CompList =[
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
              CmpTitle(Title:"What Is Marquee?",),
              Divider(),
              CmpSubTitle(SubTitle:"A Flutter Widget That Scroll Text",),
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
              Image.asset("Images/Marquee.PNG",),
              CmpSubTitle(SubTitle:"\n\nDon't Forget To Get Packages!",),
              CmpSubTitle(SubTitle:"\n\nWe Need To Import:\nimport 'package:marquee/marquee.dart';\n",),
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


String SimpleMarquee_Explanation=
    "-Main Is Principal Method Call Simple Marquee Class On Start\n\n"
    "-Creating Simple Marquee Class\n\n"
    "-As Flutter Is Based On Widgets We Need To Create One\n\n"
    "-Creating Material App That Allow Us To Use Scaffold\n\n"
    "-Scaffold Allow Us To Create Body And AppBar\n\n"
    "-As An AppBar It Take An Sized Box Width And Height Set To Max Taking An Marquee Having Its Text,Style,Spacing And Its Position\n\n"
    "-As An Body It Take An ListView\n\n"
    "-List View Having Cards Sized With Sized Boxs Having Marquees\n\n";


List SimpleMarquee_list =[
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
              CmpTitle(Title:"AppBar Marquee Title:",),
              Divider(),
              CmpSubTitle(SubTitle:"Text Displaying Into Marquee In AppBar",),
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
                    "Marquee(\n"
                    " text:'Txt',\n"
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


String MarqueeScrollAxis_Explanation=
    "-Main Is Principal Method Call MarqueeScrollAxis Class On Start\n\n"
    "-Creating MarqueeScrollAxis Class\n\n"
    "-As Flutter Is Based On Widgets We Need To Create One\n\n"
    "-Creating Material App That Allow Us To Use Scaffold\n\n"
    "-Scaffold Allow Us To Create Body And AppBar\n\n"
    "-As An AppBar It Take A Title\n\n"
    "-As An Body It Take An ListView\n\n"
    "-List View Having Cards Sized With Sized Boxs Having Marquees\n\n"
    "-First Card scrollAxis Is Horizontal\n\n"
    "-Second Card scrollAxis Is Vertical\n\n";


List MarqueeScrollAxis_list =[
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
              CmpTitle(Title:"MarqueeScrollAxis:",),
              Divider(),
              CmpSubTitle(SubTitle:"Go Vertical Or Horizontal",),
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
                        "Marquee(\n"
                        " text:'Txt',\n"
                        " scrollAxis:Axis.horizontal,\n"
                        ")\n\n\n\n"

                        "Marquee(\n"
                        " text:'Txt',\n"
                        " scrollAxis:Axis.vertical,\n"
                        ")\n\n",
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


String MarqueeCrossAxis_Explanation=
    "-Main Is Principal Method Call MarqueeCrossAxis Class On Start\n\n"
    "-Creating MarqueeCrossAxis Class\n\n"
    "-As Flutter Is Based On Widgets We Need To Create One\n\n"
    "-Creating Material App That Allow Us To Use Scaffold\n\n"
    "-Scaffold Allow Us To Create Body And AppBar\n\n"
    "-As An AppBar It Take A Title\n\n"
    "-As An Body It Take An ListView\n\n"
    "-List View Having Cards Sized With Sized Boxs Having Marquees\n\n"
    "-Each Card Taking Its ScrollAxis And CrossAxis\n\n";


List MarqueeCrossAxis_list =[
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
              CmpTitle(Title:"MarqueeCrossAxis:",),
              Divider(),
              CmpSubTitle(SubTitle:"Go Start,Center And End Depending On Scroll Axis",),
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
                    "Marquee(\n"
                    " text:'Txt',"
                    " scrollAxis:\n"
                    "  Axis.horizontal|vertical,\n"
                    " crossAxisAlignment:\n"
                    "   CrossAxisAlignment.center|start|end,\n"
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


String MarqueePauseAfterRound_Explanation=
    "-Main Is Principal Method Call MarqueePauseAfterRound Class On Start\n\n"
    "-Creating MarqueePauseAfterRound Class\n\n"
    "-As Flutter Is Based On Widgets We Need To Create One\n\n"
    "-Creating Material App That Allow Us To Use Scaffold\n\n"
    "-Scaffold Allow Us To Create Body And AppBar\n\n"
    "-As An AppBar It Take A Title\n\n"
    "-As An Body It Take An ListView\n\n"
    "-List View Having Cards Sized With Sized Boxs Having Marquees\n\n"
    "-Each Card Taking Its scrollAxis And pauseAfterRound Duration\n\n";


List MarqueePauseAfterRound_list =[
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
              CmpTitle(Title:"Marquee Pause After Round",),
              Divider(),
              CmpSubTitle(SubTitle:"Duration To Be Paused After 1 Round",),
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
                    "Marquee(\n"
                    " text:'Txt'\n"
                    " pauseAfterRound:\n"
                    "  Duration(seconds:2),\n"
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


String MarqueeAccelerationDuration_Explanation=
    "-Main Is Principal Method Call MarqueeAccelerationDur Class On Start\n\n"
    "-Creating MarqueeAccelerationDur Class\n\n"
    "-As Flutter Is Based On Widgets We Need To Create One\n\n"
    "-Creating Material App That Allow Us To Use Scaffold\n\n"
    "-Scaffold Allow Us To Create Body And AppBar\n\n"
    "-As An AppBar It Take A Title\n\n"
    "-As An Body It Take An ListView\n\n"
    "-List View Having Cards Sized With Sized Boxs Having Marquees\n\n"
    "-Each Card Taking Its scrollAxis And acceleration Duration \n\n";


List MarqueeAccelerationDuration_list =[
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
              CmpTitle(Title:"Marquee Acceleration Duration",),
              Divider(),
              CmpSubTitle(SubTitle:"Set Marquee Speed",),
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
                    "Marquee(\n"
                    " text:'Txt',\n"
                    " accelerationDuration:\n"
                    "  Duration(seconds:2),\n"
                    ")\n",
              ),
            ]
        ),
      ),
    ),
  ),
];