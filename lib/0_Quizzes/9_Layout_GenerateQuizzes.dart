import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Courses/Cmp_Quizz_2Radio.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/Cmp_Fields_Quizz.dart';
import 'dart:math';

import '9_Layouts/Layout_Q1.dart';
import '9_Layouts/Layout_Q10.dart';
import '9_Layouts/Layout_Q11.dart';
import '9_Layouts/Layout_Q12.dart';
import '9_Layouts/Layout_Q2.dart';
import '9_Layouts/Layout_Q3.dart';
import '9_Layouts/Layout_Q4.dart';
import '9_Layouts/Layout_Q5.dart';
import '9_Layouts/Layout_Q6.dart';
import '9_Layouts/Layout_Q7.dart';
import '9_Layouts/Layout_Q8.dart';
import '9_Layouts/Layout_Q9.dart';


List Layout_Quizzes_IndexLst=new List();

class cl_LayoutQuizz extends StatefulWidget {
  cl_LayoutQuizz({Key key}) : super(key: key);
  cl_LayoutQuizz_State createState() => cl_LayoutQuizz_State();
}

class cl_LayoutQuizz_State extends State<cl_LayoutQuizz> {
  var LayoutQuizzRan=new Random().nextInt(17);
  bool foundNum=false;

  var Text_NullController= new TextEditingController();

  @override
  void initState(){
    LayoutQuizzRan=new Random().nextInt(17);
    setState(() {foundNum=false;});

      if(Layout_Quizzes_IndexLst.length==17){
        Layout_Quizzes_IndexLst=new List();
      }

      if(Layout_Quizzes_IndexLst.length==0){
       Layout_Quizzes_IndexLst.add(LayoutQuizzRan);
       foundNum=true;
      }
      else{
        while(foundNum==false){
         if(Layout_Quizzes_IndexLst.contains(LayoutQuizzRan)){
          LayoutQuizzRan=new Random().nextInt(17);
         }
         else{
          Layout_Quizzes_IndexLst.add(LayoutQuizzRan);
          foundNum=true;
         }
        }
      }

      Layout_Quizzes_IndexLst.sort();
      print(Layout_Quizzes_IndexLst.toString());
  }
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

      (LayoutQuizzRan==0)?
        Cmp_Quizz_2Radio(
          AppBarTitle:"Layout Quizz",
          Question:"In Row Layout,Main Axis Used To Align:",
          Ans1Txt:"Vertically",
          Ans2Txt:"Horizontally",
          SolutionTxt:"In Row Layout,Main Axis Used To Align Horizontally",
          CorrectIndex:2,
          GoRoute:"/Generate_Layouts_Quizz",
        ):

       (LayoutQuizzRan==1)?
        Cmp_Quizz_2Radio(
          AppBarTitle:"Layout Quizz",
          Question:"In Row Layout,Cross Axis Used To Align:",
          Ans1Txt:"Horizontally",
          Ans2Txt:"Vertically",
          SolutionTxt:"In Row Layout,Main Axis Used To Align Vertically",
          CorrectIndex:2,
          GoRoute:"/Generate_Layouts_Quizz",
        ):

       (LayoutQuizzRan==2)?
        Cmp_Quizz_2Radio(
          AppBarTitle:"Layout Quizz",
          Question:"In Column Layout,Cross Axis Used To Align:",
          Ans1Txt:"Horizontally",
          Ans2Txt:"Vertically",
          SolutionTxt:"In Column Layout,Cross Axis Used To Align Horizontally",
          CorrectIndex:1,
          GoRoute:"/Generate_Layouts_Quizz",
        ):

       (LayoutQuizzRan==3)?
        Cmp_Quizz_2Radio(
          AppBarTitle:"Layout Quizz",
          Question:"In Column Layout,Main Axis Used To Align:",
          Ans1Txt:"Vertically",
          Ans2Txt:"Horizontally",
          SolutionTxt:"In Column Layout,Main Axis Used To Align Vertically",
          CorrectIndex:1,
          GoRoute:"/Generate_Layouts_Quizz",
        ):


       (LayoutQuizzRan==4)?
        Cmp_Quizz_2Radio(
          AppBarTitle:"Layout Quizz",
          Question:"In Column Layout,Main Axis Used To Align:",
          Ans1Txt:"Vertically",
          Ans2Txt:"Horizontally",
          SolutionTxt:"In Column Layout,Main Axis Used To Align Vertically",
          CorrectIndex:1,
          GoRoute:"/Generate_Layouts_Quizz",
        ):


       (LayoutQuizzRan==5)?
        Cmp_Fields_Quizz (
         AppBarTitle: "Layouts Quizz",
         Question: Layouts_Q1_Question,
         SolutionTxt: Layouts_Q1_TxtSol,
         GoRoute: "/Generate_Layouts_Quizz",
         Ans1Txt: Layouts_Q1_T1_Controller,
         Ans2Txt: Layouts_Q1_T2_Controller,
         Ans3Txt: Layouts_Q1_T3_Controller,
         Ans4Txt: Text_NullController,
         Ans5Txt: Text_NullController,
         Ans6Txt: Text_NullController,
         Ans7Txt: Text_NullController,
         CorrectAns1: Layouts_Q1_T1_Answer,
         CorrectAns2: Layouts_Q1_T2_Answer,
         CorrectAns3: Layouts_Q1_T3_Answer,
         CorrectAns4: "NotSet",
         CorrectAns5: "NotSet",
         CorrectAns6: "NotSet",
         CorrectAns7: "NotSet",
         QuizzList: Layouts_Q1_list,
       ) :


       (LayoutQuizzRan==6)?
        Cmp_Fields_Quizz (
         AppBarTitle: "Layouts Quizz",
         Question: Layouts_Q2_Question,
         SolutionTxt: Layouts_Q2_TxtSol,
         GoRoute: "/Generate_Layouts_Quizz",
         Ans1Txt: Layouts_Q2_T1_Controller,
         Ans2Txt: Layouts_Q2_T2_Controller,
         Ans3Txt: Layouts_Q2_T3_Controller,
         Ans4Txt: Text_NullController,
         Ans5Txt: Text_NullController,
         Ans6Txt: Text_NullController,
         Ans7Txt: Text_NullController,
         CorrectAns1: Layouts_Q2_T1_Answer,
         CorrectAns2: Layouts_Q2_T2_Answer,
         CorrectAns3: Layouts_Q2_T3_Answer,
         CorrectAns4: "NotSet",
         CorrectAns5: "NotSet",
         CorrectAns6: "NotSet",
         CorrectAns7: "NotSet",
         QuizzList: Layouts_Q2_list,
       ) :


       (LayoutQuizzRan==7)?
        Cmp_Fields_Quizz (
         AppBarTitle: "Layouts Quizz",
         Question: Layouts_Q3_Question,
         SolutionTxt: Layouts_Q3_TxtSol,
         GoRoute: "/Generate_Layouts_Quizz",
         Ans1Txt: Layouts_Q3_T1_Controller,
         Ans2Txt: Layouts_Q3_T2_Controller,
         Ans3Txt: Layouts_Q3_T3_Controller,
         Ans4Txt: Text_NullController,
         Ans5Txt: Text_NullController,
         Ans6Txt: Text_NullController,
         Ans7Txt: Text_NullController,
         CorrectAns1: Layouts_Q3_T1_Answer,
         CorrectAns2: Layouts_Q3_T2_Answer,
         CorrectAns3: Layouts_Q3_T3_Answer,
         CorrectAns4: "NotSet",
         CorrectAns5: "NotSet",
         CorrectAns6: "NotSet",
         CorrectAns7: "NotSet",
         QuizzList: Layouts_Q3_list,
       ) :



      (LayoutQuizzRan==8)?
        Cmp_Fields_Quizz (
         AppBarTitle: "Layouts Quizz",
         Question: Layouts_Q4_Question,
         SolutionTxt: Layouts_Q4_TxtSol,
         GoRoute: "/Generate_Layouts_Quizz",
         Ans1Txt: Layouts_Q4_T1_Controller,
         Ans2Txt: Layouts_Q4_T2_Controller,
         Ans3Txt: Layouts_Q4_T3_Controller,
         Ans4Txt: Text_NullController,
         Ans5Txt: Text_NullController,
         Ans6Txt: Text_NullController,
         Ans7Txt: Text_NullController,
         CorrectAns1: Layouts_Q4_T1_Answer,
         CorrectAns2: Layouts_Q4_T2_Answer,
         CorrectAns3: Layouts_Q4_T3_Answer,
         CorrectAns4: "NotSet",
         CorrectAns5: "NotSet",
         CorrectAns6: "NotSet",
         CorrectAns7: "NotSet",
         QuizzList: Layouts_Q4_list,
       ) :





      (LayoutQuizzRan==9)?
        Cmp_Fields_Quizz (
         AppBarTitle: "Layouts Quizz",
         Question: Layouts_Q5_Question,
         SolutionTxt: Layouts_Q5_TxtSol,
         GoRoute: "/Generate_Layouts_Quizz",
         Ans1Txt: Layouts_Q5_T1_Controller,
         Ans2Txt: Layouts_Q5_T2_Controller,
         Ans3Txt: Layouts_Q5_T3_Controller,
         Ans4Txt: Text_NullController,
         Ans5Txt: Text_NullController,
         Ans6Txt: Text_NullController,
         Ans7Txt: Text_NullController,
         CorrectAns1: Layouts_Q5_T1_Answer,
         CorrectAns2: Layouts_Q5_T2_Answer,
         CorrectAns3: Layouts_Q5_T3_Answer,
         CorrectAns4: "NotSet",
         CorrectAns5: "NotSet",
         CorrectAns6: "NotSet",
         CorrectAns7: "NotSet",
         QuizzList: Layouts_Q5_list,
       ) :



       (LayoutQuizzRan==10)?
        Cmp_Fields_Quizz (
         AppBarTitle: "Layouts Quizz",
         Question: Layouts_Q6_Question,
         SolutionTxt: Layouts_Q6_TxtSol,
         GoRoute: "/Generate_Layouts_Quizz",
         Ans1Txt: Layouts_Q6_T1_Controller,
         Ans2Txt: Layouts_Q6_T2_Controller,
         Ans3Txt: Layouts_Q6_T3_Controller,
         Ans4Txt: Text_NullController,
         Ans5Txt: Text_NullController,
         Ans6Txt: Text_NullController,
         Ans7Txt: Text_NullController,
         CorrectAns1: Layouts_Q6_T1_Answer,
         CorrectAns2: Layouts_Q6_T2_Answer,
         CorrectAns3: Layouts_Q6_T3_Answer,
         CorrectAns4: "NotSet",
         CorrectAns5: "NotSet",
         CorrectAns6: "NotSet",
         CorrectAns7: "NotSet",
         QuizzList: Layouts_Q6_list,
       ) :



       (LayoutQuizzRan==11)?
        Cmp_Fields_Quizz (
         AppBarTitle: "Layouts Quizz",
         Question: Layouts_Q7_Question,
         SolutionTxt: Layouts_Q7_TxtSol,
         GoRoute: "/Generate_Layouts_Quizz",
         Ans1Txt: Layouts_Q7_T1_Controller,
         Ans2Txt: Layouts_Q7_T2_Controller,
         Ans3Txt: Layouts_Q7_T3_Controller,
         Ans4Txt: Text_NullController,
         Ans5Txt: Text_NullController,
         Ans6Txt: Text_NullController,
         Ans7Txt: Text_NullController,
         CorrectAns1: Layouts_Q7_T1_Answer,
         CorrectAns2: Layouts_Q7_T2_Answer,
         CorrectAns3: Layouts_Q7_T3_Answer,
         CorrectAns4: "NotSet",
         CorrectAns5: "NotSet",
         CorrectAns6: "NotSet",
         CorrectAns7: "NotSet",
         QuizzList: Layouts_Q7_list,
       ) :



      (LayoutQuizzRan==12)?
        Cmp_Fields_Quizz (
         AppBarTitle: "Layouts Quizz",
         Question: Layouts_Q8_Question,
         SolutionTxt: Layouts_Q8_TxtSol,
         GoRoute: "/Generate_Layouts_Quizz",
         Ans1Txt: Layouts_Q8_T1_Controller,
         Ans2Txt: Layouts_Q8_T2_Controller,
         Ans3Txt: Layouts_Q8_T3_Controller,
         Ans4Txt: Text_NullController,
         Ans5Txt: Text_NullController,
         Ans6Txt: Text_NullController,
         Ans7Txt: Text_NullController,
         CorrectAns1: Layouts_Q8_T1_Answer,
         CorrectAns2: Layouts_Q8_T2_Answer,
         CorrectAns3: Layouts_Q8_T3_Answer,
         CorrectAns4: "NotSet",
         CorrectAns5: "NotSet",
         CorrectAns6: "NotSet",
         CorrectAns7: "NotSet",
         QuizzList: Layouts_Q8_list,
       ) :



      (LayoutQuizzRan==13)?
        Cmp_Fields_Quizz (
         AppBarTitle: "Layouts Quizz",
         Question: Layouts_Q9_Question,
         SolutionTxt: Layouts_Q9_TxtSol,
         GoRoute: "/Generate_Layouts_Quizz",
         Ans1Txt: Layouts_Q9_T1_Controller,
         Ans2Txt: Layouts_Q9_T2_Controller,
         Ans3Txt: Layouts_Q9_T3_Controller,
         Ans4Txt: Text_NullController,
         Ans5Txt: Text_NullController,
         Ans6Txt: Text_NullController,
         Ans7Txt: Text_NullController,
         CorrectAns1: Layouts_Q9_T1_Answer,
         CorrectAns2: Layouts_Q9_T2_Answer,
         CorrectAns3: Layouts_Q9_T3_Answer,
         CorrectAns4: "NotSet",
         CorrectAns5: "NotSet",
         CorrectAns6: "NotSet",
         CorrectAns7: "NotSet",
         QuizzList: Layouts_Q9_list,
       ) :



      (LayoutQuizzRan==14)?
        Cmp_Fields_Quizz (
         AppBarTitle: "Layouts Quizz",
         Question: Layouts_Q10_Question,
         SolutionTxt: Layouts_Q10_TxtSol,
         GoRoute: "/Generate_Layouts_Quizz",
         Ans1Txt: Layouts_Q10_T1_Controller,
         Ans2Txt: Layouts_Q10_T2_Controller,
         Ans3Txt: Layouts_Q10_T3_Controller,
         Ans4Txt: Text_NullController,
         Ans5Txt: Text_NullController,
         Ans6Txt: Text_NullController,
         Ans7Txt: Text_NullController,
         CorrectAns1: Layouts_Q10_T1_Answer,
         CorrectAns2: Layouts_Q10_T2_Answer,
         CorrectAns3: Layouts_Q10_T3_Answer,
         CorrectAns4: "NotSet",
         CorrectAns5: "NotSet",
         CorrectAns6: "NotSet",
         CorrectAns7: "NotSet",
         QuizzList: Layouts_Q10_list,
       ) :



      (LayoutQuizzRan==15)?
       Cmp_Fields_Quizz (
         AppBarTitle: "Layouts Quizz",
         Question: Layouts_Q11_Question,
         SolutionTxt: Layouts_Q11_TxtSol,
         GoRoute: "/Generate_Layouts_Quizz",
         Ans1Txt: Layouts_Q11_T1_Controller,
         Ans2Txt: Layouts_Q11_T2_Controller,
         Ans3Txt: Layouts_Q11_T3_Controller,
         Ans4Txt: Text_NullController,
         Ans5Txt: Text_NullController,
         Ans6Txt: Text_NullController,
         Ans7Txt: Text_NullController,
         CorrectAns1: Layouts_Q11_T1_Answer,
         CorrectAns2: Layouts_Q11_T2_Answer,
         CorrectAns3: Layouts_Q11_T3_Answer,
         CorrectAns4: "NotSet",
         CorrectAns5: "NotSet",
         CorrectAns6: "NotSet",
         CorrectAns7: "NotSet",
         QuizzList: Layouts_Q11_list,
       ) :



        Cmp_Fields_Quizz (
         AppBarTitle: "Layouts Quizz",
         Question: Layouts_Q12_Question,
         SolutionTxt: Layouts_Q12_TxtSol,
         GoRoute: "/Generate_Layouts_Quizz",
         Ans1Txt: Layouts_Q12_T1_Controller,
         Ans2Txt: Layouts_Q12_T2_Controller,
         Ans3Txt: Layouts_Q12_T3_Controller,
         Ans4Txt: Text_NullController,
         Ans5Txt: Text_NullController,
         Ans6Txt: Text_NullController,
         Ans7Txt: Text_NullController,
         CorrectAns1: Layouts_Q12_T1_Answer,
         CorrectAns2: Layouts_Q12_T2_Answer,
         CorrectAns3: Layouts_Q12_T3_Answer,
         CorrectAns4: "NotSet",
         CorrectAns5: "NotSet",
         CorrectAns6: "NotSet",
         CorrectAns7: "NotSet",
         QuizzList: Layouts_Q12_list,
       ) 



      
    );
  }



}












