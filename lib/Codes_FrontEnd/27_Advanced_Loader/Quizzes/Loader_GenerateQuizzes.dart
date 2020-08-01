import 'package:flutter/material.dart';
import 'dart:math';

import 'Loader_Q1.dart';
import 'Loader_Q2.dart';


int IntroQuizzRan;

void Generate_Loader_Quiz(BuildContext context){
  IntroQuizzRan=new Random().nextInt(3);

  if(IntroQuizzRan==0){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>LoaderQ1()));
  }
  else if(IntroQuizzRan==1){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>LoaderQ2()));
  }


}











