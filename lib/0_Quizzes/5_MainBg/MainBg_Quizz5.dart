import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/2_Text_TextField_Text.dart';

  String MainBg_Q5_Question = "Fill The Missing Fields To Set Background Color Of The Page To Gradient Between Red And Blue";

  String MainBg_Q5_TxtSol =
      "Container(\n"
      " width: double.infinity,\n"
      " height: double.infinity,\n"
      " decoration:BoxDecoration(\n"
      " gradient:new LinearGradient(\n"
      "  colors:[\n"
      "   Colors.red,\n"
      "   Colors.blue,\n"
      "  ],\n"
      "  begin:const FractionalOffset(0.5,0.0),\n"
      "  end:const FractionalOffset(0.0, 0.5),\n"
      "  stops:[0.0,1.0],\n"
      "  tileMode:TileMode.clamp,\n"
      "  ),\n"
      " ),\n"
      "),";


  var MainBg_Q5_T1_Controller = new TextEditingController();
  var MainBg_Q5_T1_Answer = "red";

  var MainBg_Q5_T2_Controller = new TextEditingController();
  var MainBg_Q5_T2_Answer = "blue";

 


  List MainBg_Q5_list = [
    
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
          "      title:Text('LinearGradient Body Background'),\n"
          "     ),\n"
          "     body:Container(\n"
          "      width:double.infinity,\n"
          "      height: double.infinity,\n"
          "      decoration:BoxDecoration(\n"
          "       gradient:new LinearGradient(\n"
          "        colors:[\n"
    ),

    CmpQuizz_Text_TextField_Text(
      Spacing:65.0,
      Text1:"Colors.",
      TC1_Controller:MainBg_Q5_T1_Controller,
      TC1_Width     :MainBg_Q5_T1_Answer.length*10.0,
      TC1_MaxLength :MainBg_Q5_T1_Answer.length,
      Text2:",",
    ),

    CmpQuizz_Text_TextField_Text(
      Spacing:65.0,
      Text1:"Colors.",
      TC1_Controller:MainBg_Q5_T2_Controller,
      TC1_Width     :MainBg_Q5_T2_Answer.length*10.0,
      TC1_MaxLength :MainBg_Q5_T2_Answer.length,
      Text2:",",
    ),

    Text(
        "           ],\n"
        "           begin:const FractionalOffset(0.5,0.0),\n"
        "           end:const FractionalOffset(0.0, 0.5),\n"
        "           stops:[0.0,1.0],\n"
        "           tileMode:TileMode.clamp,\n"
        "          ),\n"
        "        ),\n"
        "        child:Center(\n"
        "          child:Text('LinearGradient Body Background'),\n"
        "        ),\n"
        "       ),\n"
        "     );\n"
        "    ),\n"
        "   }\n"
        " }\n"
    ),
  



  ];

