import 'package:flutter/material.dart';
import 'dart:math';

import 'SplashScreen_Q1.dart';
import 'SplashScreen_Q2.dart';
import 'SplashScreen_Q3.dart';
import 'SplashScreen_Q4.dart';
import 'SplashScreen_Q5.dart';
import 'SplashScreen_Q6.dart';
import 'SplashScreen_Q7.dart';
import 'SplashScreen_Q8.dart';


int IntroQuizzRan;

void Generate_SplashScreen_Quiz(BuildContext context){
  IntroQuizzRan=new Random().nextInt(9);

  if(IntroQuizzRan==0){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>SplashScreenQ1()));
  }
  else if(IntroQuizzRan==1){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>SplashScreenQ2()));
  }
  else if(IntroQuizzRan==2){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>SplashScreenQ3()));
  }
  else if(IntroQuizzRan==3){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>SplashScreenQ4()));
  }
  else if(IntroQuizzRan==4){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>SplashScreenQ5()));
  }
  else if(IntroQuizzRan==5){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>SplashScreenQ6()));
  }
  else if(IntroQuizzRan==6){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>SplashScreenQ7()));
  }
  else if(IntroQuizzRan==7){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>SplashScreenQ8()));
  }



}









