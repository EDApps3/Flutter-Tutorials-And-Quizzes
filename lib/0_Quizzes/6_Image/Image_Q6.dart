
import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/4_TextField_Text_TextField_Text_TextField_Text.dart';



  String Image_Q6_TxtSol =
      "Image.network(\n"
      " 'www.edapps.com/Welcome.png',\n"
      " fit:BoxFit.contain,\n"
      ")\n";

  String Image_Q6_Question = "Fill The Missing Fields To Let Image Fit Contain";

  var Image_Q6_T1_Controller = new TextEditingController();
  var Image_Q6_T1_Answer = "fit";

  var Image_Q6_T2_Controller = new TextEditingController();
  var Image_Q6_T2_Answer = "BoxFit";

  var Image_Q6_T3_Controller = new TextEditingController();
  var Image_Q6_T3_Answer = "contain";


  List Image_Q6_list = [
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
            "         'www.edapps.com/Welcome.png',\n"
    ),
     CmpQuizz_TextField_Text_TextField_Text_TextField_Text(
      Spacing:64.0,
      TC1_Controller:Image_Q6_T1_Controller,
      TC1_Width:Image_Q6_T1_Answer.length*10.0,
      TC1_MaxLength:Image_Q6_T1_Answer.length,
      Text1:":",
      TC2_Controller:Image_Q6_T2_Controller,
      TC2_Width:Image_Q6_T2_Answer.length*10.0,
      TC2_MaxLength:Image_Q6_T2_Answer.length,
      Text2:".",
      TC3_Controller:Image_Q6_T3_Controller,
      TC3_Width:Image_Q6_T3_Answer.length*10.0,
      TC3_MaxLength:Image_Q6_T3_Answer.length,
      Text3:",",
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
