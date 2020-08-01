import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/2_Text_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/3_Text_TextField_Text_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/4_TextField_Text_TextField_Text_TextField_Text.dart';


  String MainBg_Q2_Question = "Fill The Missing Fields To Set Background Color Of The Page To Blue";

  String MainBg_Q2_TxtSol =
      "body:Container(\n"
      " color :Colors.blue,\n"
      " width :double.infinity,\n"
      " height:double.infinity,\n"
      ")\n";


  var MainBg_Q2_T1_Controller = new TextEditingController();
  var MainBg_Q2_T1_Answer = "color";

  var MainBg_Q2_T2_Controller = new TextEditingController();
  var MainBg_Q2_T2_Answer = "Colors";

  var MainBg_Q2_T3_Controller = new TextEditingController();
  var MainBg_Q2_T3_Answer = "blue";

  var MainBg_Q2_T4_Controller = new TextEditingController();
  var MainBg_Q2_T4_Answer = "double";

  var MainBg_Q2_T5_Controller = new TextEditingController();
  var MainBg_Q2_T5_Answer = "double";

  var MainBg_Q2_T6_Controller = new TextEditingController();
  var MainBg_Q2_T6_Answer = "infinity";


  List MainBg_Q2_list = [
    
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
          "    home:Scaffold(\n"
          "     appBar:AppBar(\n"
          "      title:Text('Red Body Background'),\n"
          "     ),\n"
          "     body:Container(\n"
    ),

    CmpQuizz_TextField_Text_TextField_Text_TextField_Text(
      Spacing:65.0,
      TC1_Controller:MainBg_Q2_T1_Controller,
      TC1_Width     :MainBg_Q2_T1_Answer.length*10.0,
      TC1_MaxLength :MainBg_Q2_T1_Answer.length,
      Text1:":",
      TC2_Controller:MainBg_Q2_T2_Controller,
      TC2_Width     :MainBg_Q2_T2_Answer.length*10.0,
      TC2_MaxLength :MainBg_Q2_T2_Answer.length,
      Text2:".",
      TC3_Controller:MainBg_Q2_T3_Controller,
      TC3_Width     :MainBg_Q2_T3_Answer.length*10.0,
      TC3_MaxLength :MainBg_Q2_T3_Answer.length,
      Text3:",",
    ),

    CmpQuizz_Text_TextField_Text(
      Spacing:65.0,
      Text1:"width:",
      TC1_Controller:MainBg_Q2_T4_Controller,
      TC1_Width     :MainBg_Q2_T4_Answer.length*10.0,
      TC1_MaxLength :MainBg_Q2_T4_Answer.length,
      Text2:".infinity,",
    ),

    CmpQuizz_Text_TextField_Text_TextField_Text(
      Spacing:65.0,
      Text1:"height:",
      TC1_Controller:MainBg_Q2_T5_Controller,
      TC1_Width     :MainBg_Q2_T5_Answer.length*10.0,
      TC1_MaxLength :MainBg_Q2_T5_Answer.length,
      Text2:".",
      TC2_Controller:MainBg_Q2_T6_Controller,
      TC2_Width     :MainBg_Q2_T6_Answer.length*10.0,
      TC2_MaxLength :MainBg_Q2_T6_Answer.length,
      Text3:",",
    ),

    
    
    Text(
        "        child:Center(\n"
        "          child:Text('AppBar Title'),\n"
        "        ),\n"
        "       ),\n"
        "     );\n"
        "    ),\n"
        "   }\n"
        " }\n"
    ),
  



  ];

