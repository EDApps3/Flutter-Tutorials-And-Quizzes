import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/4_TextField_Text_TextField_Text_TextField_Text.dart';



String MainBg_Q3_TxtSol ="theme:ThemeData.light(),";

String MainBg_Q3_Question = "Fill The Missing Fields To Turn Body BackgroundColor To Light Theme Inside The MaterialApp";

var MainBg_Q3_T1_Controller = new TextEditingController();
var MainBg_Q3_T1_Answer = "theme";

var MainBg_Q3_T2_Controller = new TextEditingController();
var MainBg_Q3_T2_Answer = "ThemeData";

var MainBg_Q3_T3_Controller = new TextEditingController();
var MainBg_Q3_T3_Answer = "light()";


  List MainBg_Q3_list = [
    Text (
          "import 'package:flutter/material.dart';\n\n"

          "void main() {\n"
          "  runApp(Quizz());\n"
          "}\n\n"

          "class Quizz extends StatelessWidget{\n"
          "  @override\n"
          "  Widget build(BuildContext context) {\n"
          "   return MaterialApp(\n"
          "    debugShowCheckedModeBanner:false,\n"
          "    title:'Quizz',\n"
    ),
    CmpQuizz_TextField_Text_TextField_Text_TextField_Text(
      Spacing:62.0,
      TC1_Controller:MainBg_Q3_T1_Controller,
      TC1_Width:MainBg_Q3_T1_Answer.length*10.0,
      TC1_MaxLength:MainBg_Q3_T1_Answer.length,
      Text1:":",
      TC2_Controller:MainBg_Q3_T2_Controller,
      TC2_Width:MainBg_Q3_T2_Answer.length*10.0,
      TC2_MaxLength:MainBg_Q3_T2_Answer.length,
      Text2:".",
      TC3_Controller:MainBg_Q3_T3_Controller,
      TC3_Width:MainBg_Q3_T3_Answer.length*10.0,
      TC3_MaxLength:MainBg_Q3_T3_Answer.length,
      Text3:",",
    ),
    Text(
            "       home:Scaffold(\n"
            "        appBar:AppBar(\n"
            "          title:Text('Light AppBar Bar Theme'),\n"
            "        ),\n"
            "        body:Center(\n"
            "         child:\n"
            "          Text(\n"
            "            'Light Body Background Theme'\n"
            "          ),\n"
            "        ),\n"
            "       ),\n"
            "     );\n"
            "   }\n"
            " }\n"
    ),
  ];