import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/Cmp_Fields_Quizz.dart';
import '3_Text_CompList/Text_Q1.dart';
import '3_Text_CompList/Text_Q2.dart';
import '3_Text_CompList/Text_Q3.dart';
import '3_Text_CompList/Text_Q4.dart';
import '3_Text_CompList/Text_Q5.dart';
import '3_Text_CompList/Text_Q6.dart';
import '3_Text_CompList/Text_Q7.dart';
import '3_Text_CompList/Text_Q8.dart';
import '3_Text_CompList/Text_Q9.dart';
import '3_Text_CompList/Text_Q10.dart';
import '3_Text_CompList/Text_Q11.dart';
import '3_Text_CompList/Text_Q12.dart';
import '3_Text_CompList/Text_Q13.dart';
import '3_Text_CompList/Text_Q14.dart';
import '3_Text_CompList/Text_Q15.dart';
import '3_Text_CompList/Text_Q16.dart';


List Text_Quizzes_Index=new List();

class cl_TextQuizz extends StatefulWidget {
  cl_TextQuizz({Key key}) : super(key: key);
  cl_TextQuizz_State createState() => cl_TextQuizz_State();
}

class cl_TextQuizz_State extends State<cl_TextQuizz> {
  int TextQuizzRan;
  bool foundNum=false;

  @override
  void initState(){
    TextQuizzRan=new Random().nextInt(16);
    setState(() {foundNum=false;});

      if(Text_Quizzes_Index.length==15){
        Text_Quizzes_Index=new List();
      }

      if(Text_Quizzes_Index.length==0){
       Text_Quizzes_Index.add(TextQuizzRan);
       foundNum=true;
      }
      else{
        while(foundNum==false){
         if(Text_Quizzes_Index.contains(TextQuizzRan)){
          TextQuizzRan=new Random().nextInt(16);
         }
         else{
          Text_Quizzes_Index.add(TextQuizzRan);
          foundNum=true;
         }
        }
      }

      Text_Quizzes_Index.sort();
    


    print(Text_Quizzes_Index.toString());

    

  }
  
  var Text_NullController= new TextEditingController();

  @override
  Widget build(BuildContext context) {
    print(TextQuizzRan);

    return Scaffold(
      body:

      (TextQuizzRan == 0) ?
      Cmp_Fields_Quizz (
        AppBarTitle: "Text Quizz",
        Question: Text_Q1_Question,
        SolutionTxt: Text_Q1_TxtSol,
        GoRoute: "/Generate_Text_Quizz",
        Ans1Txt: Text_Q1_T1_Controller,
        Ans2Txt: Text_Q1_T2_Controller,
        Ans3Txt: Text_NullController,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Text_Q1_T1_Answer,
        CorrectAns2: Text_Q1_T2_Answer,
        CorrectAns3: "NotSet",
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Text_Q1_list,
      ) :



      (TextQuizzRan == 1) ?
       Cmp_Fields_Quizz (
        AppBarTitle: "Text Quizz",
        Question: Text_Q2_Question,
        SolutionTxt: Text_Q2_TxtSol,
        GoRoute: "/Generate_Text_Quizz",
        Ans1Txt: Text_Q2_T1_Controller,
        Ans2Txt: Text_Q2_T2_Controller,
        Ans3Txt: Text_NullController,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Text_Q2_T1_Answer,
        CorrectAns2: Text_Q2_T2_Answer,
        CorrectAns3: "NotSet",
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Text_Q2_list,
      ) :



      (TextQuizzRan == 2) ?
       Cmp_Fields_Quizz (
        AppBarTitle: "Text Quizz",
        Question: Text_Q3_Question,
        SolutionTxt: Text_Q3_TxtSol,
        GoRoute: "/Generate_Text_Quizz",
        Ans1Txt: Text_Q3_T1_Controller,
        Ans2Txt: Text_Q3_T2_Controller,
        Ans3Txt: Text_Q3_T3_Controller,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Text_Q3_T1_Answer,
        CorrectAns2: Text_Q3_T2_Answer,
        CorrectAns3: Text_Q3_T3_Answer,
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Text_Q3_list,
       ) :




      (TextQuizzRan == 3) ?
       Cmp_Fields_Quizz (
        AppBarTitle: "Text Quizz",
        Question: Text_Q4_Question,
        SolutionTxt: Text_Q4_TxtSol,
        GoRoute: "/Generate_Text_Quizz",
        Ans1Txt: Text_Q4_T1_Controller,
        Ans2Txt: Text_Q4_T2_Controller,
        Ans3Txt: Text_Q4_T3_Controller,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Text_Q4_T1_Answer,
        CorrectAns2: Text_Q4_T2_Answer,
        CorrectAns3: Text_Q4_T3_Answer,
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Text_Q4_list,
       ) :



      (TextQuizzRan == 4) ?
       Cmp_Fields_Quizz (
        AppBarTitle: "Text Quizz",
        Question: Text_Q5_Question,
        SolutionTxt: Text_Q5_TxtSol,
        GoRoute: "/Generate_Text_Quizz",
        Ans1Txt: Text_Q5_T1_Controller,
        Ans2Txt: Text_Q5_T2_Controller,
        Ans3Txt: Text_Q5_T3_Controller,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Text_Q5_T1_Answer,
        CorrectAns2: Text_Q5_T2_Answer,
        CorrectAns3: Text_Q5_T3_Answer,
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Text_Q5_list,
       ) :




      (TextQuizzRan == 5) ?
       Cmp_Fields_Quizz (
        AppBarTitle: "Text Quizz",
        Question: Text_Q6_Question,
        SolutionTxt: Text_Q6_TxtSol,
        GoRoute: "/Generate_Text_Quizz",
        Ans1Txt: Text_Q6_T1_Controller,
        Ans2Txt: Text_Q6_T2_Controller,
        Ans3Txt: Text_Q6_T3_Controller,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Text_Q6_T1_Answer,
        CorrectAns2: Text_Q6_T2_Answer,
        CorrectAns3: Text_Q6_T3_Answer,
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Text_Q6_list,
       ) :




      (TextQuizzRan == 6) ?
      Cmp_Fields_Quizz (
        AppBarTitle: "Text Quizz",
        Question: Text_Q7_Question,
        SolutionTxt: Text_Q7_TxtSol,
        GoRoute: "/Generate_Text_Quizz",
        Ans1Txt: Text_Q7_T1_Controller,
        Ans2Txt: Text_Q7_T2_Controller,
        Ans3Txt: Text_Q7_T3_Controller,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Text_Q7_T1_Answer,
        CorrectAns2: Text_Q7_T2_Answer,
        CorrectAns3: Text_Q7_T3_Answer,
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Text_Q7_list,
      ) :


      (TextQuizzRan == 7) ?
       Cmp_Fields_Quizz (
        AppBarTitle: "Text Quizz",
        Question: Text_Q8_Question,
        SolutionTxt: Text_Q8_TxtSol,
        GoRoute: "/Generate_Text_Quizz",
        Ans1Txt: Text_Q8_T1_Controller,
        Ans2Txt: Text_Q8_T2_Controller,
        Ans3Txt: Text_NullController,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Text_Q8_T1_Answer,
        CorrectAns2: Text_Q8_T2_Answer,
        CorrectAns3: "NotSet",
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Text_Q8_list,
       ): 


      (TextQuizzRan==8)?
      Cmp_Fields_Quizz (
        AppBarTitle: "Text Quizz",
        Question: Text_Q9_Question,
        SolutionTxt: Text_Q9_TxtSol,
        GoRoute: "/Generate_Text_Quizz",
        Ans1Txt: Text_Q9_T1_Controller,
        Ans2Txt: Text_Q9_T2_Controller,
        Ans3Txt: Text_Q9_T3_Controller,
        Ans4Txt: Text_Q9_T4_Controller,
        Ans5Txt: Text_Q9_T5_Controller,
        Ans6Txt: Text_Q9_T6_Controller,
        Ans7Txt: Text_Q9_T7_Controller,
        CorrectAns1: Text_Q9_T1_Answer,
        CorrectAns2: Text_Q9_T2_Answer,
        CorrectAns3: Text_Q9_T3_Answer,
        CorrectAns4: Text_Q9_T4_Answer,
        CorrectAns5: Text_Q9_T5_Answer,
        CorrectAns6: Text_Q9_T6_Answer,
        CorrectAns7: Text_Q9_T7_Answer,
        QuizzList: Text_Q9_list,
      ):


      (TextQuizzRan==9)?
      Cmp_Fields_Quizz (
        AppBarTitle: "Text Quizz",
        Question: Text_Q10_Question,
        SolutionTxt: Text_Q10_TxtSol,
        GoRoute: "/Generate_Text_Quizz",
        Ans1Txt: Text_Q10_T1_Controller,
        Ans2Txt: Text_Q10_T2_Controller,
        Ans3Txt: Text_Q10_T3_Controller,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Text_Q10_T1_Answer,
        CorrectAns2: Text_Q10_T2_Answer,
        CorrectAns3: Text_Q10_T3_Answer,
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Text_Q10_list,
      ):


      (TextQuizzRan==10)?
      Cmp_Fields_Quizz (
        AppBarTitle: "Text Quizz",
        Question: Text_Q11_Question,
        SolutionTxt: Text_Q11_TxtSol,
        GoRoute: "/Generate_Text_Quizz",
        Ans1Txt: Text_Q11_T1_Controller,
        Ans2Txt: Text_Q11_T2_Controller,
        Ans3Txt: Text_Q11_T3_Controller,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Text_Q11_T1_Answer,
        CorrectAns2: Text_Q11_T2_Answer,
        CorrectAns3: Text_Q11_T3_Answer,
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Text_Q11_list,
      ):


      (TextQuizzRan==11)?
      Cmp_Fields_Quizz (
        AppBarTitle: "Text Quizz",
        Question: Text_Q12_Question,
        SolutionTxt: Text_Q12_TxtSol,
        GoRoute: "/Generate_Text_Quizz",
        Ans1Txt: Text_Q12_T1_Controller,
        Ans2Txt: Text_Q12_T2_Controller,
        Ans3Txt: Text_Q12_T3_Controller,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Text_Q12_T1_Answer,
        CorrectAns2: Text_Q12_T2_Answer,
        CorrectAns3: Text_Q12_T3_Answer,
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Text_Q12_list,
      ):



      (TextQuizzRan==12)?
      Cmp_Fields_Quizz (
        AppBarTitle: "Text Quizz",
        Question: Text_Q13_Question,
        SolutionTxt: Text_Q13_TxtSol,
        GoRoute: "/Generate_Text_Quizz",
        Ans1Txt: Text_Q13_T1_Controller,
        Ans2Txt: Text_Q13_T2_Controller,
        Ans3Txt: Text_Q13_T3_Controller,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Text_Q13_T1_Answer,
        CorrectAns2: Text_Q13_T2_Answer,
        CorrectAns3: Text_Q13_T3_Answer,
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Text_Q13_list,
      ):


      (TextQuizzRan==13)?
      Cmp_Fields_Quizz (
        AppBarTitle: "Text Quizz",
        Question: Text_Q14_Question,
        SolutionTxt: Text_Q14_TxtSol,
        GoRoute: "/Generate_Text_Quizz",
        Ans1Txt: Text_Q14_T1_Controller,
        Ans2Txt: Text_Q14_T2_Controller,
        Ans3Txt: Text_Q14_T3_Controller,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Text_Q14_T1_Answer,
        CorrectAns2: Text_Q14_T2_Answer,
        CorrectAns3: Text_Q14_T3_Answer,
        CorrectAns4: Text_Q14_T4_Answer,
        CorrectAns5: Text_Q14_T5_Answer,
        CorrectAns6: Text_Q14_T6_Answer,
        CorrectAns7: Text_Q14_T7_Answer,
        QuizzList: Text_Q14_list,
      ):


      (TextQuizzRan==14)?
      Cmp_Fields_Quizz (
        AppBarTitle: "Text Quizz",
        Question: Text_Q15_Question,
        SolutionTxt: Text_Q15_TxtSol,
        GoRoute: "/Generate_Text_Quizz",
        Ans1Txt: Text_Q15_T1_Controller,
        Ans2Txt: Text_Q15_T2_Controller,
        Ans3Txt: Text_Q15_T3_Controller,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Text_Q15_T1_Answer,
        CorrectAns2: Text_Q15_T2_Answer,
        CorrectAns3: Text_Q15_T3_Answer,
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Text_Q15_list,
      ):


      Cmp_Fields_Quizz (
        AppBarTitle: "Text Quizz",
        Question: Text_Q16_Question,
        SolutionTxt: Text_Q16_TxtSol,
        GoRoute: "/Generate_Text_Quizz",
        Ans1Txt: Text_Q16_T1_Controller,
        Ans2Txt: Text_Q16_T2_Controller,
        Ans3Txt: Text_Q16_T3_Controller,
        Ans4Txt: Text_Q16_T4_Controller,
        Ans5Txt: Text_Q16_T5_Controller,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Text_Q16_T1_Answer,
        CorrectAns2: Text_Q16_T2_Answer,
        CorrectAns3: Text_Q16_T3_Answer,
        CorrectAns4: Text_Q16_T4_Answer,
        CorrectAns5: Text_Q16_T5_Answer,
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Text_Q16_list,
      ), 


    );
  }




}
