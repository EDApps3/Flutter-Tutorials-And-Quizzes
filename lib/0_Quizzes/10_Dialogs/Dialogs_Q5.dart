import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/5_TextField_Text_TextField_Text.dart';

String Dialogs_Q5_TxtSol =
    "showDialog(\n"
    " context:context,\n"
    " child  :dialog,\n"
    " onWillPop:() async=> false,\n"
    ");\n";

String Dialogs_Q5_Question = "Fill The Missing Fields To Show An Alert Dialog,Don't Allow Back Button Closing It";

var Dialogs_Q5_T1_Controller = new TextEditingController();
var Dialogs_Q5_T1_Answer = "onWillPop";

var Dialogs_Q5_T2_Controller = new TextEditingController();
var Dialogs_Q5_T2_Answer = "false";




List Dialogs_Q5_list = [
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
        "              context:context,\n"
        "              builder: (BuildContext context) {\n"
        "               return WillPopScope(\n"
        "                child:dialog,\n"
  ),
  CmpQuizz_TextField_Text_TextField_Text(
    Spacing: 76,
    TC1_Controller:Dialogs_Q5_T1_Controller,
    TC1_Width: Dialogs_Q5_T1_Answer.length * 10.0,
    TC1_MaxLength: Dialogs_Q5_T1_Answer.length,
    Text1:":() async =>",
    TC2_Controller:Dialogs_Q5_T2_Controller,
    TC2_Width: Dialogs_Q5_T2_Answer.length * 10.0,
    TC2_MaxLength: Dialogs_Q5_T2_Answer.length,
    Text2:",",
  ),
  Text(
        "      );\n"
        "     }\n"
        "    ),\n"
        "   ),\n"
        "  );\n"
        " }\n"
        "}\n",
  ),


];
