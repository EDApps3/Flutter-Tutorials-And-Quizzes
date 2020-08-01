import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/2_Text_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/5_TextField_Text_TextField_Text.dart';
  
  String Image_Q1_TxtSol =
      "Image.asset(\n"
      "  'Images/Welcome.png',\n"
      ")\n";

  String Image_Q1_Question = "Fill The Missing Fields To Load An png Image (Welcome.png) As Name In The Center Of The Body Loaded From Asset";

  var Image_Q1_T1_Controller = new TextEditingController();
  var Image_Q1_T1_Answer = "Image";

  var Image_Q1_T2_Controller = new TextEditingController();
  var Image_Q1_T2_Answer = "asset";

  var Image_Q1_T3_Controller = new TextEditingController();
  var Image_Q1_T3_Answer = "Welcome.png";

  List Image_Q1_list = [
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
    ),
    CmpQuizz_TextField_Text_TextField_Text(
      Spacing:64.0,
      TC1_Controller:Image_Q1_T1_Controller,
      TC1_Width:Image_Q1_T1_Answer.length*10.0,
      TC1_MaxLength:Image_Q1_T1_Answer.length,
      Text1:".",
      TC2_Controller:Image_Q1_T2_Controller,
      TC2_Width:Image_Q1_T2_Answer.length*10.0,
      TC2_MaxLength:Image_Q1_T2_Answer.length,
      Text2:"(",
    ),
    CmpQuizz_Text_TextField_Text (
        Spacing: 67.0,
        Text1: "'Images/",
        TC1_Width: Image_Q1_T3_Answer.length * 10.0,
        TC1_Controller: Image_Q1_T3_Controller,
        TC1_MaxLength: Image_Q1_T3_Answer.length,
        Text2: "',"
    ),
    Text(
          "\t             ),\n"
          "\t           ),\n"
          "\t         ),\n"
          "\t       );\n"
          "\t      }\n"
          "\t   }\n",
    ),
  ];
