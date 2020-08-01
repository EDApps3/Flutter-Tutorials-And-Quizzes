import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/5_TextField_Text_TextField_Text.dart';

  String Text_Q8_TxtSol ="fontSize:40";

  String Text_Q8_Question = "Fill The Missing Fields To Turn Text(F40) Size To 40";

  var Text_Q8_T1_Controller = new TextEditingController();
  var Text_Q8_T1_Answer = "fontSize";

  var Text_Q8_T2_Controller = new TextEditingController();
  var Text_Q8_T2_Answer = "40";


  List Text_Q8_list = [
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
          "          'F40',\n"
          "          style: TextStyle(",
    ),
    CmpQuizz_TextField_Text_TextField_Text(
      Spacing:64.0,
      TC1_Controller:Text_Q8_T1_Controller,
      TC1_Width:Text_Q8_T1_Answer.length*10.0,
      TC1_MaxLength:Text_Q8_T1_Answer.length,
      Text1:":",
      TC2_Controller:Text_Q8_T2_Controller,
      TC2_Width:Text_Q8_T2_Answer.length*10.0,
      TC2_MaxLength:Text_Q8_T2_Answer.length,
      Text2:",",
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

