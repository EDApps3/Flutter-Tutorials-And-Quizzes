import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/5_TextField_Text_TextField_Text.dart';


  String AppBar_Q8_TxtSol =
    "appBar:AppBar(\n"
    " title:Text('Right AppBar Icon'),\n"
    " actions: <Widget>[\n"
    "   Icon(Icons.person),\n"
    " ],\n"
    "),\n";

  String AppBar_Q8_Question = "Fill The Missing Fields To Turn The Icon(Person) In AppBar To The Right";

  var AppBar_Q8_T1_Controller = new TextEditingController();
  var AppBar_Q8_T1_Answer = "actions";

  var AppBar_Q8_T2_Controller = new TextEditingController();
  var AppBar_Q8_T2_Answer = "Widget";


  List AppBar_Q8_list = [
    
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
                          "            title:Text('Right AppBar Icon'),\n"
                    ),
                    CmpQuizz_TextField_Text_TextField_Text(
      Spacing:46.0,
      TC1_Controller:AppBar_Q8_T1_Controller,
      TC1_Width:AppBar_Q8_T1_Answer.length*10.0,
      TC1_MaxLength:AppBar_Q8_T1_Answer.length,
      Text1:":<",
      TC2_Controller:AppBar_Q8_T2_Controller,
      TC2_Width:AppBar_Q8_T2_Answer.length*10.0,
      TC2_MaxLength:AppBar_Q8_T2_Answer.length,
      Text2:">[",
    ),

                     Text(
                        "             Icon(Icons.person),\n"
                        "            ],\n"
                        "            ),\n"
                        "            body:Center(\n"
                        "            child:\n"
                        "             Text(\n"
                        "                'Right AppBar Icon'\n"
                        "             ),\n"
                        "          ),\n"
                        "        ),\n"
                        "     );\n"
                        "   }\n"
                        " }\n"
                    ),

    ];
