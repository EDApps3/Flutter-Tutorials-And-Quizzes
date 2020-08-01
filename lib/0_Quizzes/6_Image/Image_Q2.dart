import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/2_Text_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/5_TextField_Text_TextField_Text.dart';

  
  String Image_Q2_TxtSol =
      "Image.asset(\n"
      "  'Images/Welcome.png',\n"
      "   width:100,\n"
      ")\n";

  String Image_Q2_Question = "Fill The Missing Fields To Change Image Width To 100";

  var Image_Q2_T1_Controller = new TextEditingController();
  var Image_Q2_T1_Answer = "width";

  var Image_Q2_T2_Controller = new TextEditingController();
  var Image_Q2_T2_Answer = "100";


  List Image_Q2_list = [
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
            "         Image.asset(\n"
            "          'Welcome.png',\n"
    ),
    CmpQuizz_TextField_Text_TextField_Text(
      Spacing:64.0,
      TC1_Controller:Image_Q2_T1_Controller,
      TC1_Width: Image_Q2_T1_Answer.length * 10.0,
      TC1_MaxLength: Image_Q2_T1_Answer.length,
      TC2_Controller:Image_Q2_T2_Controller,
      Text1:":",
      TC2_Width: Image_Q2_T2_Answer.length * 10.0,
      TC2_MaxLength: Image_Q2_T2_Answer.length,
      Text2:",",
    ),
    Text(
          "\t           ),\n"
          "\t          ),\n"
          "\t         ),\n"
          "\t       );\n"
          "\t      }\n"
          "\t   }\n",
    ),
  ];
