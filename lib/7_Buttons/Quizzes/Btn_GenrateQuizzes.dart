import 'package:flutter/material.dart';
import 'dart:math';

import 'Btn_Q1.dart';
import 'Btn_Q2.dart';
import 'Btn_Q3.dart';
import 'Btn_Q4.dart';
import 'Btn_Q5.dart';
import 'Btn_Q6.dart';
import 'Btn_Q7.dart';

class cl_ButtonsQuizz extends StatelessWidget {
  var ButtonQuizzRan=new Random().nextInt(11);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Generate Quizzes",
      debugShowCheckedModeBanner:false,
      home:

      (ButtonQuizzRan==0)?
        BtnQ1():

      (ButtonQuizzRan==1)?
        BtnQ2():

      (ButtonQuizzRan==3)?
        BtnQ3():

      (ButtonQuizzRan==4)?
        BtnQ4():

      (ButtonQuizzRan==5)?
        BtnQ5():

      (ButtonQuizzRan==3)?
        BtnQ6()

       :BtnQ7()


    );
  }

}









