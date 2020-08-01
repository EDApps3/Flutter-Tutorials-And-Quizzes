import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/1_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/4_TextField_Text_TextField_Text_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/5_TextField_Text_TextField_Text.dart';


  String Text_Q16_Question =
   "Fill The Missing Fields To Apply Orange BackgroundColor On Text(TXT_ORANGE_BG):\n";

  String Text_Q16_TxtSol =
   "Text(\n"
   " 'TXT_ORANGE_BG',\n"
   "  style: TextStyle(\n"
   "   backgroundColor:Colors.orange,\n"
   " ),\n"
   ")\n";


  var Text_Q16_T1_Controller = new TextEditingController();
  var Text_Q16_T1_Answer = "style";

  var Text_Q16_T2_Controller = new TextEditingController();
  var Text_Q16_T2_Answer = "TextStyle";

  var Text_Q16_T3_Controller = new TextEditingController();
  var Text_Q16_T3_Answer = "backgroundColor";

  var Text_Q16_T4_Controller = new TextEditingController();
  var Text_Q16_T4_Answer = "Colors";

  var Text_Q16_T5_Controller = new TextEditingController();
  var Text_Q16_T5_Answer = "orange";

 
  List Text_Q16_list = [
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
          "          'TXT_ORANGE_BG',\n"
    ),
    
    CmpQuizz_TextField_Text_TextField_Text(
      Spacing:59.0,
      TC1_Controller: Text_Q16_T1_Controller,
      TC1_Width     : Text_Q16_T1_Answer.length*10.0,
      TC1_MaxLength : Text_Q16_T1_Answer.length,
      Text1:":",
      TC2_Controller: Text_Q16_T2_Controller,
      TC2_Width     : Text_Q16_T2_Answer.length*10.0,
      TC2_MaxLength : Text_Q16_T2_Answer.length,
      Text2:"(",
    ),

    CmpQuizz_TextField_Text_TextField_Text_TextField_Text(
      Spacing:64.0,
      TC1_Controller: Text_Q16_T3_Controller,
      TC1_Width     : Text_Q16_T3_Answer.length*10.0,
      TC1_MaxLength : Text_Q16_T3_Answer.length,
      Text1:":",
      TC2_Controller: Text_Q16_T4_Controller,
      TC2_Width     : Text_Q16_T4_Answer.length*10.0,
      TC2_MaxLength : Text_Q16_T4_Answer.length,
      Text2:".",
      TC3_Controller: Text_Q16_T5_Controller,
      TC3_Width     : Text_Q16_T5_Answer.length*10.0,
      TC3_MaxLength : Text_Q16_T5_Answer.length,
      Text3:",",
    ),

    Text(
          "                ),\n"
          "                ),\n"
          "\t             ),\n"
          "\t         ),\n"
          "\t       );\n"
          "\t      }\n"
          "\t   }\n",
    ),
  ];


