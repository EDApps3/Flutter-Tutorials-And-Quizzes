import 'package:flutter/material.dart';
import 'dart:math';
import 'Drawer_Q1.dart';
import 'Drawer_Q2.dart';


int IntroQuizzRan;

void Generate_Drawer_Quiz(BuildContext context){
  IntroQuizzRan=new Random().nextInt(2);

  if(IntroQuizzRan==0){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>DrawerQ1()));
  }
  if(IntroQuizzRan==1){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>DrawerQ2()));
  }




}









