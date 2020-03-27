import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/2_Text_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/5_TextField_Text_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/Cmp_Fields_Quizz.dart';
import 'dart:math';



class cl_ImageQuizz extends StatelessWidget {
  var ImageQuizzRan=new Random().nextInt(11);

  var Text_NullController= new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Generate Quizzes",
      debugShowCheckedModeBanner:false,
      home:

      (ImageQuizzRan==0)?
       Cmp_Fields_Quizz (
        AppBarTitle: "Image Quizz",
        Question: Image_Q1_Question,
        SolutionTxt: Image_Q1_TxtSol,
        GoRoute: "/Generate_Image_Quizz",
        Ans1Txt: Image_Q1_T1_Controller,
        Ans2Txt: Image_Q1_T2_Controller,
        Ans3Txt: Image_Q1_T3_Controller,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Image_Q1_T1_Answer,
        CorrectAns2: Image_Q1_T2_Answer,
        CorrectAns3: Image_Q1_T3_Answer,
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Image_Q1_list,
       ) :

      (ImageQuizzRan==1)?
       Cmp_Fields_Quizz (
        AppBarTitle: "Image Quizz",
        Question: Image_Q2_Question,
        SolutionTxt: Image_Q2_TxtSol,
        GoRoute: "/Generate_Image_Quizz",
        Ans1Txt: Image_Q2_T1_Controller,
        Ans2Txt: Image_Q2_T2_Controller,
        Ans3Txt: Text_NullController,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Image_Q2_T1_Answer,
        CorrectAns2: Image_Q2_T2_Answer,
        CorrectAns3: "NotSet",
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Image_Q2_list,
       ) :

      (ImageQuizzRan==3)?
      Cmp_Fields_Quizz (
        AppBarTitle: "Image Quizz",
        Question: Image_Q3_Question,
        SolutionTxt: Image_Q3_TxtSol,
        GoRoute: "/Generate_Image_Quizz",
        Ans1Txt: Image_Q3_T1_Controller,
        Ans2Txt: Image_Q3_T2_Controller,
        Ans3Txt: Text_NullController,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Image_Q3_T1_Answer,
        CorrectAns2: Image_Q3_T2_Answer,
        CorrectAns3: "NotSet",
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Image_Q3_list,
      ) :


      Cmp_Fields_Quizz (
        AppBarTitle: "Image Quizz",
        Question: Image_Q4_Question,
        SolutionTxt: Image_Q4_TxtSol,
        GoRoute: "/Generate_Image_Quizz",
        Ans1Txt: Image_Q4_T1_Controller,
        Ans2Txt: Image_Q4_T2_Controller,
        Ans3Txt: Image_Q4_T3_Controller,
        Ans4Txt: Image_Q4_T4_Controller,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Image_Q4_T1_Answer,
        CorrectAns2: Image_Q4_T2_Answer,
        CorrectAns3: Image_Q4_T3_Answer,
        CorrectAns4: Image_Q4_T4_Answer,
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Image_Q4_list,
      ),


      routes: <String, WidgetBuilder>{
       "/Generate_Image_Quizz": (BuildContext context) => cl_ImageQuizz(),
      },

    );
  }




//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------


  String Image_Q1_TxtSol =
      "Image.asset(\n"
      "  'Images/Welcome.png',\n"
      ")\n";

  String Image_Q1_Question = "Fill The Missing Fields To Load An png Image Having Welcome As Name In The Center Of The Body";

  static var Image_Q1_T1_Controller = new TextEditingController();
  static var Image_Q1_T1_Answer = "Image";

  static var Image_Q1_T2_Controller = new TextEditingController();
  static var Image_Q1_T2_Answer = "asset";

  static var Image_Q1_T3_Controller = new TextEditingController();
  static var Image_Q1_T3_Answer = "Welcome.png";

  List Image_Q1_list = [
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
    ),
    CmpQuizz_TextField_Text_TextField_Text(
      Spacing:64.0,
      TC1_Controller:Image_Q1_T1_Controller,
      TC1_Width:Image_Q1_T1_Answer.length*10.0,
      TC1_MaxLength:Image_Q1_T1_Answer.length,
      Text1:".",
      TC2_Controller:Image_Q1_T2_Controller,
      TC2_Width:Image_Q1_T2_Answer.length*10.0,
      TC2_MaxLength:Image_Q1_T2_Answer.length,
      Text2:"(",
    ),
    CmpQuizz_Text_TextField_Text (
        Spacing: 67.0,
        Text1: "'Images/",
        TC1_Width: Image_Q1_T3_Answer.length * 10.0,
        TC1_Controller: Image_Q1_T3_Controller,
        TC1_MaxLength: Image_Q1_T3_Answer.length,
        Text2: "',"
    ),
    Text(
          "\t             ),\n"
          "\t           ),\n"
          "\t         ),\n"
          "\t       );\n"
          "\t      }\n"
          "\t   }\n",
    ),
  ];


//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------


  String Image_Q2_TxtSol =
      "Image.asset(\n"
      "  'Images/Welcome.png',\n"
      "   width:100,\n"
      ")\n";

  String Image_Q2_Question = "Fill The Missing Fields To Change Image Width To 100";

  static var Image_Q2_T1_Controller = new TextEditingController();
  static var Image_Q2_T1_Answer = "width";

  static var Image_Q2_T2_Controller = new TextEditingController();
  static var Image_Q2_T2_Answer = "100";


  List Image_Q2_list = [
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
            "         Image.asset("
            "          'Welcome.png',"
    ),
    CmpQuizz_TextField_Text_TextField_Text(
      Spacing:64.0,
      TC1_Controller:Image_Q2_T1_Controller,
      TC1_Width: Image_Q2_T1_Answer.length * 10.0,
      TC1_MaxLength: Image_Q2_T1_Answer.length,
      TC2_Controller:Image_Q2_T2_Controller,
      Text1:":",
      TC2_Width: Image_Q2_T2_Answer.length * 10.0,
      TC2_MaxLength: Image_Q2_T2_Answer.length,
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


//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------

  String Image_Q3_TxtSol =
      "Image.asset(\n"
      "  'Images/Welcome.png',\n"
      "   height:300,\n"
      ")\n";

  String Image_Q3_Question = "Fill The Missing Fields To Change Image Height To 300";

  static var Image_Q3_T1_Controller = new TextEditingController();
  static var Image_Q3_T1_Answer = "height";

  static var Image_Q3_T2_Controller = new TextEditingController();
  static var Image_Q3_T2_Answer = "300";


  List Image_Q3_list = [
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
            "         Image.asset("
            "          'Welcome.png',"
    ),
    CmpQuizz_TextField_Text_TextField_Text(
      Spacing:64.0,
      TC1_Controller:Image_Q3_T1_Controller,
      TC1_Width: Image_Q3_T1_Answer.length * 10.0,
      TC1_MaxLength: Image_Q3_T1_Answer.length,
      TC2_Controller:Image_Q3_T2_Controller,
      Text1:":",
      TC2_Width: Image_Q3_T2_Answer.length * 10.0,
      TC2_MaxLength: Image_Q3_T2_Answer.length,
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


//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------


  String Image_Q4_TxtSol =
      "Image.asset(\n"
      "  'Images/Welcome.png',\n"
      "   width:400,\n"
      "   height:400,\n"
      ")\n";

  String Image_Q4_Question = "Fill The Missing Fields To Change Image Width & Height To 400";

  static var Image_Q4_T1_Controller = new TextEditingController();
  static var Image_Q4_T1_Answer = "width";

  static var Image_Q4_T2_Controller = new TextEditingController();
  static var Image_Q4_T2_Answer = "400";

  static var Image_Q4_T3_Controller = new TextEditingController();
  static var Image_Q4_T3_Answer = "height";

  static var Image_Q4_T4_Controller = new TextEditingController();
  static var Image_Q4_T4_Answer = "400";


  List Image_Q4_list = [
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
            "         Image.asset("
            "          'Welcome.png',"
    ),
    CmpQuizz_TextField_Text_TextField_Text(
      Spacing:64.0,
      TC1_Controller:Image_Q4_T1_Controller,
      TC1_Width: Image_Q4_T1_Answer.length * 10.0,
      TC1_MaxLength: Image_Q4_T1_Answer.length,
      Text1:":",
      TC2_Controller:Image_Q4_T2_Controller,
      TC2_Width: Image_Q4_T2_Answer.length * 10.0,
      TC2_MaxLength: Image_Q4_T2_Answer.length,
      Text2:",",
    ),
    CmpQuizz_TextField_Text_TextField_Text(
      Spacing:64.0,
      TC1_Controller:Image_Q4_T3_Controller,
      TC1_Width: Image_Q4_T3_Answer.length * 10.0,
      TC1_MaxLength: Image_Q4_T3_Answer.length,
      Text1:":",
      TC2_Controller:Image_Q4_T4_Controller,
      TC2_Width: Image_Q4_T4_Answer.length * 10.0,
      TC2_MaxLength: Image_Q4_T4_Answer.length,
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


//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------




}












