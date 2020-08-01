import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/0_Quizzes/1_Intro_GenerateQuizzes.dart';
import 'package:flutter_tutorials_and_quizzes/0_Quizzes/3_Text_GenerateQuizzes.dart';
import 'package:flutter_tutorials_and_quizzes/0_Quizzes/4_AppBar_GenerateQuizzes.dart';
import 'package:flutter_tutorials_and_quizzes/0_Quizzes/5_MainBg_GenerateQuizzes.dart';
import 'dart:math';


import '10_Dialogs_GenerateQuizzes.dart';
import '12_Navigation_GenerateQuizzes.dart';
import '17_GestureDetector_Quizzes.dart';
import '2_Keywords_GenerateQuizzes.dart';
import '50_FlutterSyntaxe_Quizzes.dart';
import '6_Image_GenerateQuizzes.dart';
import '7_Buttons_GenerateRandomQuizzes.dart';
import '8_Toast_GenerateQuizzes.dart';
import '9_Layout_GenerateQuizzes.dart';


class cl_RandomQuizz extends StatelessWidget {
  var RandomQuizz=new Random().nextInt(11);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

      (RandomQuizz==0)?
        cl_IntroQuizz():

      (RandomQuizz==1)?
        cl_KeywordsQuizz():

      (RandomQuizz==2)?
        cl_TextQuizz():

      (RandomQuizz==3)?
        cl_HeaderAppBarQuizz():

      (RandomQuizz==4)?
        cl_MainBgQuizz():

       (RandomQuizz==5)?
        cl_ImageQuizz():

       (RandomQuizz==6)?
        cl_ButtonsQuizz():

       (RandomQuizz==7)?
        cl_ToastQuizz():

       (RandomQuizz==8)?
        cl_LayoutQuizz():

       (RandomQuizz==9)?
        cl_DialogsQuizz():

        cl_NavigationQuizz()

        



    );
  }

}
















