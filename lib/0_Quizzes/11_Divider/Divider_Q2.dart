import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/1_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/5_TextField_Text_TextField_Text.dart';

String Divider_Q2_TxtSol =
    "Divider(\n"
    " color:Colors.blue,\n"
    ")";

String Divider_Q2_Question = "Fill The Missing Fields To Show A Centered Blue Divider";

var Divider_Q2_T1_Controller = new TextEditingController();
var Divider_Q2_T1_Answer = "Divider";

var Divider_Q2_T2_Controller = new TextEditingController();
var Divider_Q2_T2_Answer = "color";

var Divider_Q2_T3_Controller = new TextEditingController();
var Divider_Q2_T3_Answer = "blue";


List Divider_Q2_list = [
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
        "          child:\n"
  ),
  CmpQuizz_TextField_Text(
    Spacing: 76,
    TC1_Controller: Divider_Q2_T1_Controller,
    TC1_Width     : Divider_Q2_T1_Answer.length * 10.0,
    TC1_MaxLength : Divider_Q2_T1_Answer.length,
    Text1:"(",
  ),
  CmpQuizz_TextField_Text_TextField_Text(
    Spacing: 80,
    TC1_Controller: Divider_Q2_T2_Controller,
    TC1_Width     : Divider_Q2_T2_Answer.length * 10.0,
    TC1_MaxLength : Divider_Q2_T2_Answer.length,
    Text1:":Colors.",
    TC2_Controller: Divider_Q2_T3_Controller,
    TC2_Width     : Divider_Q2_T3_Answer.length * 10.0,
    TC2_MaxLength : Divider_Q2_T3_Answer.length,
    Text2:",",
  ),
  Text(
        "          ),\n"
        "         ),\n"
        "        ),\n"
        "    );\n"
        "  }\n"
        "}",
  )


];
