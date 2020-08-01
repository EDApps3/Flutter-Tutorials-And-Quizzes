import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/1_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/5_TextField_Text_TextField_Text.dart';

String Toast_Q7_TxtSol =
    "void show Toast(){\n"
    " Toast.show(\n"
    "  'Hello',\n"
    "  context,\n"
    "  backgroundColor:Colors.yellow,\n"
    " );\n"
    "}\n";


String Toast_Q7_Question = "Fill The Missing Fields To Show A Toast Saying Hello When The Page Is Loaded Having Yellow As Background Color";

var Toast_Q7_T1_Controller = new TextEditingController();
var Toast_Q7_T1_Answer = "Toast";

var Toast_Q7_T2_Controller = new TextEditingController();
var Toast_Q7_T2_Answer = "show";

var Toast_Q7_T3_Controller = new TextEditingController();
var Toast_Q7_T3_Answer = "context";

var Toast_Q7_T4_Controller = new TextEditingController();
var Toast_Q7_T4_Answer = "backgroundColor";

var Toast_Q7_T5_Controller = new TextEditingController();
var Toast_Q7_T5_Answer = "yellow";


List Toast_Q7_list = [
   Text(
                      "import 'package:flutter/material.dart';\n"
                      "import 'package:toast/toast.dart';\n\n"
                      "void main() {\n"
                      " runApp(Quizz());\n"
                      "}\n\n"

                      "class Quizz extends StatefulWidget{\n"
                      " Quizz({Key Key}) : super (key: Key);\n"
                      " _QuizzState createState() => _QuizzState();\n"
                      "}\n\n"

                      "class _QuizzState extends State<Quizz> {\n\n"
                      " @override\n"
                      " void initState() {\n"
                      "   super.initState();\n"
                      "   showToast();\n"
                      " }\n\n"

                      "void showToast(){\n"
                    ),
  CmpQuizz_TextField_Text_TextField_Text(
      Spacing: 76,
      TC1_Controller:Toast_Q7_T1_Controller,
      TC1_Width: Toast_Q7_T1_Answer.length * 10.0,
      TC1_MaxLength: Toast_Q7_T1_Answer.length,
      Text1:".",
      TC2_Controller:Toast_Q7_T2_Controller,
      TC2_Width: Toast_Q7_T2_Answer.length * 10.0,
      TC2_MaxLength: Toast_Q7_T2_Answer.length,
      Text2:"(",
  ),
  Text("    'Hello',"),
  CmpQuizz_TextField_Text(
      Spacing: 76,
      TC1_Controller:Toast_Q7_T3_Controller,
      TC1_Width: Toast_Q7_T3_Answer.length * 10.0,
      TC1_MaxLength: Toast_Q7_T3_Answer.length,
      Text1:","
  ),
    CmpQuizz_TextField_Text_TextField_Text(
      Spacing: 76,
      TC1_Controller:Toast_Q7_T4_Controller,
      TC1_Width: Toast_Q7_T4_Answer.length * 10.0,
      TC1_MaxLength: Toast_Q7_T4_Answer.length,
      Text1:":Colors.",
      TC2_Controller:Toast_Q7_T5_Controller,
      TC2_Width: Toast_Q7_T5_Answer.length * 10.0,
      TC2_MaxLength: Toast_Q7_T5_Answer.length,
      Text2:",",
  ),
   Text(
                      " );\n"
                      "}\n\n\n"

                      "  @override\n"
                      "  Widget build(BuildContext context) {\n"
                      "   return MaterialApp (\n"
                      "    debugShowCheckedModeBanner: false,\n"
                      "    title:'Quizz',\n"
                      "    home: Scaffold(\n"
                      "    body:\n"
                      "     Center(\n"
                      "     child:Text('Toast Quizz!'),\n"
                      "     ),\n"
                      "    ),\n"
                      "   );\n"
                      " }\n"
                      "}\n",

                    ),
];
