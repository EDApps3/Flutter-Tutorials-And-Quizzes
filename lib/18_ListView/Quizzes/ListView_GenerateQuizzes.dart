import 'package:flutter/material.dart';
import 'dart:math';
import 'ListView_Q1.dart';
import 'ListView_Q2.dart';
import 'ListView_Q3.dart';


int IntroQuizzRan;

void Generate_ListView_Quiz(BuildContext context){
  IntroQuizzRan=new Random().nextInt(6);

  if(IntroQuizzRan==0){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>ListViewQ1()));
  }
  else if(IntroQuizzRan==1){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>ListViewQ2()));
  }
  else if(IntroQuizzRan==2){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>ListViewQ3()));
  }



}











