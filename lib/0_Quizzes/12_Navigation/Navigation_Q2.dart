import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/1_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/2_Text_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/5_TextField_Text_TextField_Text.dart';

String Navigation_Q2_TxtSol =
    "if(await canLaunch(url)){\n"
    " await launch(url);\n"
    "}\n";

String Navigation_Q2_Question = "Fill The Missing Fields To Navigate To Google";

var Navigation_Q2_T1_Controller = new TextEditingController();
var Navigation_Q2_T1_Answer = "canLaunch";

var Navigation_Q2_T2_Controller = new TextEditingController();
var Navigation_Q2_T2_Answer = "launch";




List Navigation_Q2_list = [
  Text(
                      "import 'package:flutter/material.dart';\n"
                          "import 'package:url_launcher/url_launcher.dart';\n\n"

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
                          "          onPressed:_launchUrl,\n"
                          "         ),\n"
                          "       ),\n"
                          "     ),\n"
                          "   );\n"
                          "}\n\n\n"
                          "_launchUrl() async{\n"
                          "  const url='https://www.google.com';",
                    ),

  CmpQuizz_Text_TextField_Text(
    Spacing: 76,
    Text1:"if(await ",
    TC1_Controller:Navigation_Q2_T1_Controller,
    TC1_Width: Navigation_Q2_T1_Answer.length * 10.0,
    TC1_MaxLength: Navigation_Q2_T1_Answer.length,
    Text2:"(url)){",
  ),
 CmpQuizz_Text_TextField_Text(
    Spacing: 76,
    Text1:"await ",
    TC1_Controller:Navigation_Q2_T2_Controller,
    TC1_Width: Navigation_Q2_T2_Answer.length * 10.0,
    TC1_MaxLength: Navigation_Q2_T2_Answer.length,
    Text2:"(url);",
  ),
  Text(
                      "     }\n"
                      "     else{\n"
                      "       throw 'Could Not Launch Url!';\n"
                      "     }\n"
                      "   }\n\n "
                      "}\n"


                    ),
 
];
