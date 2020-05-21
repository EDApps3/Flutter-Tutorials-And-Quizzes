import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/0_Quizzes/2_Keywords_GenerateQuizzes.dart';
import 'package:flutter_tutorials_and_quizzes/0_Quizzes/3_Text_GenerateQuizzes.dart';
import 'dart:math';

import 'package:flutter_tutorials_and_quizzes/_Comp_Courses/Cmp_Quizz_2Radio.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Courses/Cmp_Quizz_4Radio.dart';


class cl_IntroQuizz extends StatelessWidget {
  var IntroQuizzRan=new Random().nextInt(11);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

      (IntroQuizzRan==0)?
        Cmp_Quizz_2Radio(
          AppBarTitle:"Introduction Quizz",
          Question:"Flutter Is Considered As :",
          Ans1Txt:"Programing Language",
          Ans2Txt:"Application Development Framework",
          SolutionTxt:"Flutter Is A Mobile Application Development Framework",
          CorrectIndex:2,
          GoRoute:"/Generate_Intro_Quizz",
        ):


      (IntroQuizzRan==1)?
        Cmp_Quizz_2Radio(
         AppBarTitle:"Introduction Quizz",
         Question:"Flutter Is An :",
         Ans1Txt:"Open Source And Free To Use",
         Ans2Txt:"Closed Source",
         SolutionTxt:"Flutter Is An OpenSource Mobile Application Development Framework",
         CorrectIndex:1,
         GoRoute:"/Generate_Intro_Quizz",
        ):


      (IntroQuizzRan==2)?
       Cmp_Quizz_4Radio(
        AppBarTitle:"Introduction Quizz",
        Question:"Flutter Developed By:",
        Ans1Txt:"Facebook",
        Ans2Txt:"Google",
        Ans3Txt:"Github",
        Ans4Txt:"Microsoft",
        SolutionTxt:"Flutter Is Developed By Google",
        CorrectIndex:2,
        GoRoute:"/Generate_Intro_Quizz",
       ):


      (IntroQuizzRan==3)?
       Cmp_Quizz_4Radio(
        AppBarTitle:"Introduction Quizz",
        Question:"Flutter Realised On :",
        Ans1Txt:"February",
        Ans2Txt:"August",
        Ans3Txt:"December",
        Ans4Txt:"May",
        SolutionTxt:"Flutter Is Realised On May",
        CorrectIndex:4,
        GoRoute:"/Generate_Intro_Quizz",
       ):



      (IntroQuizzRan==4)?
       Cmp_Quizz_4Radio(
        AppBarTitle:"Introduction Quizz",
        Question:"Flutter Realised On :",
        Ans1Txt:"2015",
        Ans2Txt:"2016",
        Ans3Txt:"2017",
        Ans4Txt:"2018",
        SolutionTxt:"Flutter Is Realised On 2017",
        CorrectIndex:3,
        GoRoute:"/Generate_Intro_Quizz",
       ):


      (IntroQuizzRan==5)?
       Cmp_Quizz_2Radio(
        AppBarTitle:"Introduction Quizz",
        Question:"Dart Is Considered As :",
        Ans1Txt:"Programing Language",
        Ans2Txt:"Application Development Framework",
        SolutionTxt:"Dart Is Client-optimized Programming Language",
        CorrectIndex:1,
        GoRoute:"/Generate_Intro_Quizz",
       ):


      (IntroQuizzRan==6)?
       Cmp_Quizz_4Radio(
        AppBarTitle:"Introduction Quizz",
        Question:"Dart Realised On :",
        Ans1Txt:"2010",
        Ans2Txt:"2011",
        Ans3Txt:"2012",
        Ans4Txt:"2013",
        SolutionTxt:"Dart Is Realised On 2013",
        CorrectIndex:4,
        GoRoute:"/Generate_Intro_Quizz",
       ):


      (IntroQuizzRan==7)?
       Cmp_Quizz_4Radio(
        AppBarTitle:"Introduction Quizz",
        Question:"Dart Realised On :",
        Ans1Txt:"February",
        Ans2Txt:"August",
        Ans3Txt:"December",
        Ans4Txt:"November",
        SolutionTxt:"Dart Is Realised On November",
        CorrectIndex:4,
        GoRoute:"/Generate_Intro_Quizz",
       ):


      (IntroQuizzRan==8)?
       Cmp_Quizz_2Radio(
        AppBarTitle:"Introduction Quizz",
        Question:"Is Dart Considered As Object Oriented Programing Language ?",
        Ans1Txt:"No",
        Ans2Txt:"Yes",
        SolutionTxt:"Yes,Dart Is An Object Oriented Programing Language",
        CorrectIndex:2,
        GoRoute:"/Generate_Intro_Quizz",
      ):


      (IntroQuizzRan==9)?
       Cmp_Quizz_2Radio(
        AppBarTitle:"Introduction Quizz",
        Question:"Flutter Has :",
        Ans1Txt:"Slow Peformance",
        Ans2Txt:"High Performance",
        SolutionTxt:"Flutter Has High Performance",
        CorrectIndex:2,
        GoRoute:"/Generate_Intro_Quizz",
       )



       :Cmp_Quizz_2Radio(
        AppBarTitle:"Introduction Quizz",
        Question:"Is Flutter Used To Build Native Apps ?",
        Ans1Txt:"No",
        Ans2Txt:"Yes",
        SolutionTxt:"Flutter Can Build Native Apps For Mobiles",
        CorrectIndex:2,
        GoRoute:"/Generate_Intro_Quizz",
       ),



    );
  }

}

















