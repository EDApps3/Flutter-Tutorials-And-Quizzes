import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/5_TextField_Text_TextField_Text.dart';



String Keywords_Q1_TxtSol ="resizeToAvoidBottomPadding:\n  false\n";

String Keywords_Q1_Question = "Fill The Missing Fields To Set Body Content Not Resizing When Keyboard Appear";

var Keywords_Q1_T1_Controller = new TextEditingController();
var Keywords_Q1_T1_Answer = "resizeToAvoidBottomPadding";

var Keywords_Q1_T2_Controller = new TextEditingController();
var Keywords_Q1_T2_Answer = "false";


  List Keywords_Q1_list = [
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
    CmpQuizz_TextField_Text_TextField_Text(
      Spacing:62.0,
      TC1_Controller:Keywords_Q1_T1_Controller,
      TC1_Width     :Keywords_Q1_T1_Answer.length*10.0,
      TC1_MaxLength :Keywords_Q1_T1_Answer.length,
      Text1:":",
      TC2_Controller:Keywords_Q1_T2_Controller,
      TC2_Width     :Keywords_Q1_T2_Answer.length*10.0,
      TC2_MaxLength :Keywords_Q1_T2_Answer.length,
      Text2:",",
    ),
    Text(
        "                     body:Center(\n"
        "                      child:\n"
        "                       TextField()\n"
        "                      ),\n"
        "                 ),\n"
        "         );\n"
        "   }\n"
        " }\n"
    ),
  ];

