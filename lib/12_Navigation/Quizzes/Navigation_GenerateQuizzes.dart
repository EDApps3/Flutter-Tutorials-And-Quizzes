import 'package:flutter/material.dart';
import 'dart:math';

import 'Navigation_Q1.dart';
import 'Navigation_Q2.dart';
import 'Navigation_Q3.dart';
import 'Navigation_Q4.dart';
import 'Navigation_Q5.dart';

int IntroQuizzRan;

void Generate_Navigation_Quiz(BuildContext context){
  IntroQuizzRan=new Random().nextInt(6);

  if(IntroQuizzRan==0){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>NavigationQ1()));
  }
  else if(IntroQuizzRan==1){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>NavigationQ2()));
  }
  else if(IntroQuizzRan==2){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>NavigationQ3()));
  }
  else if(IntroQuizzRan==3){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>NavigationQ4()));
  }
  else if(IntroQuizzRan==4){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>NavigationQ5()));
  }

}











