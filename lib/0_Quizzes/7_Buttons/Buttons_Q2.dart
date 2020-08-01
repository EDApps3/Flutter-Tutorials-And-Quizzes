import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/1_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/2_Text_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/5_TextField_Text_TextField_Text.dart';

String Buttons_Q2_TxtSol =
    "SizedBox(\n"
    " width:double.infinity,\n"
    "  child:\n"
    "   RaisedButton(\n"
    "    child:Text('FullWidthButton'),\n"
    "   ),\n"
    "),";

String Buttons_Q2_Question = "Fill The Missing Fields To Create A Full Width Raised Button Having As Value FullWidthButton";

var Buttons_Q2_T1_Controller = new TextEditingController();
var Buttons_Q2_T1_Answer = "width";

var Buttons_Q2_T2_Controller = new TextEditingController();
var Buttons_Q2_T2_Answer = "RaisedButton";

var Buttons_Q2_T3_Controller = new TextEditingController();
var Buttons_Q2_T3_Answer = "Text";




List Buttons_Q2_list = [
  Text(
    "import 'package:flutter/material.dart';\n\n"

        "void main() {\n"
        "  runApp(Quizz());\n"
        "}\n\n"

        "class Quizz extends StatelessWidget{\n"
        "  @override\n"
        "  Widget build(BuildContext context) {\n"
        "        return MaterialApp(\n"
        "         debugShowCheckedModeBanner:false,\n"
        "         title:'Quizz',\n"
        "         home:\n"
        "          new Scaffold(\n"
        "           appBar:AppBar(\n"
        "            title:Text('Button Quizz'),\n"
        "           ),\n"
        "           body:\n"
        "            Center(\n"
        "             child:\n"
        "              SizedBox(\n",
  ),
  CmpQuizz_TextField_Text(
      Spacing: 76,
      TC1_Controller:Buttons_Q2_T1_Controller,
      TC1_Width: Buttons_Q2_T1_Answer.length * 10.0,
      TC1_MaxLength: Buttons_Q2_T1_Answer.length,
      Text1:":double.infinity,"
  ),
  CmpQuizz_Text_TextField_Text(
      Spacing: 82,
      Text1:"child:",
      TC1_Controller:Buttons_Q2_T2_Controller,
      TC1_Width: Buttons_Q2_T2_Answer.length * 10.0,
      TC1_MaxLength: Buttons_Q2_T2_Answer.length,
      Text2:"("
  ),
  CmpQuizz_Text_TextField_Text(
      Spacing: 87,
      Text1:"child:",
      TC1_Controller:Buttons_Q2_T3_Controller,
      TC1_Width: Buttons_Q2_T3_Answer.length * 10.0,
      TC1_MaxLength: Buttons_Q2_T3_Answer.length,
      Text2:"('FullWidthButton')"
  ),
  Text(
        "         ),\n"
        "        ),\n"
        "       ),\n"
        "      ),\n"
        "    );\n"
        "  }\n"
        "}",
  ),

];
