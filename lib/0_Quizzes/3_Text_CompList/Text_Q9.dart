import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/1_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/2_Text_TextField_Text.dart';


 String Text_Q9_TxtSol =
      "TextSpan(\n"
      " text:'Good',\n"
      " style:TextStyle(\n"
      "  color:Colors.orange,\n"
      " ),\n"
      "),\n"
      "TextSpan(\n"
      " text:'Night',\n"
      " style:TextStyle(\n"
      "  color:Colors.red,\n"
      "  fontWeight:FontWeight.bold,\n"
      " ),\n"
      "),";

  String Text_Q9_Question = "Fill The Missing Field To Turn:\n-Good To Orange Color\n-Night To Red Color & Bold";

  var Text_Q9_T1_Controller = new TextEditingController();
  var Text_Q9_T1_Answer = "text";

  var Text_Q9_T2_Controller = new TextEditingController();
  var Text_Q9_T2_Answer = "TextStyle";

  var Text_Q9_T3_Controller = new TextEditingController();
  var Text_Q9_T3_Answer = "color";

  var Text_Q9_T4_Controller = new TextEditingController();
  var Text_Q9_T4_Answer = "text";

  var Text_Q9_T5_Controller = new TextEditingController();
  var Text_Q9_T5_Answer = "TextStyle";

  var Text_Q9_T6_Controller = new TextEditingController();
  var Text_Q9_T6_Answer = "color";

  var Text_Q9_T7_Controller = new TextEditingController();
  var Text_Q9_T7_Answer = "fontWeight";

  List Text_Q9_list = [
    Text (
        "import 'package:flutter/material.dart';\n\n"
            "void main(){\n"
            " runApp(Quizz());\n"
            "}\n\n"
            "class Quizz extends StatelessWidget{\n\n"
            " @override\n"
            " Widget build(BuildContext context){\n"
            "  return MaterialApp(\n"
            "   debugShowCheckedModeBanner:false,\n"
            "   title:'Quizz',\n"
            "   home:Scaffold(\n"
            "   body:Center(\n"
            "    child:\n"
            "     RichText(\n"
            "      text:\n"
            "       TextSpan(\n"
            "        children:[\n"
            "         TextSpan("
    ),
    CmpQuizz_TextField_Text (
      Spacing: 40,
      TC1_Width: Text_Q9_T1_Answer.length * 10.0,
      TC1_Controller: Text_Q9_T1_Controller,
      TC1_MaxLength: Text_Q9_T1_Answer.length,
      Text1: ":'Good',",
    ),
    CmpQuizz_Text_TextField_Text (
        Spacing: 40,
        Text1: "style:",
        TC1_Width: Text_Q9_T2_Answer.length * 10.0,
        TC1_Controller: Text_Q9_T2_Controller,
        TC1_MaxLength: Text_Q9_T2_Answer.length,
        Text2: "("
    ),
    CmpQuizz_TextField_Text (
      Spacing: 50,
      TC1_Width: Text_Q9_T3_Answer.length * 10.0,
      TC1_Controller: Text_Q9_T3_Controller,
      TC1_MaxLength: Text_Q9_T3_Answer.length,
      Text1: ":Colors.orange,",
    ),
    Text (
            "\n        ),\n"
            "       ),\n"
            "       TextSpan(\n"
    ),
    CmpQuizz_TextField_Text (
      Spacing: 40.0,
      TC1_Width: Text_Q9_T4_Answer.length * 10.0,
      TC1_Controller: Text_Q9_T4_Controller,
      TC1_MaxLength: Text_Q9_T4_Answer.length,
      Text1: ":'Night',",
    ),
    CmpQuizz_Text_TextField_Text (
        Spacing: 40.0,
        Text1: "style:",
        TC1_Width: Text_Q9_T5_Answer.length * 10.0,
        TC1_Controller: Text_Q9_T5_Controller,
        TC1_MaxLength: Text_Q9_T5_Answer.length,
        Text2: "("
    ),
    CmpQuizz_TextField_Text (
      Spacing: 50.0,
      TC1_Width: Text_Q9_T6_Answer.length * 10.0,
      TC1_Controller: Text_Q9_T6_Controller,
      TC1_MaxLength: Text_Q9_T6_Answer.length,
      Text1: ":Colors.red,",
    ),
    CmpQuizz_TextField_Text (
      Spacing: 50.0,
      TC1_Width: Text_Q9_T7_Answer.length * 10.0,
      TC1_Controller: Text_Q9_T7_Controller,
      TC1_MaxLength: Text_Q9_T7_Answer.length,
      Text1: ":FontWeight.bold,",
    ),
    Text (
        "        ),\n"
            "       ),\n"
            "      ],\n"
            "     ),\n"
            "     ),\n"
            "    ),\n"
            "   ),\n"
            "  );\n"
            " }\n"
            "}\n"
    ),
  ];
