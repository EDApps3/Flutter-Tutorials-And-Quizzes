import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/Cmp_Fields_Quizz.dart';
import 'dart:math';

import '11_Divider/Divider_Q1.dart';
import '11_Divider/Divider_Q2.dart';
import '11_Divider/Divider_Q3.dart';



List Divider_Quizzes_IndexLst=new List();

class cl_DividerQuizz extends StatefulWidget {
  cl_DividerQuizz({Key key}) : super(key: key);
  cl_DividerQuizz_State createState() => cl_DividerQuizz_State();
}

class cl_DividerQuizz_State extends State<cl_DividerQuizz> {
  var DividerQuizzRan=new Random().nextInt(4);
  bool foundNum=false;

  var Text_NullController= new TextEditingController();

  @override
  void initState(){
    DividerQuizzRan=new Random().nextInt(4);
    setState(() {foundNum=false;});

      if(Divider_Quizzes_IndexLst.length==4){
        Divider_Quizzes_IndexLst=new List();
      }

      if(Divider_Quizzes_IndexLst.length==0){
       Divider_Quizzes_IndexLst.add(DividerQuizzRan);
       foundNum=true;
      }
      else{
        while(foundNum==false){
         if(Divider_Quizzes_IndexLst.contains(DividerQuizzRan)){
          DividerQuizzRan=new Random().nextInt(4);
         }
         else{
          Divider_Quizzes_IndexLst.add(DividerQuizzRan);
          foundNum=true;
         }
        }
      }

      Divider_Quizzes_IndexLst.sort();
      print(Divider_Quizzes_IndexLst.toString());
  }
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

      (DividerQuizzRan==0)?
        Cmp_Fields_Quizz (
        AppBarTitle: "Divider Quizz",
        Question: Divider_Q1_Question,
        SolutionTxt: Divider_Q1_TxtSol,
        GoRoute: "/Generate_Divider_Quizz",
        Ans1Txt: Divider_Q1_T1_Controller,
        Ans2Txt: Text_NullController,
        Ans3Txt: Text_NullController,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Divider_Q1_T1_Answer,
        CorrectAns2: "NotSet",
        CorrectAns3: "NotSet",
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Divider_Q1_list,
       ) :


       (DividerQuizzRan==1)?
       Cmp_Fields_Quizz (
        AppBarTitle: "Divider Quizz",
        Question: Divider_Q2_Question,
        SolutionTxt: Divider_Q2_TxtSol,
        GoRoute: "/Generate_Divider_Quizz",
        Ans1Txt: Divider_Q2_T1_Controller,
        Ans2Txt: Divider_Q2_T2_Controller,
        Ans3Txt: Divider_Q2_T3_Controller,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Divider_Q2_T1_Answer,
        CorrectAns2: Divider_Q2_T2_Answer,
        CorrectAns3: Divider_Q2_T3_Answer,
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Divider_Q2_list,
       ) :


      Cmp_Fields_Quizz (
        AppBarTitle: "Divider Quizz",
        Question: Divider_Q3_Question,
        SolutionTxt: Divider_Q3_TxtSol,
        GoRoute: "/Generate_Divider_Quizz",
        Ans1Txt: Divider_Q3_T1_Controller,
        Ans2Txt: Divider_Q3_T2_Controller,
        Ans3Txt: Divider_Q3_T3_Controller,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Divider_Q3_T1_Answer,
        CorrectAns2: Divider_Q3_T2_Answer,
        CorrectAns3: Divider_Q3_T3_Answer,
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Divider_Q3_list,
       ) 


       

    );
  }



}












