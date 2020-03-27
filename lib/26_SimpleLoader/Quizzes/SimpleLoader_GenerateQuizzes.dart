import 'package:flutter/material.dart';
import 'dart:math';

import 'SimpleLoader_Q1.dart';
import 'SimpleLoader_Q2.dart';
import 'SimpleLoader_Q3.dart';
import 'SimpleLoader_Q4.dart';


int IntroQuizzRan;

void Generate_SimpleLoader_Quiz(BuildContext context){
  IntroQuizzRan=new Random().nextInt(6);

  if(IntroQuizzRan==0){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>SimpleLoaderQ1()));
  }
  else if(IntroQuizzRan==1){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>SimpleLoaderQ2()));
  }
  else if(IntroQuizzRan==2){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>SimpleLoaderQ3()));
  }
  else if(IntroQuizzRan==3){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>SimpleLoaderQ4()));
  }





}











