import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


String Like_Button_Explanation=
    "Soon!\n\n";


List Like_Button_list =[
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
              CmpTitle(Title:"Like Button",),
              Divider(),
              CmpSubTitle(SubTitle:"Library Allowing Creating Button With Animation Effect With Count Increase.",),
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
              Image.asset("Images/LB.PNG",),
              CmpSubTitle(SubTitle:"\n\nDon't Forget To Get Packages!",),
              CmpSubTitle(SubTitle:"\n\nWe Need To Import:\nimport 'package:like_button/like_button.dart';\n",),
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
              CmpTitle(Title:"Keywords:",),
              Divider(),
              CmpCode(CodeTxt:"size:",),
              CmpSubTitle(SubTitle:"size of like widget,Default 30.",),
              Divider(),
              CmpCode(CodeTxt:"animationDuration	:",),
              CmpSubTitle(SubTitle:"animation duration to change isLiked state,default 1000ms.",),
              Divider(),
              CmpCode(CodeTxt:"bubblesSize:",),
              CmpSubTitle(SubTitle:"total size of bubbles,default size*2.",),
              Divider(),
              CmpCode(CodeTxt:"bubblescolor:",),
              CmpSubTitle(SubTitle:"Set Color Of The Bubbles",),
              Divider(),
              CmpCode(CodeTxt:"circleSize:",),
              CmpSubTitle(SubTitle:"final size of circle",),
              Divider(),
              CmpCode(CodeTxt:"circleColor:",),
              CmpSubTitle(SubTitle:"colors of circle",),
            ]
        ),
      ),
    ),
  ),
];

