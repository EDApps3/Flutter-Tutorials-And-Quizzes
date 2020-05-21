import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/1_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/2_Text_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/4_TextField_Text_TextField_Text_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/5_TextField_Text_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/Cmp_Fields_Quizz.dart';
import 'dart:math';

import '../4_AppBar/Quizzes/AppBar_Q5.dart';
import '../4_AppBar/Quizzes/AppBar_Q6.dart';

class cl_HeaderAppBarQuizz extends StatelessWidget{
  int HeaderAppBarQuizzRan=new Random().nextInt(7);

  var Text_NullController= new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

      (HeaderAppBarQuizzRan==0)?
       Cmp_Fields_Quizz (
        AppBarTitle: "Header AppBar Quizz",
        Question: AppBar_Q1_Question,
        SolutionTxt: AppBar_Q1_TxtSol,
        GoRoute: "/Generate_AppBar_Quizz",
        Ans1Txt: AppBar_Q1_T1_Controller,
        Ans2Txt: AppBar_Q1_T2_Controller,
        Ans3Txt: Text_NullController,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: AppBar_Q1_T1_Answer,
        CorrectAns2: AppBar_Q1_T2_Answer,
        CorrectAns3: "Not Set",
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
        GoRoute: "/Generate_AppBar_Quizz",
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
        GoRoute: "/Generate_AppBar_Quizz",
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
        GoRoute: "/Generate_AppBar_Quizz",
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
        AppBarQ5()





       :AppBarQ6(),




    );
  }




//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------

  String AppBar_Q1_TxtSol =
      "appBar:AppBar(\n"
      " title:Text('Welcome'),\n"
      "),";

  String AppBar_Q1_Question = "Fill The Missing Field To Set AppBar Title To Welcome";

  static var AppBar_Q1_T1_Controller = new TextEditingController();
  static var AppBar_Q1_T1_Answer = "AppBar";

  static var AppBar_Q1_T2_Controller = new TextEditingController();
  static var AppBar_Q1_T2_Answer = "title";


  List AppBar_Q1_list = [
    Text (
          "import 'package:flutter/material.dart';\n\n"

          "void main() {\n"
          "  runApp(Quizz());\n"
          "}\n\n"

          "class Quizz extends StatelessWidget{\n"
          "  @override\n"
          "  Widget build(BuildContext context) {\n"
          "   return MaterialApp(\n"
          "    debugShowCheckedModeBanner:false,\n"
          "    title:'Quizz',\n"
          "    home:Scaffold(\n",
    ),
    CmpQuizz_Text_TextField_Text(
      Spacing:62.0,
      Text1:"appBar:",
      TC1_Controller:AppBar_Q1_T1_Controller,
      TC1_Width:AppBar_Q1_T1_Answer.length*10.0,
      TC1_MaxLength:AppBar_Q1_T1_Answer.length,
      Text2:"(",
    ),
    CmpQuizz_TextField_Text(
      Spacing:65.0,
      TC1_Controller:AppBar_Q1_T2_Controller,
      TC1_Width:AppBar_Q1_T2_Answer.length*10.0,
      TC1_MaxLength:AppBar_Q1_T2_Answer.length,
      Text1:":Text('Welcome')",
    ),
    Text(
        "                     ),\n"
        "                     body:Center(\n"
        "                      child:\n"
        "                       Text(\n"
        "                        'AppBar Title'\n"
        "                       ),\n"
        "                      ),\n"
        "                 ),\n"
        "         );\n"
        "   }\n"
        " }\n"
    ),
  ];



//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------

  String AppBar_Q2_TxtSol ="theme:ThemeData.light(),";

  String AppBar_Q2_Question = "Fill The Missing Fields To Turn AppBar Theme To Light";

  static var AppBar_Q2_T1_Controller = new TextEditingController();
  static var AppBar_Q2_T1_Answer = "theme";

  static var AppBar_Q2_T2_Controller = new TextEditingController();
  static var AppBar_Q2_T2_Answer = "ThemeData";

  static var AppBar_Q2_T3_Controller = new TextEditingController();
  static var AppBar_Q2_T3_Answer = "light()";


  List AppBar_Q2_list = [
    Text (
          "import 'package:flutter/material.dart';\n\n"

          "void main() {\n"
          "  runApp(Quizz());\n"
          "}\n\n"

          "class Quizz extends StatelessWidget{\n"
          "  @override\n"
          "  Widget build(BuildContext context) {\n"
          "   return MaterialApp(\n"
          "    debugShowCheckedModeBanner:false,\n"
          "    title:'Quizz',\n"
    ),
    CmpQuizz_TextField_Text_TextField_Text_TextField_Text(
      Spacing:62.0,
      TC1_Controller:AppBar_Q2_T1_Controller,
      TC1_Width:AppBar_Q2_T1_Answer.length*10.0,
      TC1_MaxLength:AppBar_Q2_T1_Answer.length,
      Text1:":",
      TC2_Controller:AppBar_Q2_T2_Controller,
      TC2_Width:AppBar_Q2_T2_Answer.length*10.0,
      TC2_MaxLength:AppBar_Q2_T2_Answer.length,
      Text2:".",
      TC3_Controller:AppBar_Q2_T3_Controller,
      TC3_Width:AppBar_Q2_T3_Answer.length*10.0,
      TC3_MaxLength:AppBar_Q2_T3_Answer.length,
      Text3:",",
    ),
    Text(
            "       home:Scaffold(\n"
            "        appBar:AppBar(\n"
            "          title:Text('Light AppBar Theme'),"
            "        ),\n"
            "        body:Center(\n"
            "         child:\n"
            "          Text(\n"
            "            'Light AppBar Theme'\n"
            "          ),\n"
            "        ),\n"
            "       ),\n"
            "     );\n"
            "   }\n"
            " }\n"
    ),
  ];



//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------


  String AppBar_Q3_TxtSol ="theme:ThemeData.light(),";

  String AppBar_Q3_Question = "Fill The Missing Fields To Turn AppBar Theme To Dark";

  static var AppBar_Q3_T1_Controller = new TextEditingController();
  static var AppBar_Q3_T1_Answer = "theme";

  static var AppBar_Q3_T2_Controller = new TextEditingController();
  static var AppBar_Q3_T2_Answer = "ThemeData";

  static var AppBar_Q3_T3_Controller = new TextEditingController();
  static var AppBar_Q3_T3_Answer = "dark()";


  List AppBar_Q3_list = [
    Text (
        "import 'package:flutter/material.dart';\n\n"

            "void main() {\n"
            "  runApp(Quizz());\n"
            "}\n\n"

            "class Quizz extends StatelessWidget{\n"
            "  @override\n"
            "  Widget build(BuildContext context) {\n"
            "   return MaterialApp(\n"
            "    debugShowCheckedModeBanner:false,\n"
            "    title:'Quizz',\n"
    ),
    CmpQuizz_TextField_Text_TextField_Text_TextField_Text(
      Spacing:62.0,
      TC1_Controller:AppBar_Q3_T1_Controller,
      TC1_Width:AppBar_Q3_T1_Answer.length*10.0,
      TC1_MaxLength:AppBar_Q3_T1_Answer.length,
      Text1:":",
      TC2_Controller:AppBar_Q3_T2_Controller,
      TC2_Width:AppBar_Q3_T2_Answer.length*10.0,
      TC2_MaxLength:AppBar_Q3_T2_Answer.length,
      Text2:".",
      TC3_Controller:AppBar_Q3_T3_Controller,
      TC3_Width:AppBar_Q3_T3_Answer.length*10.0,
      TC3_MaxLength:AppBar_Q3_T3_Answer.length,
      Text3:",",
    ),
    Text(
        "       home:Scaffold(\n"
            "        appBar:AppBar(\n"
            "          title:Text('Dark AppBar Theme'),"
            "        ),\n"
            "        body:Center(\n"
            "         child:\n"
            "          Text(\n"
            "            'Dark AppBar Theme'\n"
            "          ),\n"
            "        ),\n"
            "       ),\n"
            "     );\n"
            "   }\n"
            " }\n"
    ),
  ];



//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------


  String AppBar_Q4_TxtSol =
      "appBar:AppBar(\n"
      "  title:Text('Red Bg')\n"
      "  backgroundColor:Colors.red,\n"
      ")";

  String AppBar_Q4_Question = "Fill The Missing Fields To Turn AppBar Background Color To Red";

  static var AppBar_Q4_T1_Controller = new TextEditingController();
  static var AppBar_Q4_T1_Answer = "backgroundColor";

  static var AppBar_Q4_T2_Controller = new TextEditingController();
  static var AppBar_Q4_T2_Answer = "Colors";


  List AppBar_Q4_list = [
    Text (
         "import 'package:flutter/material.dart';\n\n"

          "void main() {\n"
          "  runApp(Quizz());\n"
          "}\n\n"

          "class Quizz extends StatelessWidget{\n"
          "  @override\n"
          "  Widget build(BuildContext context) {\n"
          "   return MaterialApp(\n"
          "    debugShowCheckedModeBanner:false,\n"
          "    title:'Quizz',\n"
          "    home:Scaffold(\n"
          "     appBar:AppBar(\n"
          "       title:Text('Red Bg'),"
    ),
    CmpQuizz_TextField_Text_TextField_Text(
      Spacing:42.0,
      TC1_Controller:AppBar_Q4_T1_Controller,
      TC1_Width:AppBar_Q4_T1_Answer.length*10.0,
      TC1_MaxLength:AppBar_Q4_T1_Answer.length,
      Text1:":",
      TC2_Controller:AppBar_Q4_T2_Controller,
      TC2_Width:AppBar_Q4_T2_Answer.length*10.0,
      TC2_MaxLength:AppBar_Q4_T2_Answer.length,
      Text2:".red,",
    ),
    Text(
            "    ),\n"
            "    body:Center(\n"
            "       child:\n"
            "         Text(\n"
            "           'Red Bg'\n"
            "          ),\n"
            "     ),\n"
            "    ),\n"
            "   );\n"
            "  }\n"
            " }\n"
    ),
  ];



//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------







}









