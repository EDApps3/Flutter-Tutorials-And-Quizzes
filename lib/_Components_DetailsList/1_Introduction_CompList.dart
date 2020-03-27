import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_GreyCard_Image_Title.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';

List FlutterIntroCompList =[
   CmpGreyCardImageTitle(
     CardIcon:Image.asset("Images/160x160_Flutter.png"),
     CardTitle:"Flutter",
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
              CmpTitle(Title:"What Is Flutter?",),
              Divider(),
              CmpSubTitle(SubTitle:"Flutter Is An Open-Source Mobile Application Development Framework.",)
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
              CmpTitle(Title:"Who Developed Flutter?",),
              Divider(),
              CmpSubTitle(SubTitle:"Flutter is Realised By Google On May 2017 ",)
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
              CmpTitle(Title:"What Are Platforms Supported By Flutter?",),
              Divider(),
              CmpSubTitle(SubTitle:"Flutter is A CrossPlatform Used to Develop Applications for:\n-Android\n-IOS\n-Web\n-Desktop!",)
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

List DartIntroCompList =[
  CmpGreyCardImageTitle(
    CardIcon:Image.asset("Images/Dart_Logo.png"),
    CardTitle:"Dart",
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
              CmpTitle(Title:"What Is Dart?",),
              Divider(),
              CmpSubTitle(SubTitle:"Dart is A Client-Optimized Programming Language For Fast Apps On Multiple Platforms.",)
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
              CmpTitle(Title:"Who Developed Dart?",),
              Divider(),
              CmpSubTitle(SubTitle:"Dart is Realised By Google On November 2013.",)
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
              CmpTitle(Title:"What Are Platforms Supported By Dart?",),
              Divider(),
              CmpSubTitle(SubTitle:"Dart is A CrossPlatform Used to Develop Applications for Mobile,Web And Desktops!",)
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
              CmpTitle(Title:"Is Dart Considered As Oriented Programing Language?",),
              Divider(),
              CmpSubTitle(SubTitle:"Yes,Dart Is an Object Oriented Programing Language",)
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

List FlutterUseIntroCompList =[
  CmpGreyCardImageTitle(
    CardIcon:Image.asset("Images/Use.png"),
    CardTitle:"Use",
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
              CmpTitle(Title:"Why Using Flutter?",),
              Divider(),
              CmpSubTitle(SubTitle:"-Fast Developement\n-High Performance\n-API Very Consistent",)
            ]
        ),
      ),
    ),
  ),
];



















