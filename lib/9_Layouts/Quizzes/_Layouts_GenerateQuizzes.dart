import 'package:flutter/material.dart';
import 'dart:math';

import 'Layout_Q1.dart';
import 'Layout_Q2.dart';
import 'Layout_Q3.dart';
import 'Layout_Q4.dart';


int IntroQuizzRan;

void Generate_Layout_Quiz(BuildContext context){
  IntroQuizzRan=new Random().nextInt(5);

  if(IntroQuizzRan==0){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>LayoutQ1()));
  }
  if(IntroQuizzRan==1){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>LayoutQ2()));
  }
  if(IntroQuizzRan==2){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>LayoutQ3()));
  }
  if(IntroQuizzRan==3){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>LayoutQ4()));
  }


}
