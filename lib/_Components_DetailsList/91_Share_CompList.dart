import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


String Share_Link_Explanation=
    "Soon!\n\n";


List Share_Link_list =[
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
              CmpTitle(Title:"What Is Share?",),
              Divider(),
              CmpSubTitle(SubTitle:"A Flutter plugin to share content from your Flutter app via the platform's share dialog.",),
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
              CmpTitle(Title:"Getting Started:",),
              Divider(),
              CmpSubTitle(SubTitle:"We Need To Import Into The Yaml The Plugin:",),
              SizedBox(height: 16,),
              Image.asset("Images/Share.PNG",),
              CmpSubTitle(SubTitle:"\n\nDon't Forget To Get Packages!",),
              CmpSubTitle(SubTitle:"\n\nWe Need To Import:\nimport 'package:share/share.dart';\n",),
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
                 "final RenderBox box = context.findRenderObject();\n"
                 "Share.share(\n"
                 "  'ShareText',\n"
                 "  sharePositionOrigin:\n"
                 "   box.localToGlobal(Offset.zero) &box.size\n"
                 ");\n"
              ),
            ]
        ),
      ),
    ),
  ),
];

//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------


String Share_Content_Explanation=
    "Soon!\n\n";


List Share_Content_list =[
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
              CmpTitle(Title:"What Is Share?",),
              Divider(),
              CmpSubTitle(SubTitle:"A Flutter plugin to share content from your Flutter app via the platform's share dialog.",),
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
              CmpTitle(Title:"Getting Started:",),
              Divider(),
              CmpSubTitle(SubTitle:"We Need To Import Into The Yaml The Plugin:",),
              SizedBox(height: 16,),
              Image.asset("Images/Share.PNG",),
              CmpSubTitle(SubTitle:"\n\nDon't Forget To Get Packages!",),
              CmpSubTitle(SubTitle:"\n\nWe Need To Import:\nimport 'package:share/share.dart';\n",),
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
                 "final RenderBox box = context.findRenderObject();\n"
                 "Share.share(\n"
                 "  'ShareText',\n"
                 "  sharePositionOrigin:\n"
                 "   box.localToGlobal(Offset.zero) &box.size\n"
                 ");\n"
              ),
            ]
        ),
      ),
    ),
  ),
];

//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
