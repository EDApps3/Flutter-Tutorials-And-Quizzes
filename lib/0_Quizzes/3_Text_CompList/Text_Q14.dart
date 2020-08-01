import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/1_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/4_TextField_Text_TextField_Text_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/5_TextField_Text_TextField_Text.dart';


  String Text_Q14_Question =
   "Fill The Missing Fields To Apply Shadow On Text(SHADOW):\n"
   "-Blur Radius 7.0\n"
   "-Shadow Color Blue\n"
   "-Offset X And Y Set To 5.0";

  String Text_Q14_TxtSol =
   "Text(\n"
   " 'SHADOW',\n"
   "  style: TextStyle(\n"
   "  shadows: [\n"
   "   Shadow(\n"
   "    blurRadius:7.0,\n"
   "    color: Colors.blue,\n"
   "    offset: Offset(5.0,5.0),\n"
   "   ),\n"
   "  ],\n"
   " ),\n"
   ")\n";


  var Text_Q14_T1_Controller = new TextEditingController();
  var Text_Q14_T1_Answer = "shadows";

  var Text_Q14_T2_Controller = new TextEditingController();
  var Text_Q14_T2_Answer = "blurRadius";

  var Text_Q14_T3_Controller = new TextEditingController();
  var Text_Q14_T3_Answer = "color";

  var Text_Q14_T4_Controller = new TextEditingController();
  var Text_Q14_T4_Answer = "Colors";

  var Text_Q14_T5_Controller = new TextEditingController();
  var Text_Q14_T5_Answer = "blue";

  var Text_Q14_T6_Controller = new TextEditingController();
  var Text_Q14_T6_Answer = "offset";

  var Text_Q14_T7_Controller = new TextEditingController();
  var Text_Q14_T7_Answer = "Offset(5.0,5.0)";

  List Text_Q14_list = [
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
          "          'SHADOW',\n"
          "          style:TextStyle(\n"
    ),
    CmpQuizz_TextField_Text(
      Spacing:59,
      TC1_Controller:Text_Q14_T1_Controller,
      TC1_MaxLength :Text_Q14_T1_Answer.length,
      TC1_Width     :Text_Q14_T1_Answer.length*10.0,
      Text1:":[" ,
    ),

    CmpQuizz_TextField_Text(
      Spacing:64,
      TC1_Controller:Text_Q14_T2_Controller,
      TC1_MaxLength :Text_Q14_T2_Answer.length,
      TC1_Width     :Text_Q14_T2_Answer.length*10.0,
      Text1:":7.0" ,
    ),


    CmpQuizz_TextField_Text_TextField_Text_TextField_Text(
      Spacing:64.0,
      TC1_Controller:Text_Q14_T3_Controller,
      TC1_Width:Text_Q14_T3_Answer.length*10.0,
      TC1_MaxLength:Text_Q14_T3_Answer.length,
      Text1:":",
      TC2_Controller:Text_Q14_T4_Controller,
      TC2_Width:Text_Q14_T4_Answer.length*10.0,
      TC2_MaxLength:Text_Q14_T4_Answer.length,
      Text2:".",
      TC3_Controller:Text_Q14_T5_Controller,
      TC3_Width:Text_Q14_T5_Answer.length*10.0,
      TC3_MaxLength:Text_Q14_T5_Answer.length,
      Text3:",",
    ),

    CmpQuizz_TextField_Text_TextField_Text(
      Spacing:64.0,
      TC1_Controller: Text_Q14_T6_Controller,
      TC1_Width     : Text_Q14_T6_Answer.length*10.0,
      TC1_MaxLength : Text_Q14_T6_Answer.length,
      Text1:":",
      TC2_Controller: Text_Q14_T7_Controller,
      TC2_Width     : Text_Q14_T7_Answer.length*10.0,
      TC2_MaxLength : Text_Q14_T7_Answer.length,
      Text2:",",
    ),


    Text(
          "                 ],\n"
          "                ),\n"
          "                ),\n"
          "\t             ),\n"
          "\t         ),\n"
          "\t       );\n"
          "\t      }\n"
          "\t   }\n",
    ),
  ];


