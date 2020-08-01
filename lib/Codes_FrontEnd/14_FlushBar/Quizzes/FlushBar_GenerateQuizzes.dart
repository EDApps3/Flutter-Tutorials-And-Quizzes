import 'package:flutter/material.dart';
import 'dart:math';

import 'FlushBar_Q1.dart';


int IntroQuizzRan;

void Generate_FlushBar_Quiz(BuildContext context){
  IntroQuizzRan=new Random().nextInt(2);

  if(IntroQuizzRan==0){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>FlushBarQ1()));
  }


}









