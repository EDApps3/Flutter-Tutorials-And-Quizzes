import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/1_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/2_Text_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/5_TextField_Text_TextField_Text.dart';

String Buttons_Q3_TxtSol =
    "RaisedButton(\n"
    " shape:RoundedRectangleBorder(\n"
    "  borderRadius:BorderRadius.circular(30.0),\n"
    "  ),\n"
    "  child:Text(\n"
    "    'RoundedBtn',\n"
    "  ),\n"
    "),";

String Buttons_Q3_Question = "Fill The Missing Fields To Create A Rounded Circular Raised Button By 30.0";

var Buttons_Q3_T1_Controller = new TextEditingController();
var Buttons_Q3_T1_Answer = "shape";

var Buttons_Q3_T2_Controller = new TextEditingController();
var Buttons_Q3_T2_Answer = "borderRadius";

var Buttons_Q3_T3_Controller = new TextEditingController();
var Buttons_Q3_T3_Answer = "circular";




List Buttons_Q3_list = [
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
          "              RaisedButton(\n"
  ),
  CmpQuizz_TextField_Text(
      Spacing: 76,
      TC1_Controller:Buttons_Q3_T1_Controller,
      TC1_Width: Buttons_Q3_T1_Answer.length * 10.0,
      TC1_MaxLength: Buttons_Q3_T1_Answer.length,
      Text1:":RoundedRectangleBorder("
  ),
  CmpQuizz_TextField_Text_TextField_Text(
      Spacing: 82,
      TC1_Controller:Buttons_Q3_T2_Controller,
      TC1_Width: Buttons_Q3_T2_Answer.length * 10.0,
      TC1_MaxLength: Buttons_Q3_T2_Answer.length,
      Text1:":BorderRadius.",
      TC2_Controller:Buttons_Q3_T3_Controller,
      TC2_Width: Buttons_Q3_T3_Answer.length * 10.0,
      TC2_MaxLength: Buttons_Q3_T3_Answer.length,
      Text2:"(30.0),",
  ),
  Text(
        "     ),\n"
        "      child:Text(\n"
        "      'RoundedBtn',\n"
        "      ),\n"
        "     ),\n"
        "    ),\n"
        "   ),\n"
        "  );\n"
        " }\n"
        "}",
  ),


];
