import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/1_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/2_Text_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/4_TextField_Text_TextField_Text_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/5_TextField_Text_TextField_Text.dart';

String Divider_Q1_TxtSol =
    "Divider()";

String Divider_Q1_Question = "Fill The Missing Fields To Show A Centered Divider";

var Divider_Q1_T1_Controller = new TextEditingController();
var Divider_Q1_T1_Answer = "Divider()";


List Divider_Q1_list = [
  Text(
        "import 'package:flutter/material.dart';\n\n"

        "void main() {\n"
        "  runApp(Quizz());\n"
        "}\n\n"

        "class Quizz extends StatelessWidget{\n"
        "  @override\n"
        "  Widget build(BuildContext context) {\n"
        "    return MaterialApp(\n"
        "     debugShowCheckedModeBanner:false,\n"
        "      title:'Quizz',\n"
        "        home:Scaffold(\n"
        "         appBar:AppBar(\n"
        "            title:Text('Divider Quizz'),\n"
        "         ),\n"
        "         body:Center(\n"
  ),
  CmpQuizz_Text_TextField_Text(
    Spacing: 76,
    Text1:"child:",
    TC1_Controller: Divider_Q1_T1_Controller,
    TC1_Width     : Divider_Q1_T1_Answer.length * 10.0,
    TC1_MaxLength : Divider_Q1_T1_Answer.length,
    Text2:",",
  ),
  Text(
        "         ),\n"
        "        ),\n"
        "    );\n"
        "  }\n"
        "}",
  )


];
