import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/3_Text_TextField_Text_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/4_TextField_Text_TextField_Text_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/Cmp_Fields_Quizz.dart';
import 'dart:math';
import '5_MainBg/MainBg_Quizz1.dart';
import '5_MainBg/MainBg_Quizz2.dart';
import '5_MainBg/MainBg_Quizz3.dart';
import '5_MainBg/MainBg_Quizz4.dart';
import '5_MainBg/MainBg_Quizz5.dart';

List MainBg_Quizzes_IndexLst=new List();

class cl_MainBgQuizz extends StatefulWidget {
  cl_MainBgQuizz({Key key}) : super(key: key);
  cl_MainBgQuizz_State createState() => cl_MainBgQuizz_State();
}

class cl_MainBgQuizz_State extends State<cl_MainBgQuizz> {
  int MainBgQuizzRan=new Random().nextInt(6);
  bool foundNum=false;

  var Text_NullController= new TextEditingController();

    @override
  void initState(){
    MainBgQuizzRan=new Random().nextInt(6);
    setState(() {foundNum=false;});

      if(MainBg_Quizzes_IndexLst.length==6){
        MainBg_Quizzes_IndexLst=new List();
      }

      if(MainBg_Quizzes_IndexLst.length==0){
       MainBg_Quizzes_IndexLst.add(MainBgQuizzRan);
       foundNum=true;
      }
      else{
        while(foundNum==false){
         if(MainBg_Quizzes_IndexLst.contains(MainBgQuizzRan)){
          MainBgQuizzRan=new Random().nextInt(6);
         }
         else{
          MainBg_Quizzes_IndexLst.add(MainBgQuizzRan);
          foundNum=true;
         }
        }
      }

      MainBg_Quizzes_IndexLst.sort();
      print(MainBg_Quizzes_IndexLst.toString());
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

      (MainBgQuizzRan==0)?
       Cmp_Fields_Quizz (
        AppBarTitle: "MainBg Color Quizz",
        Question: MainBg_Q1_Question,
        SolutionTxt: MainBg_Q1_TxtSol,
        GoRoute: "/Generate_MainBg_Quizz",
        Ans1Txt: MainBg_Q1_T1_Controller,
        Ans2Txt: MainBg_Q1_T2_Controller,
        Ans3Txt: MainBg_Q1_T3_Controller,
        Ans4Txt: MainBg_Q1_T4_Controller,
        Ans5Txt: MainBg_Q1_T5_Controller,
        Ans6Txt: MainBg_Q1_T6_Controller,
        Ans7Txt: Text_NullController,
        CorrectAns1: MainBg_Q1_T1_Answer,
        CorrectAns2: MainBg_Q1_T2_Answer,
        CorrectAns3: MainBg_Q1_T3_Answer,
        CorrectAns4: MainBg_Q1_T4_Answer,
        CorrectAns5: MainBg_Q1_T5_Answer,
        CorrectAns6: MainBg_Q1_T6_Answer,
        CorrectAns7: "NotSet",
        QuizzList: MainBg_Q1_list,
      ) :


      (MainBgQuizzRan==1)?
       Cmp_Fields_Quizz (
        AppBarTitle: "MainBg Color Quizz",
        Question: MainBg_Q2_Question,
        SolutionTxt: MainBg_Q2_TxtSol,
        GoRoute: "/Generate_MainBg_Quizz",
        Ans1Txt: MainBg_Q2_T1_Controller,
        Ans2Txt: MainBg_Q2_T2_Controller,
        Ans3Txt: MainBg_Q2_T3_Controller,
        Ans4Txt: MainBg_Q2_T4_Controller,
        Ans5Txt: MainBg_Q2_T5_Controller,
        Ans6Txt: MainBg_Q2_T6_Controller,
        Ans7Txt: Text_NullController,
        CorrectAns1: MainBg_Q2_T1_Answer,
        CorrectAns2: MainBg_Q2_T2_Answer,
        CorrectAns3: MainBg_Q2_T3_Answer,
        CorrectAns4: MainBg_Q2_T4_Answer,
        CorrectAns5: MainBg_Q2_T5_Answer,
        CorrectAns6: MainBg_Q2_T6_Answer,
        CorrectAns7: "NotSet",
        QuizzList: MainBg_Q2_list,
       ) :



      (MainBgQuizzRan==2)?
      Cmp_Fields_Quizz (
        AppBarTitle: "MainBg Color Quizz",
        Question: MainBg_Q3_Question,
        SolutionTxt: MainBg_Q3_TxtSol,
        GoRoute: "/Generate_MainBg_Quizz",
        Ans1Txt: MainBg_Q3_T1_Controller,
        Ans2Txt: MainBg_Q3_T2_Controller,
        Ans3Txt: MainBg_Q3_T3_Controller,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: MainBg_Q3_T1_Answer,
        CorrectAns2: MainBg_Q3_T2_Answer,
        CorrectAns3: MainBg_Q3_T3_Answer,
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: MainBg_Q3_list,
      ) :



      (MainBgQuizzRan==3)?
      Cmp_Fields_Quizz (
        AppBarTitle: "MainBg Color Quizz",
        Question: MainBg_Q4_Question,
        SolutionTxt: MainBg_Q4_TxtSol,
        GoRoute: "/Generate_MainBg_Quizz",
        Ans1Txt: MainBg_Q4_T1_Controller,
        Ans2Txt: MainBg_Q4_T2_Controller,
        Ans3Txt: MainBg_Q4_T3_Controller,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: MainBg_Q4_T1_Answer,
        CorrectAns2: MainBg_Q4_T2_Answer,
        CorrectAns3: MainBg_Q4_T3_Answer,
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: MainBg_Q4_list,
      ):


      Cmp_Fields_Quizz (
        AppBarTitle: "MainBg Color Quizz",
        Question: MainBg_Q5_Question,
        SolutionTxt: MainBg_Q5_TxtSol,
        GoRoute: "/Generate_MainBg_Quizz",
        Ans1Txt: MainBg_Q5_T1_Controller,
        Ans2Txt: MainBg_Q5_T2_Controller,
        Ans3Txt: Text_NullController,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: MainBg_Q5_T1_Answer,
        CorrectAns2: MainBg_Q5_T2_Answer,
        CorrectAns3: "NotSet",
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: MainBg_Q5_list,
      )


    );
  }
}
