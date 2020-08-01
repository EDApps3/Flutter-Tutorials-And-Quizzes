import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/1_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/2_Text_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/5_TextField_Text_TextField_Text.dart';

String Buttons_Q5_TxtSol =
     "ClipOval(\n"
    " child:Container(,\n"
    " color:Colors.blue,\n"
    " child:IconButton(\n"
    "  icon:Icon(Icons.android),"
    "  color:Colors.yellow,\n"
    "  ),"
    " ),"
    ")";

String Buttons_Q5_Question = "Fill The Missing Fields To Create A Clipped Oval IconButton Having An Android Icon";

var Buttons_Q5_T1_Controller = new TextEditingController();
var Buttons_Q5_T1_Answer = "ClipOval";

var Buttons_Q5_T2_Controller = new TextEditingController();
var Buttons_Q5_T2_Answer = "IconButton";

var Buttons_Q5_T3_Controller = new TextEditingController();
var Buttons_Q5_T3_Answer = "icon";

var Buttons_Q5_T4_Controller = new TextEditingController();
var Buttons_Q5_T4_Answer = "Icon";




List Buttons_Q5_list = [
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
      TC1_Controller:Buttons_Q5_T1_Controller,
      TC1_Width: Buttons_Q5_T1_Answer.length * 10.0,
      TC1_MaxLength: Buttons_Q5_T1_Answer.length,
      Text1:"("
  ),
  Text("        child:Container("),

  CmpQuizz_Text_TextField_Text(
      Spacing: 82,
      Text1:"child:",
      TC1_Controller:Buttons_Q5_T2_Controller,
      TC1_Width: Buttons_Q5_T2_Answer.length * 10.0,
      TC1_MaxLength: Buttons_Q5_T2_Answer.length,
      Text2:"("
  ),

  CmpQuizz_TextField_Text_TextField_Text(
      Spacing: 87,
      TC1_Controller:Buttons_Q5_T3_Controller,
      TC1_Width: Buttons_Q5_T3_Answer.length * 10.0,
      TC1_MaxLength: Buttons_Q5_T3_Answer.length,
      Text1:":",
      TC2_Controller:Buttons_Q5_T4_Controller,
      TC2_Width: Buttons_Q5_T4_Answer.length * 10.0,
      TC2_MaxLength: Buttons_Q5_T4_Answer.length,
      Text2:"(Icons.android),"
  ),
   Text(
                          "              color:Colors.orange,\n"
                          "            ),\n"
                          "          ),\n"
                          "        ),\n"
                          "     ),\n"
                          "   );\n"
                          " }\n"
                          "}",
                    ),

];
