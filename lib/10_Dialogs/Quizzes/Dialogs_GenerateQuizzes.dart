import 'package:flutter/material.dart';
import 'dart:math';

import 'Dialogs_Q1.dart';
import 'Dialogs_Q2.dart';


int IntroQuizzRan;

void Generate_Dialogs_Quiz(BuildContext context){
  IntroQuizzRan=new Random().nextInt(3);

  if(IntroQuizzRan==0){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>DialogsQ1()));
  }
  else if(IntroQuizzRan==1){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>DialogsQ2()));
  }



}









