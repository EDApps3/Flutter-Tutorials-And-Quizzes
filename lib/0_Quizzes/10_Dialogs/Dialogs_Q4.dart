import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/1_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/2_Text_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/4_TextField_Text_TextField_Text_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/5_TextField_Text_TextField_Text.dart';

String Dialogs_Q4_TxtSol =
    "showDialog(\n"
    " barrierDismissible:true,\n"
    " context:context,\n"
    " child  :dialog,\n"
    ");\n";

String Dialogs_Q4_Question = "Fill The Missing Fields To Show An Alert Dialog,Allow Clicking Outside Closing It";

var Dialogs_Q4_T1_Controller = new TextEditingController();
var Dialogs_Q4_T1_Answer = "barrierDismissible";

var Dialogs_Q4_T2_Controller = new TextEditingController();
var Dialogs_Q4_T2_Answer = "true";




List Dialogs_Q4_list = [
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
        "            title:Text('Dialogs Quizz'),\n"
        "         ),\n"
        "         body:Center(\n"
        "          child:RaisedButton(\n"
        "           child:Text('Show Dialog'),\n"
        "            onPressed: (){\n"
        "             Alert dialog = new AlertDialog(\n"
        "              title:Text('Hi'),\n"
        "             );\n"
        "             showDialog(\n"
  ),
  CmpQuizz_TextField_Text_TextField_Text(
    Spacing: 76,
    TC1_Controller:Dialogs_Q4_T1_Controller,
    TC1_Width: Dialogs_Q4_T1_Answer.length * 10.0,
    TC1_MaxLength: Dialogs_Q4_T1_Answer.length,
    Text1:":",
    TC2_Controller:Dialogs_Q4_T2_Controller,
    TC2_Width: Dialogs_Q4_T2_Answer.length * 10.0,
    TC2_MaxLength: Dialogs_Q4_T2_Answer.length,
    Text2:",",
  ),
  Text(
        "        context:context,\n"
        "        child:dialog,\n"
        "      );\n"
        "     }\n"
        "    ),\n"
        "   ),\n"
        "  );\n"
        " }\n"
        "}\n",
  ),


];
