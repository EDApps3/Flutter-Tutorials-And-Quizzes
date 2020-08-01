import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/1_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/2_Text_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/5_TextField_Text_TextField_Text.dart';

String Navigation_Q5_TxtSol =
    "_launchUrl() async{\n"
    " const mail='mailto:edapps.contact@gmail.com';\n"
    " if(await canLaunch(Tel)){\n"
    "  await launch(mail);\n"
    " }\n"
    " else{\n"
    "  throw 'Failed To Send Email!';\n"
    " }\n"
    "}\n";

String Navigation_Q5_Question = "Fill The Missing Fields To Send Mail To The Following Email";

var Navigation_Q5_T1_Controller = new TextEditingController();
var Navigation_Q5_T1_Answer = "mailto";

var Navigation_Q5_T2_Controller = new TextEditingController();
var Navigation_Q5_T2_Answer = "canLaunch";

var Navigation_Q5_T3_Controller = new TextEditingController();
var Navigation_Q5_T3_Answer = "launch";


List Navigation_Q5_list = [
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
                    ),


  CmpQuizz_Text_TextField_Text(
    Spacing: 76,
    Text1:"const mail='",
    TC1_Controller:Navigation_Q5_T1_Controller,
    TC1_Width: Navigation_Q5_T1_Answer.length * 10.0,
    TC1_MaxLength: Navigation_Q5_T1_Answer.length,
    Text2:":edapps.contact@gmail.com';",
  ),
 CmpQuizz_Text_TextField_Text(
    Spacing: 76,
    Text1:"if(await ",
    TC1_Controller:Navigation_Q5_T2_Controller,
    TC1_Width: Navigation_Q5_T2_Answer.length * 10.0,
    TC1_MaxLength: Navigation_Q5_T2_Answer.length,
    Text2:"(mail)){",
  ),
 CmpQuizz_Text_TextField_Text(
    Spacing: 76,
    Text1:"await ",
    TC1_Controller:Navigation_Q5_T3_Controller,
    TC1_Width: Navigation_Q5_T3_Answer.length * 10.0,
    TC1_MaxLength: Navigation_Q5_T3_Answer.length,
    Text2:"(mail);",
  ),
  Text(
                      "     }\n"
                      "     else{\n"
                      "       throw 'Failed To Send Email!';\n"
                      "     }\n"
                      "   }\n\n "
                      "}\n"


                    ),
];
