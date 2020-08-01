import 'package:flutter/material.dart';
import 'dart:math';

import 'TextOverFlow_Q1.dart';
import 'TextOverFlow_Q2.dart';
import 'TextOverFlow_Q3.dart';
import 'TextOverFlow_Q4.dart';
import 'TextOverFlow_Q5.dart';
import 'TextOverFlow_Q6.dart';
import 'TextOverFlow_Q7.dart';
import 'TextOverFlow_Q8.dart';

int IntroQuizzRan;

void Generate_TextOverFlow_Quiz(BuildContext context){
  IntroQuizzRan=new Random().nextInt(9);

  if(IntroQuizzRan==0){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>TextOverFlowQ1()));
  }
  else if(IntroQuizzRan==1){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>TextOverFlowQ2()));
  }
  else if(IntroQuizzRan==2){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>TextOverFlowQ3()));
  }
  else if(IntroQuizzRan==3){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>TextOverFlowQ4()));
  }
  else if(IntroQuizzRan==4){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>TextOverFlowQ5()));
  }
  else if(IntroQuizzRan==5){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>TextOverFlowQ6()));
  }
  else if(IntroQuizzRan==6){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>TextOverFlowQ7()));
  }
  else if(IntroQuizzRan==7){
    Navigator.push(context,MaterialPageRoute(builder:(context)=>TextOverFlowQ8()));
  }


}
