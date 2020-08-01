import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/Cmp_Fields_Quizz.dart';
import 'dart:math';

import '7_Buttons/Buttons_Q1.dart';
import '7_Buttons/Buttons_Q2.dart';
import '7_Buttons/Buttons_Q3.dart';
import '7_Buttons/Buttons_Q4.dart';
import '7_Buttons/Buttons_Q5.dart';
import '7_Buttons/Buttons_Q6.dart';
import '7_Buttons/Buttons_Q7.dart';




List Buttons_Quizzes_IndexLst=new List();

class cl_ButtonsQuizz extends StatefulWidget {
  cl_ButtonsQuizz({Key key}) : super(key: key);
  cl_ButtonsQuizz_State createState() => cl_ButtonsQuizz_State();
}

class cl_ButtonsQuizz_State extends State<cl_ButtonsQuizz> {
  //var ButtonsQuizzRan=new Random().nextInt(7);
  var ButtonsQuizzRan=0;

  bool foundNum=false;

  var Text_NullController= new TextEditingController();

  @override
  void initState(){
    setState(() {foundNum=false;});

      if(Buttons_Quizzes_IndexLst.length==7){
        Buttons_Quizzes_IndexLst=new List();
      }

      if(Buttons_Quizzes_IndexLst.length==0){
       Buttons_Quizzes_IndexLst.add(ButtonsQuizzRan);
       foundNum=true;
      }
      else{
        while(foundNum==false){
         if(Buttons_Quizzes_IndexLst.contains(ButtonsQuizzRan)){
          ButtonsQuizzRan=new Random().nextInt(7);
         }
         else{
          Buttons_Quizzes_IndexLst.add(ButtonsQuizzRan);
          foundNum=true;
         }
        }
      }

      Buttons_Quizzes_IndexLst.sort();
      print(Buttons_Quizzes_IndexLst.toString());
  }
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

      (ButtonsQuizzRan==0)?
       Cmp_Fields_Quizz (
        AppBarTitle: "Buttons Quizz",
        Question: Buttons_Q1_Question,
        SolutionTxt: Buttons_Q1_TxtSol,
        GoRoute: "/Generate_Button_Quizz",
        Ans1Txt: Buttons_Q1_T1_Controller,
        Ans2Txt: Buttons_Q1_T2_Controller,
        Ans3Txt: Text_NullController,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Buttons_Q1_T1_Answer,
        CorrectAns2: Buttons_Q1_T2_Answer,
        CorrectAns3: "NotSet",
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Buttons_Q1_list,
       ) :


      (ButtonsQuizzRan==1)?
       Cmp_Fields_Quizz (
        AppBarTitle: "Buttons Quizz",
        Question: Buttons_Q2_Question,
        SolutionTxt: Buttons_Q2_TxtSol,
        GoRoute: "/Generate_Button_Quizz",
        Ans1Txt: Buttons_Q2_T1_Controller,
        Ans2Txt: Buttons_Q2_T2_Controller,
        Ans3Txt: Buttons_Q2_T3_Controller,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Buttons_Q2_T1_Answer,
        CorrectAns2: Buttons_Q2_T2_Answer,
        CorrectAns3: Buttons_Q2_T3_Answer,
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Buttons_Q2_list,
       ) :


      (ButtonsQuizzRan==2)?
      Cmp_Fields_Quizz (
        AppBarTitle: "Buttons Quizz",
        Question: Buttons_Q3_Question,
        SolutionTxt: Buttons_Q3_TxtSol,
        GoRoute: "/Generate_Button_Quizz",
        Ans1Txt: Buttons_Q3_T1_Controller,
        Ans2Txt: Buttons_Q3_T2_Controller,
        Ans3Txt: Buttons_Q3_T3_Controller,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Buttons_Q3_T1_Answer,
        CorrectAns2: Buttons_Q3_T2_Answer,
        CorrectAns3: Buttons_Q3_T3_Answer,
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Buttons_Q3_list,
       ) :


      (ButtonsQuizzRan==3)?
      Cmp_Fields_Quizz (
        AppBarTitle: "Buttons Quizz",
        Question: Buttons_Q4_Question,
        SolutionTxt: Buttons_Q4_TxtSol,
        GoRoute: "/Generate_Button_Quizz",
        Ans1Txt: Buttons_Q4_T1_Controller,
        Ans2Txt: Buttons_Q4_T2_Controller,
        Ans3Txt: Buttons_Q4_T3_Controller,
        Ans4Txt: Buttons_Q4_T4_Controller,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Buttons_Q4_T1_Answer,
        CorrectAns2: Buttons_Q4_T2_Answer,
        CorrectAns3: Buttons_Q4_T3_Answer,
        CorrectAns4: Buttons_Q4_T4_Answer,
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Buttons_Q4_list,
       ) :


      (ButtonsQuizzRan==4)?
     Cmp_Fields_Quizz (
        AppBarTitle: "Buttons Quizz",
        Question: Buttons_Q5_Question,
        SolutionTxt: Buttons_Q5_TxtSol,
        GoRoute: "/Generate_Button_Quizz",
        Ans1Txt: Buttons_Q5_T1_Controller,
        Ans2Txt: Buttons_Q5_T2_Controller,
        Ans3Txt: Buttons_Q5_T3_Controller,
        Ans4Txt: Buttons_Q5_T4_Controller,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Buttons_Q5_T1_Answer,
        CorrectAns2: Buttons_Q5_T2_Answer,
        CorrectAns3: Buttons_Q5_T3_Answer,
        CorrectAns4: Buttons_Q5_T4_Answer,
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Buttons_Q5_list,
       ) :

      
      (ButtonsQuizzRan==5)?
    Cmp_Fields_Quizz (
        AppBarTitle: "Buttons Quizz",
        Question: Buttons_Q6_Question,
        SolutionTxt: Buttons_Q6_TxtSol,
        GoRoute: "/Generate_Button_Quizz",
        Ans1Txt: Buttons_Q6_T1_Controller,
        Ans2Txt: Buttons_Q6_T2_Controller,
        Ans3Txt: Text_NullController,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Buttons_Q6_T1_Answer,
        CorrectAns2: Buttons_Q6_T2_Answer,
        CorrectAns3: "NotSet",
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Buttons_Q6_list,
       ) :


       Cmp_Fields_Quizz (
        AppBarTitle: "Buttons Quizz",
        Question: Buttons_Q7_Question,
        SolutionTxt: Buttons_Q7_TxtSol,
        GoRoute: "/Generate_Button_Quizz",
        Ans1Txt: Buttons_Q7_T1_Controller,
        Ans2Txt: Buttons_Q7_T2_Controller,
        Ans3Txt: Buttons_Q7_T3_Controller,
        Ans4Txt: Buttons_Q7_T4_Controller,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Buttons_Q7_T1_Answer,
        CorrectAns2: Buttons_Q7_T2_Answer,
        CorrectAns3: Buttons_Q7_T3_Answer,
        CorrectAns4: Buttons_Q7_T4_Answer,
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Buttons_Q7_list,
       ) 



    );
  }



}












