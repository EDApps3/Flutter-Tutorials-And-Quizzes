import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Courses/Cmp_Quizz_2Radio.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/Cmp_Fields_Quizz.dart';
import 'dart:math';

import '10_Dialogs/Dialogs_Q1.dart';
import '10_Dialogs/Dialogs_Q2.dart';
import '10_Dialogs/Dialogs_Q3.dart';
import '10_Dialogs/Dialogs_Q4.dart';
import '10_Dialogs/Dialogs_Q5.dart';




List Dialogs_Quizzes_IndexLst=new List();

class cl_DialogsQuizz extends StatefulWidget {
  cl_DialogsQuizz({Key key}) : super(key: key);
  cl_DialogsQuizz_State createState() => cl_DialogsQuizz_State();
}

class cl_DialogsQuizz_State extends State<cl_DialogsQuizz> {
  var DialogsQuizzRan=new Random().nextInt(7);
  bool foundNum=false;

  var Text_NullController= new TextEditingController();

  @override
  void initState(){
    DialogsQuizzRan=new Random().nextInt(7);
    setState(() {foundNum=false;});

      if(Dialogs_Quizzes_IndexLst.length==7){
        Dialogs_Quizzes_IndexLst=new List();
      }

      if(Dialogs_Quizzes_IndexLst.length==0){
       Dialogs_Quizzes_IndexLst.add(DialogsQuizzRan);
       foundNum=true;
      }
      else{
        while(foundNum==false){
         if(Dialogs_Quizzes_IndexLst.contains(DialogsQuizzRan)){
          DialogsQuizzRan=new Random().nextInt(7);
         }
         else{
          Dialogs_Quizzes_IndexLst.add(DialogsQuizzRan);
          foundNum=true;
         }
        }
      }

      Dialogs_Quizzes_IndexLst.sort();
      print(Dialogs_Quizzes_IndexLst.toString());
  }
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

      (DialogsQuizzRan==0)?
        Cmp_Fields_Quizz (
        AppBarTitle: "Dialogs Quizz",
        Question: Dialogs_Q1_Question,
        SolutionTxt: Dialogs_Q1_TxtSol,
        GoRoute: "/Generate_Dialogs_Quizz",
        Ans1Txt: Dialogs_Q1_T1_Controller,
        Ans2Txt: Dialogs_Q1_T2_Controller,
        Ans3Txt: Dialogs_Q1_T3_Controller,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Dialogs_Q1_T1_Answer,
        CorrectAns2: Dialogs_Q1_T2_Answer,
        CorrectAns3: Dialogs_Q1_T3_Answer,
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Dialogs_Q1_list,
       ) :


       (DialogsQuizzRan==1)?
        Cmp_Fields_Quizz (
        AppBarTitle: "Dialogs Quizz",
        Question: Dialogs_Q2_Question,
        SolutionTxt: Dialogs_Q2_TxtSol,
        GoRoute: "/Generate_Dialogs_Quizz",
        Ans1Txt: Dialogs_Q2_T1_Controller,
        Ans2Txt: Dialogs_Q2_T2_Controller,
        Ans3Txt: Dialogs_Q2_T3_Controller,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Dialogs_Q2_T1_Answer,
        CorrectAns2: Dialogs_Q2_T2_Answer,
        CorrectAns3: Dialogs_Q2_T3_Answer,
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Dialogs_Q2_list,
       ) :


       (DialogsQuizzRan==2)?
        Cmp_Fields_Quizz (
        AppBarTitle: "Dialogs Quizz",
        Question: Dialogs_Q3_Question,
        SolutionTxt: Dialogs_Q3_TxtSol,
        GoRoute: "/Generate_Dialogs_Quizz",
        Ans1Txt: Dialogs_Q3_T1_Controller,
        Ans2Txt: Dialogs_Q3_T2_Controller,
        Ans3Txt: Text_NullController,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Dialogs_Q3_T1_Answer,
        CorrectAns2: Dialogs_Q3_T2_Answer,
        CorrectAns3: "NotSet",
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Dialogs_Q3_list,
       ) :


      (DialogsQuizzRan==3)?
        Cmp_Fields_Quizz (
        AppBarTitle: "Dialogs Quizz",
        Question: Dialogs_Q4_Question,
        SolutionTxt: Dialogs_Q4_TxtSol,
        GoRoute: "/Generate_Dialogs_Quizz",
        Ans1Txt: Dialogs_Q4_T1_Controller,
        Ans2Txt: Dialogs_Q4_T2_Controller,
        Ans3Txt: Text_NullController,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Dialogs_Q4_T1_Answer,
        CorrectAns2: Dialogs_Q4_T2_Answer,
        CorrectAns3: "NotSet",
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Dialogs_Q4_list,
       ) :


      Cmp_Fields_Quizz (
        AppBarTitle: "Dialogs Quizz",
        Question: Dialogs_Q5_Question,
        SolutionTxt: Dialogs_Q5_TxtSol,
        GoRoute: "/Generate_Dialogs_Quizz",
        Ans1Txt: Dialogs_Q5_T1_Controller,
        Ans2Txt: Dialogs_Q5_T2_Controller,
        Ans3Txt: Text_NullController,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Dialogs_Q5_T1_Answer,
        CorrectAns2: Dialogs_Q5_T2_Answer,
        CorrectAns3: "NotSet",
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Dialogs_Q5_list,
       ) 

      

    );
  }



}












