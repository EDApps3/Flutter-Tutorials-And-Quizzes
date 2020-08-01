import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/4_TextField_Text_TextField_Text_TextField_Text.dart';


  String Text_Q10_TxtSol ="decoration:\n  TextDecoration.overline";

  String Text_Q10_Question = "Fill The Missing Field To Turn Text(OVERLINE) Overlined";

  var Text_Q10_T1_Controller = new TextEditingController();
  var Text_Q10_T1_Answer = "decoration";

  var Text_Q10_T2_Controller = new TextEditingController();
  var Text_Q10_T2_Answer = "TextDecoration";

  var Text_Q10_T3_Controller = new TextEditingController();
  var Text_Q10_T3_Answer = "overline";

  List Text_Q10_list = [
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
          "          'OVERLINE',\n"
          "          style: TextStyle(",
    ),
    CmpQuizz_TextField_Text_TextField_Text_TextField_Text(
      Spacing:64.0,
      TC1_Controller:Text_Q10_T1_Controller,
      TC1_Width:Text_Q10_T1_Answer.length*10.0,
      TC1_MaxLength:Text_Q10_T1_Answer.length,
      Text1:":",
      TC2_Controller:Text_Q10_T2_Controller,
      TC2_Width:Text_Q10_T2_Answer.length*10.0,
      TC2_MaxLength:Text_Q10_T2_Answer.length,
      Text2:".",
      TC3_Controller:Text_Q10_T3_Controller,
      TC3_Width:Text_Q10_T3_Answer.length*10.0,
      TC3_MaxLength:Text_Q10_T3_Answer.length,
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


