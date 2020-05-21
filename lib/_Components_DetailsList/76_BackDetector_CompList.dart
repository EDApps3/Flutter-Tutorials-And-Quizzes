import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';

String BackDetector_Explanation=
    "-Main Is The Principal Method Used To Run BackDetectorRun Class When The Page Is Loaded\n\n"
    "-Creating Class BackDetectorRun,Stateless As There Is No Data Change After The Page Is Loaded(No State Change)\n\n"
    "-As Flutter Is Based On Widgets,We Need To Create One\n\n"
    "-Creating A Material App That Take Scaffold Allowing Us To Use AppBar And Body\n\n"
    "-As An AppBar It Has An Simple Title\n\n"
    "-As An Body It Take A Cenetered Raised Button Once Pressed Will push Page BackDetectorPage That The Back Action Will Applied On It\n\n\n\n\n"
    "-Creating Class BackDetectorPage,Stateless As There Is No Data Change After The Page Is Loaded(No State Change)\n\n"
    "-As Flutter Is Based On Widgets,We Need To Create One\n\n"
    "-We Need To Create Funtion _onBackPressed To Call When Poping The Page (Or Place It Without A Function) That Return A bool Value,Yes Pop It If true - No Keep It If False\n\n"
    "-The Funtion _onBackPressed Will Show A Dialog Having A Title And As Content Globbed By A Container With Width 106 Taking Column (Elements Placed As Rows) Aligned Horizontally From start\n\n"
    "-Row 1 Taking A Divider (Displaying Under The Title)\n\n"
    "-Row 2 Taking Text 'Are You Sure?'\n\n"
    "-Row 3 Taking A Sized Box With Height 8 To Set Space Between Elements\n\n"
    "-Row 4 Taking A Row That Elements Will Be Displayed On Columns,Col1 And Col2 Taking Both A Styled Raised Button\n\n"
    "-By Pressing Yes The Page Will Pop disappear Navigator.of(context).pop(true);\n\n"
    "-By Pressing No The Page Will Pop Stay Navigator.of(context).pop(false);\n\n"
    "-Returning False If No Actions Has Been Applied\n\n"
    "-Creating A Material App Globbed By WillPopScope Once The Back Button Is Pressed To Pop It Will Call Our Function That We Have Created _onBackPressed And  Take Scaffold Allowing Us To Use AppBar And Body\n\n"
    "-As An AppBar It Has An Simple Title\n\n"
    "-As An Body It Take A Simple Centered Text\n\n\n\n\n";


List BackDetector_list =[
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
              CmpTitle(Title:"WillPop",),
              Divider(),
              CmpSubTitle(SubTitle:"Called Once Poping A Page (Getting Ride Of),Usally By Pressing Back Button.",),
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
                  "return WillPopScope(\n"
                  " onWillPop:(){\n"
                  "   //Actions To Do"
                  " }\n"
                  " child:new MaterialApp(\n"
                  "   //Normal Page...\n"
                  " )\n"
                  ");\n",
              ),
            ]
        ),
      ),
    ),
  ),
];