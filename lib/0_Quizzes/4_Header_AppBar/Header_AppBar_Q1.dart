import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/1_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/2_Text_TextField_Text.dart';



String AppBar_Q1_TxtSol =
      "appBar:AppBar(\n"
      " title:Text('Welcome'),\n"
      "),";

  String AppBar_Q1_Question = "Fill The Missing Field To Set AppBar Title To Welcome";

  var AppBar_Q1_T1_Controller = new TextEditingController();
  var AppBar_Q1_T1_Answer = "AppBar";

  var AppBar_Q1_T2_Controller = new TextEditingController();
  var AppBar_Q1_T2_Answer = "title";


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

