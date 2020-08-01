import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/3_Text_TextField_Text_TextField_Text.dart';




  String Text_Q2_TxtSol ="textDirection:\n  TextDirection.rtl";

  String Text_Q2_Question = "Fill The Missing Fields To Flows Text(AAA) From Right To Left";

  var Text_Q2_T1_Controller = new TextEditingController();
  var Text_Q2_T1_Answer = "TextDirection";

  var Text_Q2_T2_Controller = new TextEditingController();
  var Text_Q2_T2_Answer = "rtl";


  List Text_Q2_list = [
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
          "          'AAA',\n",
    ),
    CmpQuizz_Text_TextField_Text_TextField_Text(
      Spacing:60.0,
      Text1:"textDirection:",
      TC1_Controller:Text_Q2_T1_Controller,
      TC1_Width:Text_Q2_T1_Answer.length*10.0,
      TC1_MaxLength:Text_Q2_T1_Answer.length,
      Text2:".",
      TC2_Controller:Text_Q2_T2_Controller,
      TC2_Width:Text_Q2_T2_Answer.length*10.0,
      TC2_MaxLength:Text_Q2_T2_Answer.length,
      Text3:",",
    ),
    Text(
      "                     ),\n"
          "\t             ),\n"
          "\t         ),\n"
          "\t       );\n"
          "\t      }\n"
          "\t   }\n",
    ),

  ];
