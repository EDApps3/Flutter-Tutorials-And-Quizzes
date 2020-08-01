import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/Cmp_Fields_Quizz.dart';
import 'dart:math';

import '6_Image/Image_Q1.dart';
import '6_Image/Image_Q2.dart';
import '6_Image/Image_Q3.dart';
import '6_Image/Image_Q4.dart';
import '6_Image/Image_Q5.dart';
import '6_Image/Image_Q6.dart';
import '6_Image/Image_Q7.dart';
import '6_Image/Image_Q8.dart';



List Image_Quizzes_IndexLst=new List();

class cl_ImageQuizz extends StatefulWidget {
  cl_ImageQuizz({Key key}) : super(key: key);
  cl_ImageQuizz_State createState() => cl_ImageQuizz_State();
}

class cl_ImageQuizz_State extends State<cl_ImageQuizz> {
  var ImageQuizzRan=new Random().nextInt(8);
  bool foundNum=false;

  var Text_NullController= new TextEditingController();

  @override
  void initState(){
    ImageQuizzRan=new Random().nextInt(8);
    setState(() {foundNum=false;});

      if(Image_Quizzes_IndexLst.length==8){
        Image_Quizzes_IndexLst=new List();
      }

      if(Image_Quizzes_IndexLst.length==0){
       Image_Quizzes_IndexLst.add(ImageQuizzRan);
       foundNum=true;
      }
      else{
        while(foundNum==false){
         if(Image_Quizzes_IndexLst.contains(ImageQuizzRan)){
          ImageQuizzRan=new Random().nextInt(8);
         }
         else{
          Image_Quizzes_IndexLst.add(ImageQuizzRan);
          foundNum=true;
         }
        }
      }

      Image_Quizzes_IndexLst.sort();
      print(Image_Quizzes_IndexLst.toString());
  }
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

      (ImageQuizzRan==0)?
       Cmp_Fields_Quizz (
        AppBarTitle: "Image Quizz",
        Question: Image_Q1_Question,
        SolutionTxt: Image_Q1_TxtSol,
        GoRoute: "/Generate_Image_Quizz",
        Ans1Txt: Image_Q1_T1_Controller,
        Ans2Txt: Image_Q1_T2_Controller,
        Ans3Txt: Image_Q1_T3_Controller,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Image_Q1_T1_Answer,
        CorrectAns2: Image_Q1_T2_Answer,
        CorrectAns3: Image_Q1_T3_Answer,
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Image_Q1_list,
       ) :


      (ImageQuizzRan==1)?
       Cmp_Fields_Quizz (
        AppBarTitle: "Image Quizz",
        Question: Image_Q2_Question,
        SolutionTxt: Image_Q2_TxtSol,
        GoRoute: "/Generate_Image_Quizz",
        Ans1Txt: Image_Q2_T1_Controller,
        Ans2Txt: Image_Q2_T2_Controller,
        Ans3Txt: Text_NullController,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Image_Q2_T1_Answer,
        CorrectAns2: Image_Q2_T2_Answer,
        CorrectAns3: "NotSet",
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Image_Q2_list,
       ) :

      (ImageQuizzRan==2)?
      Cmp_Fields_Quizz (
        AppBarTitle: "Image Quizz",
        Question: Image_Q3_Question,
        SolutionTxt: Image_Q3_TxtSol,
        GoRoute: "/Generate_Image_Quizz",
        Ans1Txt: Image_Q3_T1_Controller,
        Ans2Txt: Image_Q3_T2_Controller,
        Ans3Txt: Text_NullController,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Image_Q3_T1_Answer,
        CorrectAns2: Image_Q3_T2_Answer,
        CorrectAns3: "NotSet",
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Image_Q3_list,
      ) :


      (ImageQuizzRan==3)?
      Cmp_Fields_Quizz (
        AppBarTitle: "Image Quizz",
        Question: Image_Q4_Question,
        SolutionTxt: Image_Q4_TxtSol,
        GoRoute: "/Generate_Image_Quizz",
        Ans1Txt: Image_Q4_T1_Controller,
        Ans2Txt: Image_Q4_T2_Controller,
        Ans3Txt: Image_Q4_T3_Controller,
        Ans4Txt: Image_Q4_T4_Controller,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Image_Q4_T1_Answer,
        CorrectAns2: Image_Q4_T2_Answer,
        CorrectAns3: Image_Q4_T3_Answer,
        CorrectAns4: Image_Q4_T4_Answer,
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Image_Q4_list,
      ) :


      (ImageQuizzRan==4)?
     Cmp_Fields_Quizz (
        AppBarTitle: "Image Quizz",
        Question: Image_Q5_Question,
        SolutionTxt: Image_Q5_TxtSol,
        GoRoute: "/Generate_Image_Quizz",
        Ans1Txt: Image_Q5_T1_Controller,
        Ans2Txt: Image_Q5_T2_Controller,
        Ans3Txt: Image_Q5_T3_Controller,
        Ans4Txt: Image_Q5_T4_Controller,
        Ans5Txt: Image_Q5_T5_Controller,
        Ans6Txt: Image_Q5_T6_Controller,
        Ans7Txt: Text_NullController,
        CorrectAns1: Image_Q5_T1_Answer,
        CorrectAns2: Image_Q5_T2_Answer,
        CorrectAns3: Image_Q5_T3_Answer,
        CorrectAns4: Image_Q5_T4_Answer,
        CorrectAns5: Image_Q5_T5_Answer,
        CorrectAns6: Image_Q5_T6_Answer,
        CorrectAns7: "NotSet",
        QuizzList: Image_Q5_list,
      ):

      
      (ImageQuizzRan==5)?
     Cmp_Fields_Quizz (
        AppBarTitle: "Image Quizz",
        Question: Image_Q6_Question,
        SolutionTxt: Image_Q6_TxtSol,
        GoRoute: "/Generate_Image_Quizz",
        Ans1Txt: Image_Q6_T1_Controller,
        Ans2Txt: Image_Q6_T2_Controller,
        Ans3Txt: Image_Q6_T3_Controller,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Image_Q6_T1_Answer,
        CorrectAns2: Image_Q6_T2_Answer,
        CorrectAns3: Image_Q6_T3_Answer,
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Image_Q6_list,
      ):

      (ImageQuizzRan==6)?
     Cmp_Fields_Quizz (
        AppBarTitle: "Image Quizz",
        Question: Image_Q7_Question,
        SolutionTxt: Image_Q7_TxtSol,
        GoRoute: "/Generate_Image_Quizz",
        Ans1Txt: Image_Q7_T1_Controller,
        Ans2Txt: Image_Q7_T2_Controller,
        Ans3Txt: Image_Q7_T3_Controller,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Image_Q7_T1_Answer,
        CorrectAns2: Image_Q7_T2_Answer,
        CorrectAns3: Image_Q7_T3_Answer,
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Image_Q7_list,
      ):


      Cmp_Fields_Quizz (
        AppBarTitle: "Image Quizz",
        Question: Image_Q8_Question,
        SolutionTxt: Image_Q8_TxtSol,
        GoRoute: "/Generate_Image_Quizz",
        Ans1Txt: Image_Q8_T1_Controller,
        Ans2Txt: Image_Q8_T2_Controller,
        Ans3Txt: Image_Q8_T3_Controller,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Image_Q8_T1_Answer,
        CorrectAns2: Image_Q8_T2_Answer,
        CorrectAns3: Image_Q8_T3_Answer,
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Image_Q8_list,
      )



    );
  }



}












