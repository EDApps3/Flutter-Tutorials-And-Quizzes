import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/3_Text_TextField_Text_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/4_TextField_Text_TextField_Text_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/Cmp_Fields_Quizz.dart';
import 'dart:math';


class cl_MainBgQuizz extends StatelessWidget{
  int MainBgQuizzRan=new Random().nextInt(9);

  var Text_NullController= new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Generate Quizzes",
      debugShowCheckedModeBanner:false,
      home:

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
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: MainBg_Q1_T1_Answer,
        CorrectAns2: MainBg_Q1_T2_Answer,
        CorrectAns3: MainBg_Q1_T3_Answer,
        CorrectAns4: MainBg_Q1_T4_Answer,
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
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
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: MainBg_Q2_T1_Answer,
        CorrectAns2: MainBg_Q2_T2_Answer,
        CorrectAns3: MainBg_Q2_T3_Answer,
        CorrectAns4: MainBg_Q2_T4_Answer,
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
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
      )


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

  String MainBg_Q1_TxtSol =
      "Container(\n"
      " width:double.infinity,\n"
      " height:double.infinity,\n"
      " color:Colors.red,\n"
      ")";

  String MainBg_Q1_Question = "Fill The Missing Fields To Set Body Having Container Full Width And Height To Red";

  static var MainBg_Q1_T1_Controller = new TextEditingController();
  static var MainBg_Q1_T1_Answer = "colors";

  static var MainBg_Q1_T2_Controller = new TextEditingController();
  static var MainBg_Q1_T2_Answer = "red";

  static var MainBg_Q1_T3_Controller = new TextEditingController();
  static var MainBg_Q1_T3_Answer = "double";

  static var MainBg_Q1_T4_Controller = new TextEditingController();
  static var MainBg_Q1_T4_Answer = "infinity";


  List MainBg_Q1_list = [
    Text(
      "import 'package:flutter/material.dart';\n\n"

          "void main() {\n"
          "  runApp(Quizz());\n"
          "}\n\n"

          "class Quizz extends StatelessWidget{\n"
          "  @override\n"
          "  Widget build(BuildContext context) {\n"
          "    return MaterialApp(\n"
          "      home:Scaffold(\n"
          "       appBar:AppBar(\n"
          "        title:Text('Red Main Bg'),\n"
          "       ),"
          "       body:\n"
          "        Container(\n",
    ),
    CmpQuizz_Text_TextField_Text_TextField_Text(
      Spacing:60.0,
      Text1:"Color:",
      TC1_Controller:MainBg_Q1_T1_Controller,
      TC1_Width:MainBg_Q1_T1_Answer.length*10.0,
      TC1_MaxLength:MainBg_Q1_T1_Answer.length,
      Text2:".",
      TC2_Controller:MainBg_Q1_T2_Controller,
      TC2_Width:MainBg_Q1_T2_Answer.length*10.0,
      TC2_MaxLength:MainBg_Q1_T2_Answer.length,
      Text3:",",
    ),
    CmpQuizz_Text_TextField_Text_TextField_Text(
      Spacing:60.0,
      Text1:"width:",
      TC1_Controller:MainBg_Q1_T3_Controller,
      TC1_Width:MainBg_Q1_T3_Answer.length*10.0,
      TC1_MaxLength:MainBg_Q1_T3_Answer.length,
      Text2:".",
      TC2_Controller:MainBg_Q1_T3_Controller,
      TC2_Width:MainBg_Q1_T3_Answer.length*10.0,
      TC2_MaxLength:MainBg_Q1_T3_Answer.length,
      Text3:",",
    ),
    Text(
          "\t             ),\n"
          "\t         ),\n"
          "\t       );\n"
          "\t      }\n"
          "\t   }\n",
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

  String MainBg_Q2_TxtSol =
      "Container(\n"
      " width:double.infinity,\n"
      " height:double.infinity,\n"
      " color:Colors.yellow,\n"
      ")";

  String MainBg_Q2_Question = "Fill The Missing Fields To Set Body Having Container Full Width And Height To Yellow";

  static var MainBg_Q2_T1_Controller = new TextEditingController();
  static var MainBg_Q2_T1_Answer = "colors";

  static var MainBg_Q2_T2_Controller = new TextEditingController();
  static var MainBg_Q2_T2_Answer = "yellow";

  static var MainBg_Q2_T3_Controller = new TextEditingController();
  static var MainBg_Q2_T3_Answer = "double";

  static var MainBg_Q2_T4_Controller = new TextEditingController();
  static var MainBg_Q2_T4_Answer = "infinity";


  List MainBg_Q2_list = [
    Text(
      "import 'package:flutter/material.dart';\n\n"

          "void main() {\n"
          "  runApp(Quizz());\n"
          "}\n\n"

          "class Quizz extends StatelessWidget{\n"
          "  @override\n"
          "  Widget build(BuildContext context) {\n"
          "    return MaterialApp(\n"
          "      home:Scaffold(\n"
          "       appBar:AppBar(\n"
          "        title:Text('Yellow Main Bg'),\n"
          "       ),"
          "       body:\n"
          "        Container(\n",
    ),
    CmpQuizz_Text_TextField_Text_TextField_Text(
      Spacing:60.0,
      Text1:"Color:",
      TC1_Controller:MainBg_Q2_T1_Controller,
      TC1_Width:MainBg_Q2_T1_Answer.length*10.0,
      TC1_MaxLength:MainBg_Q2_T1_Answer.length,
      Text2:".",
      TC2_Controller:MainBg_Q2_T2_Controller,
      TC2_Width:MainBg_Q2_T2_Answer.length*10.0,
      TC2_MaxLength:MainBg_Q2_T2_Answer.length,
      Text3:",",
    ),
    CmpQuizz_Text_TextField_Text_TextField_Text(
      Spacing:60.0,
      Text1:"width:",
      TC1_Controller:MainBg_Q2_T3_Controller,
      TC1_Width:MainBg_Q2_T3_Answer.length*10.0,
      TC1_MaxLength:MainBg_Q2_T3_Answer.length,
      Text2:".",
      TC2_Controller:MainBg_Q2_T3_Controller,
      TC2_Width:MainBg_Q2_T3_Answer.length*10.0,
      TC2_MaxLength:MainBg_Q2_T3_Answer.length,
      Text3:",",
    ),
    Text(
      "\t             ),\n"
          "\t         ),\n"
          "\t       );\n"
          "\t      }\n"
          "\t   }\n",
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


  String MainBg_Q3_TxtSol = "theme:ThemeData.light()\n";

  String MainBg_Q3_Question = "Fill The Missing Fields To Grant Light Theme To The Main Background";

  static var MainBg_Q3_T1_Controller = new TextEditingController();
  static var MainBg_Q3_T1_Answer = "theme";

  static var MainBg_Q3_T2_Controller = new TextEditingController();
  static var MainBg_Q3_T2_Answer = "ThemeData";

  static var MainBg_Q3_T3_Controller = new TextEditingController();
  static var MainBg_Q3_T3_Answer = "light()";


  List MainBg_Q3_list = [
    Text(
      "import 'package:flutter/material.dart';\n\n"

          "void main() {\n"
          "  runApp(Quizz());\n"
          "}\n\n"

          "class Quizz extends StatelessWidget{\n"
          "  @override\n"
          "  Widget build(BuildContext context) {\n"
          "    return MaterialApp(\n"
    ),
    CmpQuizz_TextField_Text_TextField_Text_TextField_Text(
      Spacing:60.0,
      TC1_Controller:MainBg_Q3_T1_Controller,
      TC1_Width:MainBg_Q3_T1_Answer.length*10.0,
      TC1_MaxLength:MainBg_Q3_T1_Answer.length,
      Text1:":",
      TC2_Controller:MainBg_Q3_T2_Controller,
      TC2_Width:MainBg_Q3_T2_Answer.length*10.0,
      TC2_MaxLength:MainBg_Q3_T2_Answer.length,
      Text2:".",
      TC3_Controller:MainBg_Q3_T3_Controller,
      TC3_Width:MainBg_Q3_T3_Answer.length*10.0,
      TC3_MaxLength:MainBg_Q3_T3_Answer.length,
      Text3:",",
    ),
    Text(
          "      home:Scaffold(\n"
          "       appBar:AppBar(\n"
          "        title:Text('Yellow Main Bg'),\n"
          "       ),"
          "       body:\n"
          "        Container(\n"
          "         child:\n"
          "          Text('Light Theme'),\n"
          "        ),\n"
          "       ),\n"
          "      );\n"
          "    }\n"
          " }\n",
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


  String MainBg_Q4_TxtSol = "theme:ThemeData.dark()\n";

  String MainBg_Q4_Question = "Fill The Missing Fields To Grant Dark Theme To The Main Background";

  static var MainBg_Q4_T1_Controller = new TextEditingController();
  static var MainBg_Q4_T1_Answer = "theme";

  static var MainBg_Q4_T2_Controller = new TextEditingController();
  static var MainBg_Q4_T2_Answer = "ThemeData";

  static var MainBg_Q4_T3_Controller = new TextEditingController();
  static var MainBg_Q4_T3_Answer = "dark()";


  List MainBg_Q4_list = [
    Text(
        "import 'package:flutter/material.dart';\n\n"

            "void main() {\n"
            "  runApp(Quizz());\n"
            "}\n\n"

            "class Quizz extends StatelessWidget{\n"
            "  @override\n"
            "  Widget build(BuildContext context) {\n"
            "    return MaterialApp(\n"
    ),
    CmpQuizz_TextField_Text_TextField_Text_TextField_Text(
      Spacing:60.0,
      TC1_Controller:MainBg_Q4_T1_Controller,
      TC1_Width:MainBg_Q4_T1_Answer.length*10.0,
      TC1_MaxLength:MainBg_Q4_T1_Answer.length,
      Text1:":",
      TC2_Controller:MainBg_Q4_T2_Controller,
      TC2_Width:MainBg_Q4_T2_Answer.length*10.0,
      TC2_MaxLength:MainBg_Q4_T2_Answer.length,
      Text2:".",
      TC3_Controller:MainBg_Q4_T3_Controller,
      TC3_Width:MainBg_Q4_T3_Answer.length*10.0,
      TC3_MaxLength:MainBg_Q4_T3_Answer.length,
      Text3:",",
    ),
    Text(
      "      home:Scaffold(\n"
          "       appBar:AppBar(\n"
          "        title:Text('Yellow Main Bg'),\n"
          "       ),\n"
          "       body:\n"
          "        Container(\n"
          "         child:\n"
          "          Text('Light Theme'),\n"
          "        ),\n"
          "       ),\n"
          "      );\n"
          "    }\n"
          " }\n",
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



}












