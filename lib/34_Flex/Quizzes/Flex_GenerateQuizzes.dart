import 'package:flutter/material.dart';
import 'dart:math';

import 'Flex_Q1.dart';
import 'Flex_Q2.dart';

int IntroQuizzRan;

void Generate_Flex_Quiz(BuildContext context){
  IntroQuizzRan=new Random().nextInt(2);

  if(IntroQuizzRan==0){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>FlexQ1()));
  }
  else if(IntroQuizzRan==1){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>FlexQ2()));
  }


}









