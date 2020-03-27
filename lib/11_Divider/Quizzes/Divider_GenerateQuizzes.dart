import 'package:flutter/material.dart';
import 'dart:math';

import 'Divider_Q1.dart';
import 'Divider_Q2.dart';
import 'Divider_Q3.dart';


int IntroQuizzRan;

void Generate_Divider_Quiz(BuildContext context){
  IntroQuizzRan=new Random().nextInt(4);

  if(IntroQuizzRan==0){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>DividerQ1()));
  }
  else if(IntroQuizzRan==1){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>DividerQ2()));
  }
  else if(IntroQuizzRan==2){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>DividerQ3()));
  }



}









