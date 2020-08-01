
import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_GreyCard_Image_Title.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';
import '../AppLang.dart';

var T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12,T13,T14,T15,T16;



void TranslateIntroCompList() async{
  T1="What Is ";
  T2="Is An Open-Source Mobile Application Development Framework.";
  T3="Who Developed ";
  T4="is Released By Google On May 2017";
  T5="What Are Platforms Supported By";
  T6="is A Cross Platform Used to Develop Applications for:\n";
  T7 ="What Is";
  T8 ="is A Client-Optimized Programming Language For Fast Apps On Multiple Platforms.";
  T9 ="Who Developed DART?";
  T10=" is Released By Google On November 2013.";
  T11="What Are Platforms Supported By";
  T12=" is A CrossPlatform Used to Develop Applications for Mobile,Website And Desktop!";
  T13="Is DART Considered As Oriented Programing Language?";
  T14="Is an Object Oriented Programing Language";
  T15="Why Using ";
  T16="Fast Development,High Performance,API Very Coordinated";

  await TranslateWord(T1).then((value){ T1 =value; });
  await TranslateWord(T2).then((value){ T2 =value; });
  await TranslateWord(T3).then((value){ T3 =value; });
  await TranslateWord(T4).then((value){ T4 =value; });
  await TranslateWord(T5).then((value){ T5 =value; });
  await TranslateWord(T6).then((value){ T6 =value; });
  await TranslateWord(T7).then((value){ T7 =value; });
  await TranslateWord(T8).then((value){ T8 =value; });
  await TranslateWord(T9).then((value){ T9 =value; });
  await TranslateWord(T10).then((value){ T10 =value; });
  await TranslateWord(T11).then((value){ T11 =value; });
  await TranslateWord(T12).then((value){ T12 =value; });
  await TranslateWord(T13).then((value){ T13 =value; });
  await TranslateWord(T14).then((value){ T14 =value; });
  await TranslateWord(T15).then((value){ T15 =value; });
  await TranslateWord(T16).then((value){ T16 =value; });
}




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













