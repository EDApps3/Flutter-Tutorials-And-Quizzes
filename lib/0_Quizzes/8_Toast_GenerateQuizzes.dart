import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Courses/Cmp_Quizz_2Radio.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/Cmp_Fields_Quizz.dart';
import 'dart:math';

import '8_Toast/Toast_Q1.dart';
import '8_Toast/Toast_Q2.dart';
import '8_Toast/Toast_Q3.dart';
import '8_Toast/Toast_Q4.dart';
import '8_Toast/Toast_Q5.dart';
import '8_Toast/Toast_Q6.dart';
import '8_Toast/Toast_Q7.dart';


List Toast_Quizzes_IndexLst=new List();

class cl_ToastQuizz extends StatefulWidget {
  cl_ToastQuizz({Key key}) : super(key: key);
  cl_ToastQuizz_State createState() => cl_ToastQuizz_State();
}

class cl_ToastQuizz_State extends State<cl_ToastQuizz> {
  var ToastQuizzRan=new Random().nextInt(8);
  bool foundNum=false;

  var Text_NullController= new TextEditingController();

  @override
  void initState(){
    ToastQuizzRan=new Random().nextInt(8);
    setState(() {foundNum=false;});

      if(Toast_Quizzes_IndexLst.length==8){
        Toast_Quizzes_IndexLst=new List();
      }

      if(Toast_Quizzes_IndexLst.length==0){
       Toast_Quizzes_IndexLst.add(ToastQuizzRan);
       foundNum=true;
      }
      else{
        while(foundNum==false){
         if(Toast_Quizzes_IndexLst.contains(ToastQuizzRan)){
          ToastQuizzRan=new Random().nextInt(8);
         }
         else{
          Toast_Quizzes_IndexLst.add(ToastQuizzRan);
          foundNum=true;
         }
        }
      }

      Toast_Quizzes_IndexLst.sort();
      print(Toast_Quizzes_IndexLst.toString());
  }
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

      (ToastQuizzRan==0)?
        Cmp_Quizz_2Radio(
          AppBarTitle:"Toast Quizz",
          Question:"Toast Is An:",
          Ans1Txt:"Scrollable List",
          Ans2Txt:"Toast Is An Popup Message That Show For The User For A Duration",
          SolutionTxt:"Toast Is An Popup Message That Show For The User For A Duration",
          CorrectIndex:2,
          GoRoute:"/Generate_Toast_Quizz",
        ):



      (ToastQuizzRan==1)?
        Cmp_Fields_Quizz (
        AppBarTitle: "Toast Quizz",
        Question: Toast_Q1_Question,
        SolutionTxt: Toast_Q1_TxtSol,
        GoRoute: "/Generate_Toast_Quizz",
        Ans1Txt: Toast_Q1_T1_Controller,
        Ans2Txt: Toast_Q1_T2_Controller,
        Ans3Txt: Toast_Q1_T3_Controller,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Toast_Q1_T1_Answer,
        CorrectAns2: Toast_Q1_T2_Answer,
        CorrectAns3: Toast_Q1_T3_Answer,
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Toast_Q1_list,
       ) :


       (ToastQuizzRan==2)?
        Cmp_Fields_Quizz (
        AppBarTitle: "Toast Quizz",
        Question: Toast_Q2_Question,
        SolutionTxt: Toast_Q2_TxtSol,
        GoRoute: "/Generate_Toast_Quizz",
        Ans1Txt: Toast_Q2_T1_Controller,
        Ans2Txt: Toast_Q2_T2_Controller,
        Ans3Txt: Toast_Q2_T3_Controller,
        Ans4Txt: Toast_Q2_T4_Controller,
        Ans5Txt: Toast_Q2_T5_Controller,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Toast_Q2_T1_Answer,
        CorrectAns2: Toast_Q2_T2_Answer,
        CorrectAns3: Toast_Q2_T3_Answer,
        CorrectAns4: Toast_Q2_T4_Answer,
        CorrectAns5: Toast_Q2_T5_Answer,
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Toast_Q2_list,
       ) :


       (ToastQuizzRan==3)?
        Cmp_Fields_Quizz (
        AppBarTitle: "Toast Quizz",
        Question: Toast_Q3_Question,
        SolutionTxt: Toast_Q3_TxtSol,
        GoRoute: "/Generate_Toast_Quizz",
        Ans1Txt: Toast_Q3_T1_Controller,
        Ans2Txt: Toast_Q3_T2_Controller,
        Ans3Txt: Toast_Q3_T3_Controller,
        Ans4Txt: Toast_Q3_T4_Controller,
        Ans5Txt: Toast_Q3_T5_Controller,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Toast_Q3_T1_Answer,
        CorrectAns2: Toast_Q3_T2_Answer,
        CorrectAns3: Toast_Q3_T3_Answer,
        CorrectAns4: Toast_Q3_T4_Answer,
        CorrectAns5: Toast_Q3_T5_Answer,
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Toast_Q3_list,
       ) :


       (ToastQuizzRan==4)?
        Cmp_Fields_Quizz (
        AppBarTitle: "Toast Quizz",
        Question: Toast_Q4_Question,
        SolutionTxt: Toast_Q4_TxtSol,
        GoRoute: "/Generate_Toast_Quizz",
        Ans1Txt: Toast_Q4_T1_Controller,
        Ans2Txt: Toast_Q4_T2_Controller,
        Ans3Txt: Toast_Q4_T3_Controller,
        Ans4Txt: Toast_Q4_T4_Controller,
        Ans5Txt: Toast_Q4_T5_Controller,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Toast_Q4_T1_Answer,
        CorrectAns2: Toast_Q4_T2_Answer,
        CorrectAns3: Toast_Q4_T3_Answer,
        CorrectAns4: Toast_Q4_T4_Answer,
        CorrectAns5: Toast_Q4_T5_Answer,
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Toast_Q4_list,
       ) :


       (ToastQuizzRan==5)?
        Cmp_Fields_Quizz (
        AppBarTitle: "Toast Quizz",
        Question: Toast_Q5_Question,
        SolutionTxt: Toast_Q5_TxtSol,
        GoRoute: "/Generate_Toast_Quizz",
        Ans1Txt: Toast_Q5_T1_Controller,
        Ans2Txt: Toast_Q5_T2_Controller,
        Ans3Txt: Toast_Q5_T3_Controller,
        Ans4Txt: Toast_Q5_T4_Controller,
        Ans5Txt: Toast_Q5_T5_Controller,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Toast_Q5_T1_Answer,
        CorrectAns2: Toast_Q5_T2_Answer,
        CorrectAns3: Toast_Q5_T3_Answer,
        CorrectAns4: Toast_Q5_T4_Answer,
        CorrectAns5: Toast_Q5_T5_Answer,
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Toast_Q5_list,
       ) :


        (ToastQuizzRan==6)?
        Cmp_Fields_Quizz (
        AppBarTitle: "Toast Quizz",
        Question: Toast_Q6_Question,
        SolutionTxt: Toast_Q6_TxtSol,
        GoRoute: "/Generate_Toast_Quizz",
        Ans1Txt: Toast_Q6_T1_Controller,
        Ans2Txt: Toast_Q6_T2_Controller,
        Ans3Txt: Toast_Q6_T3_Controller,
        Ans4Txt: Toast_Q6_T4_Controller,
        Ans5Txt: Toast_Q6_T5_Controller,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Toast_Q6_T1_Answer,
        CorrectAns2: Toast_Q6_T2_Answer,
        CorrectAns3: Toast_Q6_T3_Answer,
        CorrectAns4: Toast_Q6_T4_Answer,
        CorrectAns5: Toast_Q6_T5_Answer,
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Toast_Q6_list,
       ) :


        Cmp_Fields_Quizz (
        AppBarTitle: "Toast Quizz",
        Question: Toast_Q7_Question,
        SolutionTxt: Toast_Q7_TxtSol,
        GoRoute: "/Generate_Toast_Quizz",
        Ans1Txt: Toast_Q7_T1_Controller,
        Ans2Txt: Toast_Q7_T2_Controller,
        Ans3Txt: Toast_Q7_T3_Controller,
        Ans4Txt: Toast_Q7_T4_Controller,
        Ans5Txt: Toast_Q7_T5_Controller,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Toast_Q7_T1_Answer,
        CorrectAns2: Toast_Q7_T2_Answer,
        CorrectAns3: Toast_Q7_T3_Answer,
        CorrectAns4: Toast_Q7_T4_Answer,
        CorrectAns5: Toast_Q7_T5_Answer,
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Toast_Q7_list,
       )


      


      

    );
  }



}












