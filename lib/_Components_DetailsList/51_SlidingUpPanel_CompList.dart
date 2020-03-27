import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


var SlidingUpPanel_Intro_CompList =[
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
              CmpTitle(Title:"What Is SlidingUpPanel?",),
              Divider(),
              CmpSubTitle(SubTitle:"Draggable Flutter Widget From Bottom.",),
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
              Image.asset("Images/SUP.PNG",),
              CmpSubTitle(SubTitle:"\n\nDon't Forget To Get Packages!",),
              CmpSubTitle(SubTitle:"\n\nWe Need To Import:\nimport 'package:sliding_up_panel/sliding_up_panel.dart';\n",),
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


String SlidingUpPanel_Simple_Explanation=
    "-Main Is The Principal Method Used To Run SimpleSlidingUpPanel Class When The Page Is Loaded\n\n"
    "-Creating Class SimpleSlidingUpPanel,Statefull To Detect Panel Change Draging Up And Down,And Creating Class State\n\n"
    "-Creating The State Class _SimpleSlidingUpPanelState That Extend Its Main State From The Main Class SimpleSlidingUpPanel\n\n"
    "-initState Used To Initialize The Page State When Loaded\n\n"
    "-As Flutter Is Based On Widgets,We Need To Create One\n\n"
    "-Creating A Material App That Take Scaffold Allowing Us To Use AppBar And Body\n\n"
    "-As An AppBar It Has An Simple Title\n\n"
    "-As An Body It Take Stack Having SlidingUpPanel Widget As Children\n\n"
    "-Stack Will Help To Combine Body And SlidingUpPanel To Be Showable Both\n\n"
    "-Sliding Up Panell Take 3 Parts:Body Contents,Before Drag Contents,Drag Contents\n\n"
    "-Body Contents Set Into body Taking A Centered Text\n\n"
    "-before Drag Contents Shown In Collapsed Taking A Rounded by 24 Container Having Color Teal Taking Centered Text\n\n"
    "-Finally The Drag Contents That Show When We Drag It Up,Taking A Column Having His Children Centered Vertically And Horizontally Containing SizedBox,Textx,Divider\n\n";


List SlidingUpPanel_Simple_list =[
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
                    "SlidingUpPanel(\n\n"
                    " body:"
                    "  //Widget(Column,Row,Centered...)\n\n"
                    " collapsed:\n"
                    "  //Widget(Column,Row,Centered...)\n\n"
                    " panel:\n"
                    "  //Widget(Column,Row,Centered...)\n\n"
                    ")\n"
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
//-------------------------------------------------------------