import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/0_Quizzes/1_Intro_GenerateQuizzes.dart';
import 'dart:math';
import 'package:flutter_tutorials_and_quizzes/_Comp_Courses/Cmp_Quizz_2Radio.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Courses/Cmp_Quizz_4Radio.dart';


class cl_KeywordsQuizz extends StatelessWidget{
  int KeywordsQuizzRan=new Random().nextInt(14);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

      (KeywordsQuizzRan==0)?
       Cmp_Quizz_2Radio(
        AppBarTitle:"Keywords Quizz",
        Question:"How Many Widget Can a program Contain?",
        Ans1Txt:"10",
        Ans2Txt:"Unlimited",
        SolutionTxt:"Flutter Program Can Contain Unlimited Widgets Depends On Developer (Buttons,Texts...)",
        CorrectIndex:2,
        GoRoute:"/Generate_Keywords_Quizz",
       ):


      (KeywordsQuizzRan==1)?
       Cmp_Quizz_2Radio(
        AppBarTitle:"Keywords Quizz",
        Question:"Is TextField Considered As Widget?",
        Ans1Txt:"Yes",
        Ans2Txt:"No",
        SolutionTxt:"TextField Is An Widget",
        CorrectIndex:1,
        GoRoute:"/Generate_Keywords_Quizz",
       ):


      (KeywordsQuizzRan==2)?
       Cmp_Quizz_2Radio(
        AppBarTitle:"Keywords Quizz",
        Question:"Can Stateless Widget Handle Events After That Loading Has Finished?",
        Ans1Txt:"Yes",
        Ans2Txt:"No",
        SolutionTxt:"Statless Widget Cannot Handle Any Event After That Loading Has Finished",
        CorrectIndex:2,
        GoRoute:"/Generate_Keywords_Quizz",
       ):


      (KeywordsQuizzRan==3)?
       Cmp_Quizz_2Radio(
         AppBarTitle:"Keywords Quizz",
         Question:"If We Need To Create A Program That Change Background Color When A Button Is Clicked,Wich Widget Will You Use?",
         Ans1Txt:"Stateless Widget",
         Ans2Txt:"Statefull Widget",
         SolutionTxt:"Statefull Widget Because We Need To Set new State for The Background Color ",
         CorrectIndex:2,
         GoRoute:"/Generate_Keywords_Quizz",
       ):


      (KeywordsQuizzRan==4)?
       Cmp_Quizz_2Radio(
        AppBarTitle:"Keywords Quizz",
        Question:"If You Have To Create An About Us Page That just Display Some Texts,Would You Use:",
        Ans1Txt:"Stateless Widget",
        Ans2Txt:"Statefull Widget",
        SolutionTxt:"Stateless Widget Because When The Content Is Displayed We Don't Want To Change its State",
        CorrectIndex:1,
        GoRoute:"/Generate_Keywords_Quizz",
       ):


      (KeywordsQuizzRan==5)?
       Cmp_Quizz_4Radio(
        AppBarTitle:"Keywords Quizz",
        Question:"How Many Class required To Create an Statefull Widget for a Single Target",
        Ans1Txt:"1",
        Ans2Txt:"2",
        Ans3Txt:"3",
        Ans4Txt:"4",
        SolutionTxt:"2 Class Required\n\n1-Main Class\n2-Main Class State",
        CorrectIndex:2,
        GoRoute:"/Generate_Keywords_Quizz",
       ):


      (KeywordsQuizzRan==6)?
       Cmp_Quizz_2Radio(
        AppBarTitle:"Keywords Quizz",
        Question:"Is Navigator Considered As Widget?",
        Ans1Txt:"Yes",
        Ans2Txt:"No",
        SolutionTxt:"A Navigator Is An Flutter Widget",
        CorrectIndex:1,
        GoRoute:"/Generate_Keywords_Quizz",
       ):


      (KeywordsQuizzRan==7)?
       Cmp_Quizz_2Radio(
        AppBarTitle:"Keywords Quizz",
        Question:"Option Not In Navigator :",
        Ans1Txt:"Push",
        Ans2Txt:"Pull",
        SolutionTxt:"Pull Is Not An Navigator Option",
        CorrectIndex:2,
        GoRoute:"/Generate_Keywords_Quizz",
       ):


      (KeywordsQuizzRan==8)?
       Cmp_Quizz_2Radio(
        AppBarTitle:"Keywords Quizz",
        Question:"To Navigate To An Another Page We Use :",
        Ans1Txt:"Push",
        Ans2Txt:"Pop",
        SolutionTxt:"Push Is Used To Navigate To Another Page",
        CorrectIndex:1,
        GoRoute:"/Generate_Keywords_Quizz",
       ):


      (KeywordsQuizzRan==9)?
       Cmp_Quizz_2Radio(
        AppBarTitle:"Keywords Quizz",
        Question:"To Get Rid Of Stacked Screens We Use Navigator :",
        Ans1Txt:"Push",
        Ans2Txt:"Pop",
        SolutionTxt:"Pop Is Used To Get Ride Of Stacked Screens(Dialog...)",
        CorrectIndex:2,
        GoRoute:"/Generate_Keywords_Quizz",
       ):



      (KeywordsQuizzRan==10)?
       Cmp_Quizz_2Radio(
        AppBarTitle:"Keywords Quizz",
        Question:"How Many Body Can Scaffold Hold?",
        Ans1Txt:"Unlimited",
        Ans2Txt:"Just One",
        SolutionTxt:"Scaffold Can Hold Just One Body where The Body Can Hold Multiple Elements Needed",
        CorrectIndex:2,
        GoRoute:"/Generate_Keywords_Quizz",
       ):



      (KeywordsQuizzRan==11)?
       Cmp_Quizz_4Radio(
        AppBarTitle:"Keywords Quizz",
        Question:"Flutter Default AppBar Background Color:",
        Ans1Txt:"Red",
        Ans2Txt:"Orange",
        Ans3Txt:"Blue",
        Ans4Txt:"White",
        SolutionTxt:"Blue Is The Default AppBar Background Color",
        CorrectIndex:3,
        GoRoute:"/Generate_Keywords_Quizz",
       ):



      (KeywordsQuizzRan==12)?
       Cmp_Quizz_4Radio(
        AppBarTitle:"Keywords Quizz",
        Question:"Flutter AppBar Default Text Color:",
        Ans1Txt:"Red",
        Ans2Txt:"Orange",
        Ans3Txt:"Blue",
        Ans4Txt:"White",
        SolutionTxt:"White Is Default AppBar  Text Color",
        CorrectIndex:4,
        GoRoute:"/Generate_Keywords_Quizz",
       )



      :Cmp_Quizz_4Radio(
        AppBarTitle:"Keywords Quizz",
        Question:"Scaffold Included Inside:",
        Ans1Txt:"Home",
        Ans2Txt:"Body",
        Ans3Txt:"AppBar",
        Ans4Txt:"MaterialApp",
        SolutionTxt:"Scaffold Included Inside MaterialApp",
        CorrectIndex:4,
        GoRoute:"/Generate_Keywords_Quizz",
      ),





    );
  }

}


