import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/1_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/4_TextField_Text_TextField_Text_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/5_TextField_Text_TextField_Text.dart';


  String Text_Q15_Question =
   "Fill The Missing Fields To Apply Font Family Raleway On Text(STYLE):\n";

  String Text_Q15_TxtSol =
   "Text(\n"
   " 'STYLE',\n"
   "  style: TextStyle(\n"
   "   fontFamily:'Raleway',\n"
   " ),\n"
   ")\n";


  var Text_Q15_T1_Controller = new TextEditingController();
  var Text_Q15_T1_Answer = "style";

  var Text_Q15_T2_Controller = new TextEditingController();
  var Text_Q15_T2_Answer = "TextStyle";

  var Text_Q15_T3_Controller = new TextEditingController();
  var Text_Q15_T3_Answer = "fontFamily";

 
  List Text_Q15_list = [
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
          "          'STYLE',\n"
    ),
    
    CmpQuizz_TextField_Text_TextField_Text(
      Spacing:59.0,
      TC1_Controller: Text_Q15_T1_Controller,
      TC1_Width     : Text_Q15_T1_Answer.length*10.0,
      TC1_MaxLength : Text_Q15_T1_Answer.length,
      Text1:":",
      TC2_Controller: Text_Q15_T2_Controller,
      TC2_Width     : Text_Q15_T2_Answer.length*10.0,
      TC2_MaxLength : Text_Q15_T2_Answer.length,
      Text2:"(",
    ),

    CmpQuizz_TextField_Text(
      Spacing:64.0,
      TC1_Controller: Text_Q15_T3_Controller,
      TC1_Width     : Text_Q15_T3_Answer.length*10.0,
      TC1_MaxLength : Text_Q15_T3_Answer.length,
      Text1:":'Raleway',",
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


