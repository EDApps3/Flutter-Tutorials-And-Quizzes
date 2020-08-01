import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/1_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/2_Text_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/5_TextField_Text_TextField_Text.dart';

String Buttons_Q7_TxtSol =
     "FlatButton.icon(\n"
    " icon:Icon(Icons.add),"
    " label:Text('Add'),\n"
    ")";

String Buttons_Q7_Question = "Fill The Missing Fields To Create A Flat Button Icon Having As An Icon add And Add As A Label";

var Buttons_Q7_T1_Controller = new TextEditingController();
var Buttons_Q7_T1_Answer = "FlatButton";

var Buttons_Q7_T2_Controller = new TextEditingController();
var Buttons_Q7_T2_Answer = "icon";

var Buttons_Q7_T3_Controller = new TextEditingController();
var Buttons_Q7_T3_Answer = "Icon";

var Buttons_Q7_T4_Controller = new TextEditingController();
var Buttons_Q7_T4_Answer = "label";



List Buttons_Q7_list = [
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


  CmpQuizz_TextField_Text_TextField_Text(
      Spacing: 76,
      TC1_Controller:Buttons_Q7_T1_Controller,
      TC1_Width: Buttons_Q7_T1_Answer.length * 10.0,
      TC1_MaxLength: Buttons_Q7_T1_Answer.length,
      Text1:".",
      TC2_Controller:Buttons_Q7_T2_Controller,
      TC2_Width: Buttons_Q7_T2_Answer.length * 10.0,
      TC2_MaxLength: Buttons_Q7_T2_Answer.length,
      Text2:"("
  ),

  CmpQuizz_Text_TextField_Text(
      Spacing: 82,
      Text1:"icon:",
      TC1_Controller:Buttons_Q7_T3_Controller,
      TC1_Width: Buttons_Q7_T3_Answer.length * 10.0,
      TC1_MaxLength: Buttons_Q7_T3_Answer.length,
      Text2:"(Icons.add),"
  ),

    CmpQuizz_TextField_Text(
      Spacing: 82,
      TC1_Controller:Buttons_Q7_T4_Controller,
      TC1_Width: Buttons_Q7_T4_Answer.length * 10.0,
      TC1_MaxLength: Buttons_Q7_T4_Answer.length,
      Text1:":Text('Add'),",
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
