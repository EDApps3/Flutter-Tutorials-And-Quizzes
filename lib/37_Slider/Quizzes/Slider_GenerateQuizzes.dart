import 'package:flutter/material.dart';
import 'dart:math';

import 'Slider_Q1.dart';
import 'Slider_Q2.dart';
import 'Slider_Q3.dart';


int IntroQuizzRan;

void Generate_Slider_Quiz(BuildContext context){
  IntroQuizzRan=new Random().nextInt(4);

  if(IntroQuizzRan==0){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>SliderQ1()));
  }
  else if(IntroQuizzRan==1){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>SliderQ2()));
  }
  else if(IntroQuizzRan==2){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>SliderQ3()));
  }

}









