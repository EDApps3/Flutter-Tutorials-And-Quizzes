import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Courses/Cmp_Quizz_2Radio.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/Cmp_Fields_Quizz.dart';
import 'dart:math';

import '12_Navigation/Navigation_Q1.dart';
import '12_Navigation/Navigation_Q2.dart';
import '12_Navigation/Navigation_Q3.dart';
import '12_Navigation/Navigation_Q4.dart';
import '12_Navigation/Navigation_Q5.dart';




List Navigation_Quizzes_IndexLst=new List();

class cl_NavigationQuizz extends StatefulWidget {
  cl_NavigationQuizz({Key key}) : super(key: key);
  cl_NavigationQuizz_State createState() => cl_NavigationQuizz_State();
}

class cl_NavigationQuizz_State extends State<cl_NavigationQuizz> {
  var NavigationQuizzRan=new Random().nextInt(6);
  bool foundNum=false;

  var Text_NullController= new TextEditingController();

  @override
  void initState(){
    NavigationQuizzRan=new Random().nextInt(6);
    setState(() {foundNum=false;});

      if(Navigation_Quizzes_IndexLst.length==6){
        Navigation_Quizzes_IndexLst=new List();
      }

      if(Navigation_Quizzes_IndexLst.length==0){
       Navigation_Quizzes_IndexLst.add(NavigationQuizzRan);
       foundNum=true;
      }
      else{
        while(foundNum==false){
         if(Navigation_Quizzes_IndexLst.contains(NavigationQuizzRan)){
          NavigationQuizzRan=new Random().nextInt(6);
         }
         else{
          Navigation_Quizzes_IndexLst.add(NavigationQuizzRan);
          foundNum=true;
         }
        }
      }

      Navigation_Quizzes_IndexLst.sort();
      print(Navigation_Quizzes_IndexLst.toString());
  }
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

      (NavigationQuizzRan==0)?
        Cmp_Fields_Quizz (
        AppBarTitle: "Navigation Quizz",
        Question: Navigation_Q1_Question,
        SolutionTxt: Navigation_Q1_TxtSol,
        GoRoute: "/Generate_Navigator_Quizz",
        Ans1Txt: Navigation_Q1_T1_Controller,
        Ans2Txt: Navigation_Q1_T2_Controller,
        Ans3Txt: Navigation_Q1_T3_Controller,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Navigation_Q1_T1_Answer,
        CorrectAns2: Navigation_Q1_T2_Answer,
        CorrectAns3: Navigation_Q1_T3_Answer,
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Navigation_Q1_list,
       ) :


       (NavigationQuizzRan==1)?
        Cmp_Fields_Quizz (
        AppBarTitle: "Navigation Quizz",
        Question: Navigation_Q2_Question,
        SolutionTxt: Navigation_Q2_TxtSol,
        GoRoute: "/Generate_Navigator_Quizz",
        Ans1Txt: Navigation_Q2_T1_Controller,
        Ans2Txt: Navigation_Q2_T2_Controller,
        Ans3Txt: Text_NullController,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Navigation_Q2_T1_Answer,
        CorrectAns2: Navigation_Q2_T2_Answer,
        CorrectAns3: "NotSet",
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Navigation_Q2_list,
       ) :


       (NavigationQuizzRan==3)?
        Cmp_Fields_Quizz (
        AppBarTitle: "Navigation Quizz",
        Question: Navigation_Q3_Question,
        SolutionTxt: Navigation_Q3_TxtSol,
        GoRoute: "/Generate_Navigator_Quizz",
        Ans1Txt: Navigation_Q3_T1_Controller,
        Ans2Txt: Navigation_Q3_T2_Controller,
        Ans3Txt: Navigation_Q3_T3_Controller,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Navigation_Q3_T1_Answer,
        CorrectAns2: Navigation_Q3_T2_Answer,
        CorrectAns3: Navigation_Q3_T3_Answer,
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Navigation_Q3_list,
       ) :


       (NavigationQuizzRan==4)?
        Cmp_Fields_Quizz (
        AppBarTitle: "Navigation Quizz",
        Question: Navigation_Q4_Question,
        SolutionTxt: Navigation_Q4_TxtSol,
        GoRoute: "/Generate_Navigator_Quizz",
        Ans1Txt: Navigation_Q4_T1_Controller,
        Ans2Txt: Navigation_Q4_T2_Controller,
        Ans3Txt: Navigation_Q4_T3_Controller,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Navigation_Q4_T1_Answer,
        CorrectAns2: Navigation_Q4_T2_Answer,
        CorrectAns3: Navigation_Q4_T3_Answer,
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Navigation_Q4_list,
       ) :


       
        Cmp_Fields_Quizz (
        AppBarTitle: "Navigation Quizz",
        Question: Navigation_Q5_Question,
        SolutionTxt: Navigation_Q5_TxtSol,
        GoRoute: "/Generate_Navigator_Quizz",
        Ans1Txt: Navigation_Q5_T1_Controller,
        Ans2Txt: Navigation_Q5_T2_Controller,
        Ans3Txt: Navigation_Q5_T3_Controller,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Navigation_Q5_T1_Answer,
        CorrectAns2: Navigation_Q5_T2_Answer,
        CorrectAns3: Navigation_Q5_T3_Answer,
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Navigation_Q5_list,
       )


    
    );
  }



}












