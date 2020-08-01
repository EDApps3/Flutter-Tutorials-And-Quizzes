import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/Cmp_Fields_Quizz.dart';
import 'dart:math';
import '4_Header_AppBar/Header_AppBar_Q1.dart';
import '4_Header_AppBar/Header_AppBar_Q2.dart';
import '4_Header_AppBar/Header_AppBar_Q3.dart';
import '4_Header_AppBar/Header_AppBar_Q4.dart';
import '4_Header_AppBar/Header_AppBar_Q5.dart';
import '4_Header_AppBar/Header_AppBar_Q6.dart';
import '4_Header_AppBar/Header_AppBar_Q7.dart';
import '4_Header_AppBar/Header_AppBar_Q8.dart';


List HeaderAppBar_Quizzes_IndexLst=new List();

class cl_HeaderAppBarQuizz extends StatefulWidget {
  cl_HeaderAppBarQuizz({Key key}) : super(key: key);
  cl_HeaderAppBarQuizz_State createState() => cl_HeaderAppBarQuizz_State();
}

class cl_HeaderAppBarQuizz_State extends State<cl_HeaderAppBarQuizz> {
  int HeaderAppBarQuizzRan;
    bool foundNum2=false;
    var Text_NullController= new TextEditingController();


    @override
  void initState(){
    HeaderAppBarQuizzRan=new Random().nextInt(8);
    foundNum2=false;

      if(HeaderAppBar_Quizzes_IndexLst.length==8){
        HeaderAppBar_Quizzes_IndexLst=new List();
      }

      if(HeaderAppBar_Quizzes_IndexLst.length==0){
       HeaderAppBar_Quizzes_IndexLst.add(HeaderAppBarQuizzRan);
       foundNum2=true;
      }
      else{
        while(foundNum2==false){
         if(HeaderAppBar_Quizzes_IndexLst.contains(HeaderAppBarQuizzRan)){
          HeaderAppBarQuizzRan=new Random().nextInt(8);
         }
         else{
          HeaderAppBar_Quizzes_IndexLst.add(HeaderAppBarQuizzRan);
          foundNum2=true;
         }
        }
      }

      HeaderAppBar_Quizzes_IndexLst.sort();
    


    print(HeaderAppBar_Quizzes_IndexLst.toString());
    super.initState();

    

  }
  




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

      (HeaderAppBarQuizzRan==0)?
       Cmp_Fields_Quizz (
        AppBarTitle: "Header AppBar Quizz",
        Question: AppBar_Q1_Question,
        SolutionTxt: AppBar_Q1_TxtSol,
        GoRoute: "/Generate_HeaderAppBar_Quizz",
        Ans1Txt: AppBar_Q1_T1_Controller,
        Ans2Txt: AppBar_Q1_T2_Controller,
        Ans3Txt: Text_NullController,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: AppBar_Q1_T1_Answer,
        CorrectAns2: AppBar_Q1_T2_Answer,
        CorrectAns3: "NotSet",
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: AppBar_Q1_list,
       ) :



      (HeaderAppBarQuizzRan==1)?
       Cmp_Fields_Quizz (
        AppBarTitle: "Header AppBar Quizz",
        Question: AppBar_Q2_Question,
        SolutionTxt: AppBar_Q2_TxtSol,
        GoRoute: "/Generate_HeaderAppBar_Quizz",
        Ans1Txt: AppBar_Q2_T1_Controller,
        Ans2Txt: AppBar_Q2_T2_Controller,
        Ans3Txt: AppBar_Q2_T3_Controller,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: AppBar_Q2_T1_Answer,
        CorrectAns2: AppBar_Q2_T2_Answer,
        CorrectAns3: AppBar_Q2_T3_Answer,
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: AppBar_Q2_list,
       ) :



      (HeaderAppBarQuizzRan==2)?
       Cmp_Fields_Quizz (
        AppBarTitle: "Header AppBar Quizz",
        Question: AppBar_Q3_Question,
        SolutionTxt: AppBar_Q3_TxtSol,
        GoRoute: "/Generate_HeaderAppBar_Quizz",
        Ans1Txt: AppBar_Q3_T1_Controller,
        Ans2Txt: AppBar_Q3_T2_Controller,
        Ans3Txt: AppBar_Q3_T3_Controller,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: AppBar_Q3_T1_Answer,
        CorrectAns2: AppBar_Q3_T2_Answer,
        CorrectAns3: AppBar_Q3_T3_Answer,
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: AppBar_Q3_list,
       ) :



      (HeaderAppBarQuizzRan==3)?
       Cmp_Fields_Quizz (
        AppBarTitle: "Header AppBar Quizz",
        Question: AppBar_Q4_Question,
        SolutionTxt: AppBar_Q4_TxtSol,
        GoRoute: "/Generate_HeaderAppBar_Quizz",
        Ans1Txt: AppBar_Q4_T1_Controller,
        Ans2Txt: AppBar_Q4_T2_Controller,
        Ans3Txt: Text_NullController,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: AppBar_Q4_T1_Answer,
        CorrectAns2: AppBar_Q4_T2_Answer,
        CorrectAns3: "NotSet",
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: AppBar_Q4_list,
       ) :


      (HeaderAppBarQuizzRan==4)?
        Cmp_Fields_Quizz (
        AppBarTitle: "Header AppBar Quizz",
        Question: AppBar_Q5_Question,
        SolutionTxt: AppBar_Q5_TxtSol,
        GoRoute: "/Generate_HeaderAppBar_Quizz",
        Ans1Txt: AppBar_Q5_T1_Controller,
        Ans2Txt: AppBar_Q5_T2_Controller,
        Ans3Txt: Text_NullController,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: AppBar_Q5_T1_Answer,
        CorrectAns2: AppBar_Q5_T2_Answer,
        CorrectAns3: "NotSet",
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: AppBar_Q5_list,
       ) :

       (HeaderAppBarQuizzRan==5)?
        Cmp_Fields_Quizz (
        AppBarTitle: "Header AppBar Quizz",
        Question: AppBar_Q6_Question,
        SolutionTxt: AppBar_Q6_TxtSol,
        GoRoute: "/Generate_HeaderAppBar_Quizz",
        Ans1Txt: AppBar_Q6_T1_Controller,
        Ans2Txt: AppBar_Q6_T2_Controller,
        Ans3Txt: Text_NullController,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: AppBar_Q6_T1_Answer,
        CorrectAns2: AppBar_Q6_T2_Answer,
        CorrectAns3: "NotSet",
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: AppBar_Q6_list,
       ):

        (HeaderAppBarQuizzRan==6)?
        Cmp_Fields_Quizz (
        AppBarTitle: "Header AppBar Quizz",
        Question: AppBar_Q7_Question,
        SolutionTxt: AppBar_Q7_TxtSol,
        GoRoute: "/Generate_HeaderAppBar_Quizz",
        Ans1Txt: AppBar_Q7_T1_Controller,
        Ans2Txt: AppBar_Q7_T2_Controller,
        Ans3Txt: Text_NullController,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: AppBar_Q7_T1_Answer,
        CorrectAns2: AppBar_Q7_T2_Answer,
        CorrectAns3: "NotSet",
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: AppBar_Q7_list,
       ):





        Cmp_Fields_Quizz (
        AppBarTitle: "Header AppBar Quizz",
        Question: AppBar_Q8_Question,
        SolutionTxt: AppBar_Q8_TxtSol,
        GoRoute: "/Generate_HeaderAppBar_Quizz",
        Ans1Txt: AppBar_Q8_T1_Controller,
        Ans2Txt: AppBar_Q8_T2_Controller,
        Ans3Txt: Text_NullController,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: AppBar_Q8_T1_Answer,
        CorrectAns2: AppBar_Q8_T2_Answer,
        CorrectAns3: "NotSet",
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: AppBar_Q8_list,
       ),

    




    );
  }




}









