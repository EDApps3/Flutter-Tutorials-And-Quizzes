import 'package:flutter/material.dart';
import 'dart:math';
import 'Card_Q1.dart';
import 'Card_Q2.dart';
import 'Card_Q3.dart';
import 'Card_Q4.dart';

int IntroQuizzRan;

void Generate_Card_Quiz(BuildContext context){
  IntroQuizzRan=new Random().nextInt(6);

  if(IntroQuizzRan==0){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>CardQ1()));
  }
  else if(IntroQuizzRan==1){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>CardQ2()));
  }
  else if(IntroQuizzRan==3){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>CardQ3()));
  }
  else if(IntroQuizzRan==4){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>CardQ4()));
  }

}









