import 'package:flutter/material.dart';
import 'dart:math';

import 'Toast_Q1.dart';
import 'Toast_Q2.dart';
import 'Toast_Q3.dart';
import 'Toast_Q4.dart';
import 'Toast_Q5.dart';
import 'Toast_Q6.dart';
import 'Toast_Q7.dart';
import 'Toast_Q8.dart';

class cl_ToastQuizz extends StatelessWidget {
  var ToastQuizzRan=new Random().nextInt(11);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title:"Generate Quizzes",
        debugShowCheckedModeBanner:false,
        home:

        (ToastQuizzRan==0)?
          ToastQ1():


        (ToastQuizzRan==1)?
          ToastQ2():


        (ToastQuizzRan==3)?
          ToastQ3():


        (ToastQuizzRan==4)?
          ToastQ4():


        (ToastQuizzRan==5)?
          ToastQ5():


        (ToastQuizzRan==6)?
          ToastQ6():


        (ToastQuizzRan==6)?
          ToastQ7()


        :ToastQ8()


    );
  }

}








