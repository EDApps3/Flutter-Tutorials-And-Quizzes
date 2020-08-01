import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/1_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/2_Text_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/5_TextField_Text_TextField_Text.dart';

String Buttons_Q6_TxtSol =
    "FlatButton(\n"
    " child:Text('FlatButton'),\n"
    ")";

String Buttons_Q6_Question = "Fill The Missing Fields To Create A Flat Button Having As Value FlatButton";

var Buttons_Q6_T1_Controller = new TextEditingController();
var Buttons_Q6_T1_Answer = "FlatButton";

var Buttons_Q6_T2_Controller = new TextEditingController();
var Buttons_Q6_T2_Answer = "Text";






List Buttons_Q6_list = [
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
                          "             child:\n",
                    ),

  CmpQuizz_TextField_Text(
      Spacing: 76,
      TC1_Controller:Buttons_Q6_T1_Controller,
      TC1_Width: Buttons_Q6_T1_Answer.length * 10.0,
      TC1_MaxLength: Buttons_Q6_T1_Answer.length,
      Text1:"("
  ),

  CmpQuizz_Text_TextField_Text(
      Spacing: 82,
      Text1:"child:",
      TC1_Controller:Buttons_Q6_T2_Controller,
      TC1_Width: Buttons_Q6_T2_Answer.length * 10.0,
      TC1_MaxLength: Buttons_Q6_T2_Answer.length,
      Text2:"('HitMe'),"
  ),
   Text(
                                  "     ),\n"
                                  "    ),\n"
                                  "   ),\n"
                                  "  );\n"
                                  " }\n"
                                  "}",
                    ),



];
