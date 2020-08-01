
import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/2_Text_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/5_TextField_Text_TextField_Text.dart';



  String Image_Q5_TxtSol =
      "Image.network(\n"
      "  'www.edapps.com/Welcome.png',\n"
      "   width:350,\n"
      "   height:350,\n"
      ")\n";

  String Image_Q5_Question = "Fill The Missing Fields To Change Image Width & Height To 350 Loaded From Network";

  var Image_Q5_T1_Controller = new TextEditingController();
  var Image_Q5_T1_Answer = "Image";

  var Image_Q5_T2_Controller = new TextEditingController();
  var Image_Q5_T2_Answer = "network";

  var Image_Q5_T3_Controller = new TextEditingController();
  var Image_Q5_T3_Answer = "width";

  var Image_Q5_T4_Controller = new TextEditingController();
  var Image_Q5_T4_Answer = "350";

  var Image_Q5_T5_Controller = new TextEditingController();
  var Image_Q5_T5_Answer = "height";

  var Image_Q5_T6_Controller = new TextEditingController();
  var Image_Q5_T6_Answer = "350";


  List Image_Q5_list = [
    Text (
        "import 'package:flutter/material.dart';\n\n"

            "void main() {\n"
            "  runApp(Quizz());\n"
            "}\n\n"

            "class Quizz extends StatelessWidget{\n"
            "  @override\n"
            "  Widget build(BuildContext context) {\n"
            "   return MaterialApp(\n"
            "     home:\n"
            "      Scaffold(\n"
            "       body:Center(\n"
            "        child:\n"
            "         Image.network(\n"
    ),
    CmpQuizz_TextField_Text_TextField_Text(
      Spacing:64.0,
      TC1_Controller:Image_Q5_T1_Controller,
      TC1_Width:Image_Q5_T1_Answer.length*10.0,
      TC1_MaxLength:Image_Q5_T1_Answer.length,
      Text1:".",
      TC2_Controller:Image_Q5_T2_Controller,
      TC2_Width:Image_Q5_T2_Answer.length*10.0,
      TC2_MaxLength:Image_Q5_T2_Answer.length,
      Text2:"(",
    ),

    Text("                  'www.edapps.com/Welcome.png',\n"),
    CmpQuizz_TextField_Text_TextField_Text(
      Spacing:64.0,
      TC1_Controller:Image_Q5_T3_Controller,
      TC1_Width: Image_Q5_T3_Answer.length * 10.0,
      TC1_MaxLength: Image_Q5_T3_Answer.length,
      Text1:":",
      TC2_Controller:Image_Q5_T4_Controller,
      TC2_Width: Image_Q5_T4_Answer.length * 10.0,
      TC2_MaxLength: Image_Q5_T4_Answer.length,
      Text2:",",
    ),
    CmpQuizz_TextField_Text_TextField_Text(
      Spacing:64.0,
      TC1_Controller:Image_Q5_T5_Controller,
      TC1_Width: Image_Q5_T5_Answer.length * 10.0,
      TC1_MaxLength: Image_Q5_T5_Answer.length,
      Text1:":",
      TC2_Controller:Image_Q5_T6_Controller,
      TC2_Width: Image_Q5_T6_Answer.length * 10.0,
      TC2_MaxLength: Image_Q5_T6_Answer.length,
      Text2:",",
    ),
    Text(
      "\t           ),\n"
          "\t          ),\n"
          "\t         ),\n"
          "\t       );\n"
          "\t      }\n"
          "\t   }\n",
    ),
  ];
