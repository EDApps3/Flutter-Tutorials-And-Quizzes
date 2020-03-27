import 'package:flutter/material.dart';
import 'dart:math';

import 'Switch_Q1.dart';

int IntroQuizzRan;

void Generate_Switch_Quiz(BuildContext context){
  IntroQuizzRan=new Random().nextInt(6);

  if(IntroQuizzRan==0){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>SwitchQ1()));
  }






}











