import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/1_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/2_Text_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/5_TextField_Text_TextField_Text.dart';

String Navigation_Q1_TxtSol =
    "Navigator.push(\n"
    " context,\n"
    " MaterialPageRoute(\n"
    "  builder:(context)=>Menu()\n"
    " ),\n"
    ");\n";

String Navigation_Q1_Question = "Fill The Missing Fields To Navigate To Menu() Using push When Button Is Clicked";

var Navigation_Q1_T1_Controller = new TextEditingController();
var Navigation_Q1_T1_Answer = "push";

var Navigation_Q1_T2_Controller = new TextEditingController();
var Navigation_Q1_T2_Answer = "context";

var Navigation_Q1_T3_Controller = new TextEditingController();
var Navigation_Q1_T3_Answer = "MaterialPageRoute";


List Navigation_Q1_list = [
 Text(
                      "import 'package:flutter/material.dart';\n\n"

                          "void main() {\n"
                          "  runApp(Quizz());\n"
                          "}\n\n"

                          "class Quizz extends StatelessWidget{\n"
                          "  @override\n"
                          "  Widget build(BuildContext context) {\n"
                          "   return MaterialApp(\n"
                          "    debugShowCheckedModeBanner:false,\n"
                          "     title:'Quizz',\n"
                          "     home:\n"
                          "      Scaffold(\n"
                          "       appBar:AppBar(\n"
                          "         title:Text('Navigation'),\n"
                          "        ),\n"
                          "      body:\n"
                          "       Center(\n"
                          "        child:\n"
                          "         RaisedButton(\n"
                          "          child:Text('Go'),\n"
                          "          onPressed:(){",
                    ),
  CmpQuizz_Text_TextField_Text(
    Spacing: 76,
    Text1:"Navigator.",
    TC1_Controller:Navigation_Q1_T1_Controller,
    TC1_Width: Navigation_Q1_T1_Answer.length * 10.0,
    TC1_MaxLength: Navigation_Q1_T1_Answer.length,
    Text2:"(",
  ),
  CmpQuizz_TextField_Text(
    Spacing: 76,
    TC1_Controller:Navigation_Q1_T2_Controller,
    TC1_Width: Navigation_Q1_T2_Answer.length * 10.0,
    TC1_MaxLength: Navigation_Q1_T2_Answer.length,
    Text1:",",
  ),
  CmpQuizz_TextField_Text(
    Spacing: 76,
    TC1_Controller:Navigation_Q1_T3_Controller,
    TC1_Width: Navigation_Q1_T3_Answer.length * 10.0,
    TC1_MaxLength: Navigation_Q1_T3_Answer.length,
    Text1:"(builder:(context)=>Menu()),",
  ),
  Text(
                      "       );\n"
                      "      },\n"
                      "     ),\n"
                      "    ),\n"
                      "   ),\n"
                      "  );\n"
                      " }\n"
                      "}\n\n\n"

                          "class Menu extends StatelessWidget{\n"
                          "  @override\n"
                          "  Widget build(BuildContext context) {\n"
                          "   return MaterialApp(\n"
                          "    debugShowCheckedModeBanner:false,\n"
                          "     title:'Quizz',\n"
                          "     home:\n"
                          "      Scaffold(\n"
                          "      body:\n"
                          "       Center(\n"
                          "        child:\n"
                          "         Text('Menu Page'),\n"
                          "        ),\n"
                          "      ),\n"
                          "    );\n"
                          "   }\n"
                          "}\n",
                    ),
];
