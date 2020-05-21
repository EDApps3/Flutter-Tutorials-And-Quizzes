import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/0_Quizzes/1_Intro_GenerateQuizzes.dart';
import 'package:flutter_tutorials_and_quizzes/0_Quizzes/3_Text_GenerateQuizzes.dart';
import 'package:flutter_tutorials_and_quizzes/0_Quizzes/4_AppBar_GenerateQuizzes.dart';
import 'package:flutter_tutorials_and_quizzes/0_Quizzes/5_MainBg_GenerateQuizzes.dart';
import 'dart:math';


import '17_GestureDetector_Quizzes.dart';
import '2_Keywords_GenerateQuizzes.dart';
import '50_FlutterSyntaxe_Quizzes.dart';
import '6_Image_GenerateQuizzes.dart';


class cl_RandomQuizz extends StatelessWidget {
  var RandomQuizz=new Random().nextInt(4);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

      (RandomQuizz==0)?
        cl_IntroQuizz():

      (RandomQuizz==1)?
        cl_KeywordsQuizz():

      (RandomQuizz==2)?
        cl_TextQuizz()


        :cl_HeaderAppBarQuizz()



    );
  }

}
















