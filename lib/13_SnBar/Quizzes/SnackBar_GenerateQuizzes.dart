import 'package:flutter/material.dart';
import 'dart:math';

import 'SnackBar_Q1.dart';
import 'SnackBar_Q2.dart';
import 'SnackBar_Q3.dart';
import 'SnackBar_Q4.dart';


int IntroQuizzRan;

void Generate_SnackBar_Quiz(BuildContext context){
  IntroQuizzRan=new Random().nextInt(6);

  if(IntroQuizzRan==0){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>SnackBarQ1()));
  }
  else  if(IntroQuizzRan==1){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>SnackBarQ2()));
  }
  else  if(IntroQuizzRan==2){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>SnackBarQ3()));
  }
  else  if(IntroQuizzRan==3){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>SnackBarQ4()));
  }






}











