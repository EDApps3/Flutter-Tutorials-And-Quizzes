import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';

String Davi_ContactList_Explanation=
    "Soon!\n\n";


List Davi_ContactList_List =[
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
              CmpTitle(Title:"Soon!",),
              Divider(),
              CmpSubTitle(SubTitle:"But You Can Still Check The Code And Run It!",),
            ]
        ),
      ),
    ),
  ),

];

