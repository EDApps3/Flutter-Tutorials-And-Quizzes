import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/4_TextField_Text_TextField_Text_TextField_Text.dart';


  String Text_Q6_TxtSol ="decoration:\n  TextDecoration.underline";

  String Text_Q6_Question = "Fill The Missing Field To Turn Text(Bye) Underlined ";

  var Text_Q6_T1_Controller = new TextEditingController();
  var Text_Q6_T1_Answer = "decoration";

  var Text_Q6_T2_Controller = new TextEditingController();
  var Text_Q6_T2_Answer = "TextDecoration";

  var Text_Q6_T3_Controller = new TextEditingController();
  var Text_Q6_T3_Answer = "underline";

  List Text_Q6_list = [
    Text (
      "import 'package:flutter/material.dart';\n\n"

          "void main() {\n"
          "  runApp(Quizz());\n"
          "}\n\n"

          "class Quizz extends StatelessWidget{\n"
          "  @override\n"
          "  Widget build(BuildContext context) {\n"
          "   return MaterialApp(\n"
          "     home:\n"
          "      Scaffold(\n"
          "       body:Center(\n"
          "        child:\n"
          "         Text(\n"
          "          'Bye',\n"
          "          style: TextStyle(",
    ),
    CmpQuizz_TextField_Text_TextField_Text_TextField_Text(
      Spacing:64.0,
      TC1_Controller:Text_Q6_T1_Controller,
      TC1_Width:Text_Q6_T1_Answer.length*10.0,
      TC1_MaxLength:Text_Q6_T1_Answer.length,
      Text1:":",
      TC2_Controller:Text_Q6_T2_Controller,
      TC2_Width:Text_Q6_T2_Answer.length*10.0,
      TC2_MaxLength:Text_Q6_T2_Answer.length,
      Text2:".",
      TC3_Controller:Text_Q6_T3_Controller,
      TC3_Width:Text_Q6_T3_Answer.length*10.0,
      TC3_MaxLength:Text_Q6_T3_Answer.length,
      Text3:",",
    ),
    Text(
      "                 ),\n"
          "                ),\n"
          "\t             ),\n"
          "\t         ),\n"
          "\t       );\n"
          "\t      }\n"
          "\t   }\n",
    ),
  ];


