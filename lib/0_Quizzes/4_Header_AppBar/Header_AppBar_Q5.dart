import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/5_TextField_Text_TextField_Text.dart';



  String AppBar_Q5_TxtSol =
    "Answer Is:\n"
    "appBar:AppBar(\n"
    " title:Text(\n"
    "   'Welcome',\n"
    "   style:TextStyle(\n"
    "    color:Colors.white,\n"
    "   ),\n"
    " ),\n"
    ")\n";

  String AppBar_Q5_Question = "Fill The Missing Field To Set AppBar Title To White Color:";

  var AppBar_Q5_T1_Controller = new TextEditingController();
  var AppBar_Q5_T1_Answer = "color";

  var AppBar_Q5_T2_Controller = new TextEditingController();
  var AppBar_Q5_T2_Answer = "Colors";


  List AppBar_Q5_list = [
    Text(
      "import 'package:flutter/material.dart';\n\n"

      "void main() {\n"
      "  runApp(Quizz());\n"
      "}\n\n"

      "class Quizz extends StatelessWidget{\n"
      "  @override\n"
      "  Widget build(BuildContext context) {\n"
      "   return MaterialApp(\n"
      "     debugShowCheckedModeBanner:false,\n"
      "     title:'Quizz',\n"
      "     home:Scaffold(\n"
      "      appBar:AppBar(\n"
      "       title:Text(\n"
      "        'Welcome',\n"
      "        style:TextStyle(\n",
    ),
    CmpQuizz_TextField_Text_TextField_Text(
      Spacing:46.0,
      TC1_Controller:AppBar_Q5_T1_Controller,
      TC1_Width:AppBar_Q5_T1_Answer.length*10.0,
      TC1_MaxLength:AppBar_Q5_T1_Answer.length,
      Text1:":",
      TC2_Controller:AppBar_Q5_T2_Controller,
      TC2_Width:AppBar_Q5_T2_Answer.length*10.0,
      TC2_MaxLength:AppBar_Q5_T2_Answer.length,
      Text2:".white,",
    ),
                    Text("              ),\n"
                        "            ),\n"
                        "         ),\n"
                        "         body:Center(\n"
                        "          child:\n"
                        "           Text(\n"
                        "             'AppBar Title'\n"
                        "           ),\n"
                        "        ),\n"
                        "      ),\n"
                        "    );\n"
                        "  }\n"
                        " }\n"
                    ),

];
