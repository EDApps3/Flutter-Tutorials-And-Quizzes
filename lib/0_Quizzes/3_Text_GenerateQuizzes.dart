import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/0_Quizzes/1_Intro_GenerateQuizzes.dart';
import 'package:flutter_tutorials_and_quizzes/0_Quizzes/2_Keywords_GenerateQuizzes.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/1_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/2_Text_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/3_Text_TextField_Text_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/4_TextField_Text_TextField_Text_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/5_TextField_Text_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/Cmp_Fields_Quizz.dart';
import 'dart:math';


class cl_TextQuizz extends StatefulWidget {
  cl_TextQuizz({Key key}) : super(key: key);
  cl_TextQuizz_State createState() => cl_TextQuizz_State();
}

class cl_TextQuizz_State extends State<cl_TextQuizz> {
  int TextQuizzRan=new Random().nextInt(9);

  var Text_NullController= new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      title: "Generate Quizzes",
      debugShowCheckedModeBanner: false,
      home:

      (TextQuizzRan == 0) ?
      Cmp_Fields_Quizz (
        AppBarTitle: "Text Quizz",
        Question: Text_Q1_Question,
        SolutionTxt: Text_Q1_TxtSol,
        GoRoute: "/Generate_Text_Quizz",
        Ans1Txt: Text_Q1_T1_Controller,
        Ans2Txt: Text_Q1_T2_Controller,
        Ans3Txt: Text_NullController,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Text_Q1_T1_Answer,
        CorrectAns2: Text_Q1_T2_Answer,
        CorrectAns3: "NotSet",
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Text_Q1_list,
      ) :



      (TextQuizzRan == 1) ?
       Cmp_Fields_Quizz (
        AppBarTitle: "Text Quizz",
        Question: Text_Q2_Question,
        SolutionTxt: Text_Q2_TxtSol,
        GoRoute: "/Generate_Text_Quizz",
        Ans1Txt: Text_Q2_T1_Controller,
        Ans2Txt: Text_Q2_T2_Controller,
        Ans3Txt: Text_NullController,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Text_Q2_T1_Answer,
        CorrectAns2: Text_Q2_T2_Answer,
        CorrectAns3: "NotSet",
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Text_Q2_list,
      ) :



      (TextQuizzRan == 2) ?
       Cmp_Fields_Quizz (
        AppBarTitle: "Text Quizz",
        Question: Text_Q3_Question,
        SolutionTxt: Text_Q3_TxtSol,
        GoRoute: "/Generate_Text_Quizz",
        Ans1Txt: Text_Q3_T1_Controller,
        Ans2Txt: Text_Q3_T2_Controller,
        Ans3Txt: Text_Q3_T3_Controller,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Text_Q3_T1_Answer,
        CorrectAns2: Text_Q3_T2_Answer,
        CorrectAns3: Text_Q3_T3_Answer,
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Text_Q3_list,
       ) :




      (TextQuizzRan == 3) ?
       Cmp_Fields_Quizz (
        AppBarTitle: "Text Quizz",
        Question: Text_Q4_Question,
        SolutionTxt: Text_Q4_TxtSol,
        GoRoute: "/Generate_Text_Quizz",
        Ans1Txt: Text_Q4_T1_Controller,
        Ans2Txt: Text_Q4_T2_Controller,
        Ans3Txt: Text_Q4_T3_Controller,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Text_Q4_T1_Answer,
        CorrectAns2: Text_Q4_T2_Answer,
        CorrectAns3: Text_Q4_T3_Answer,
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Text_Q4_list,
       ) :



      (TextQuizzRan == 4) ?
       Cmp_Fields_Quizz (
        AppBarTitle: "Text Quizz",
        Question: Text_Q5_Question,
        SolutionTxt: Text_Q5_TxtSol,
        GoRoute: "/Generate_Text_Quizz",
        Ans1Txt: Text_Q5_T1_Controller,
        Ans2Txt: Text_Q5_T2_Controller,
        Ans3Txt: Text_Q5_T3_Controller,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Text_Q5_T1_Answer,
        CorrectAns2: Text_Q5_T2_Answer,
        CorrectAns3: Text_Q5_T3_Answer,
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Text_Q5_list,
       ) :




      (TextQuizzRan == 5) ?
       Cmp_Fields_Quizz (
        AppBarTitle: "Text Quizz",
        Question: Text_Q7_Question,
        SolutionTxt: Text_Q7_TxtSol,
        GoRoute: "/Generate_Text_Quizz",
        Ans1Txt: Text_Q7_T1_Controller,
        Ans2Txt: Text_Q7_T2_Controller,
        Ans3Txt: Text_Q7_T3_Controller,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Text_Q7_T1_Answer,
        CorrectAns2: Text_Q7_T2_Answer,
        CorrectAns3: Text_Q7_T3_Answer,
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Text_Q7_list,
       ) :




      (TextQuizzRan == 6) ?
      Cmp_Fields_Quizz (
        AppBarTitle: "Text Quizz",
        Question: Text_Q6_Question,
        SolutionTxt: Text_Q6_TxtSol,
        GoRoute: "/Generate_Text_Quizz",
        Ans1Txt: Text_Q6_T1_Controller,
        Ans2Txt: Text_Q6_T2_Controller,
        Ans3Txt: Text_Q6_T3_Controller,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Text_Q6_T1_Answer,
        CorrectAns2: Text_Q6_T2_Answer,
        CorrectAns3: Text_Q6_T3_Answer,
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Text_Q6_list,
      ) :


      (TextQuizzRan == 7) ?
       Cmp_Fields_Quizz (
        AppBarTitle: "Text Quizz",
        Question: Text_Q8_Question,
        SolutionTxt: Text_Q8_TxtSol,
        GoRoute: "/Generate_Text_Quizz",
        Ans1Txt: Text_Q8_T1_Controller,
        Ans2Txt: Text_Q8_T2_Controller,
        Ans3Txt: Text_NullController,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: Text_Q8_T1_Answer,
        CorrectAns2: Text_Q8_T2_Answer,
        CorrectAns3: "NotSet",
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: Text_Q8_list,
       ) :



      Cmp_Fields_Quizz (
        AppBarTitle: "Text Quizz",
        Question: Text_Q9_Question,
        SolutionTxt: Text_Q9_TxtSol,
        GoRoute: "/Generate_Text_Quizz",
        Ans1Txt: Text_Q9_T1_Controller,
        Ans2Txt: Text_Q9_T2_Controller,
        Ans3Txt: Text_Q9_T3_Controller,
        Ans4Txt: Text_Q9_T4_Controller,
        Ans5Txt: Text_Q9_T5_Controller,
        Ans6Txt: Text_Q9_T6_Controller,
        Ans7Txt: Text_Q9_T7_Controller,
        CorrectAns1: Text_Q9_T1_Answer,
        CorrectAns2: Text_Q9_T2_Answer,
        CorrectAns3: Text_Q9_T3_Answer,
        CorrectAns4: Text_Q9_T4_Answer,
        CorrectAns5: Text_Q9_T5_Answer,
        CorrectAns6: Text_Q9_T6_Answer,
        CorrectAns7: Text_Q9_T7_Answer,
        QuizzList: Text_Q9_list,
      ),


      routes: <String, WidgetBuilder>{
        "/Generate_Intro_Quizz": (BuildContext context) => cl_IntroQuizz (),
        "/Generate_Keywords_Quizz": (BuildContext context) => cl_KeywordsQuizz (),
        "/Generate_Text_Quizz": (BuildContext context) => cl_TextQuizz (),
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

  String Text_Q1_TxtSol ="textDirection:\n  TextDirection.ltr";

  String Text_Q1_Question = "Fill The Missing Fields To Flows Text(Hi) From Left To Right";

  static var Text_Q1_T1_Controller = new TextEditingController();
  static var Text_Q1_T1_Answer = "TextDirection";

  static var Text_Q1_T2_Controller = new TextEditingController();
  static var Text_Q1_T2_Answer = "ltr";


  List Text_Q1_list = [
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
          "         Text(\n"
          "          'Hi',\n",
    ),
    CmpQuizz_Text_TextField_Text_TextField_Text(
      Spacing:60.0,
      Text1:"textDirection:",
      TC1_Controller:Text_Q1_T1_Controller,
      TC1_Width:Text_Q1_T1_Answer.length*10.0,
      TC1_MaxLength:Text_Q1_T1_Answer.length,
      Text2:".",
      TC2_Controller:Text_Q1_T2_Controller,
      TC2_Width:Text_Q1_T2_Answer.length*10.0,
      TC2_MaxLength:Text_Q1_T2_Answer.length,
      Text3:",",
    ),
    Text(
          "                     ),\n"
          "\t             ),\n"
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


  String Text_Q2_TxtSol ="textDirection:\n  TextDirection.rtl";

  String Text_Q2_Question = "Fill The Missing Fields To Flows Text(AAA) From Right To Left";

  static var Text_Q2_T1_Controller = new TextEditingController();
  static var Text_Q2_T1_Answer = "TextDirection";

  static var Text_Q2_T2_Controller = new TextEditingController();
  static var Text_Q2_T2_Answer = "rtl";


  List Text_Q2_list = [
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
          "         Text(\n"
          "          'AAA',\n",
    ),
    CmpQuizz_Text_TextField_Text_TextField_Text(
      Spacing:60.0,
      Text1:"textDirection:",
      TC1_Controller:Text_Q2_T1_Controller,
      TC1_Width:Text_Q2_T1_Answer.length*10.0,
      TC1_MaxLength:Text_Q2_T1_Answer.length,
      Text2:".",
      TC2_Controller:Text_Q2_T2_Controller,
      TC2_Width:Text_Q2_T2_Answer.length*10.0,
      TC2_MaxLength:Text_Q2_T2_Answer.length,
      Text3:",",
    ),
    Text(
      "                     ),\n"
          "\t             ),\n"
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

  String Text_Q3_TxtSol ="color:Colors.orange";

  String Text_Q3_Question = "Fill The Missing FieldS To Change Text(Rainbow) Color To Orange";

  static var Text_Q3_T1_Controller = new TextEditingController();
  static var Text_Q3_T1_Answer = "color";

  static var Text_Q3_T2_Controller = new TextEditingController();
  static var Text_Q3_T2_Answer = "Colors";

  static var Text_Q3_T3_Controller = new TextEditingController();
  static var Text_Q3_T3_Answer = "orange";

  List Text_Q3_list = [
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
          "         Text(\n"
          "          'Rainbow',\n"
          "          style: TextStyle(",
    ),
    CmpQuizz_TextField_Text_TextField_Text_TextField_Text(
      Spacing:64.0,
      TC1_Controller:Text_Q3_T1_Controller,
      TC1_Width:Text_Q3_T1_Answer.length*10.0,
      TC1_MaxLength:Text_Q3_T1_Answer.length,
      Text1:":",
      TC2_Controller:Text_Q3_T2_Controller,
      TC2_Width:Text_Q3_T2_Answer.length*10.0,
      TC2_MaxLength:Text_Q3_T2_Answer.length,
      Text2:".",
      TC3_Controller:Text_Q3_T3_Controller,
      TC3_Width:Text_Q3_T3_Answer.length*10.0,
      TC3_MaxLength:Text_Q3_T3_Answer.length,
      Text3:",",
    ),
    Text(
          "                 ),\n"
          "                ),\n"
          "\t             ),\n"
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



  String Text_Q4_TxtSol ="fontWeight:\n  FontWeight.bold";

  String Text_Q4_Question = "Fill The Missing Fields To Turn Text(Flutter) Into Bold";

  static var Text_Q4_T1_Controller = new TextEditingController();
  static var Text_Q4_T1_Answer = "fontWeight";

  static var Text_Q4_T2_Controller = new TextEditingController();
  static var Text_Q4_T2_Answer = "FontWeight";

  static var Text_Q4_T3_Controller = new TextEditingController();
  static var Text_Q4_T3_Answer = "bold";

  List Text_Q4_list = [
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
          "         Text(\n"
          "          'Flutter',\n"
          "          style: TextStyle(",
    ),
    CmpQuizz_TextField_Text_TextField_Text_TextField_Text(
      Spacing:64.0,
      TC1_Controller:Text_Q4_T1_Controller,
      TC1_Width:Text_Q4_T1_Answer.length*10.0,
      TC1_MaxLength:Text_Q4_T1_Answer.length,
      Text1:":",
      TC2_Controller:Text_Q4_T2_Controller,
      TC2_Width:Text_Q4_T2_Answer.length*10.0,
      TC2_MaxLength:Text_Q4_T2_Answer.length,
      Text2:".",
      TC3_Controller:Text_Q4_T3_Controller,
      TC3_Width:Text_Q4_T3_Answer.length*10.0,
      TC3_MaxLength:Text_Q4_T3_Answer.length,
      Text3:",",
    ),
    Text(
      "                 ),\n"
          "                ),\n"
          "\t             ),\n"
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


  String Text_Q5_TxtSol ="fontStyle:\n  FontStyle.italic";

  String Text_Q5_Question = "Fill The Missing Fields To Turn Text(Google) Into Italic";

  static var Text_Q5_T1_Controller = new TextEditingController();
  static var Text_Q5_T1_Answer = "fontStyle";

  static var Text_Q5_T2_Controller = new TextEditingController();
  static var Text_Q5_T2_Answer = "FontStyle";

  static var Text_Q5_T3_Controller = new TextEditingController();
  static var Text_Q5_T3_Answer = "italic";

  List Text_Q5_list = [
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
          "         Text(\n"
          "          'Google',\n"
          "          style: TextStyle(",
    ),
    CmpQuizz_TextField_Text_TextField_Text_TextField_Text(
      Spacing:64.0,
      TC1_Controller:Text_Q5_T1_Controller,
      TC1_Width:Text_Q5_T1_Answer.length*10.0,
      TC1_MaxLength:Text_Q5_T1_Answer.length,
      Text1:":",
      TC2_Controller:Text_Q5_T2_Controller,
      TC2_Width:Text_Q5_T2_Answer.length*10.0,
      TC2_MaxLength:Text_Q5_T2_Answer.length,
      Text2:".",
      TC3_Controller:Text_Q5_T3_Controller,
      TC3_Width:Text_Q5_T3_Answer.length*10.0,
      TC3_MaxLength:Text_Q5_T3_Answer.length,
      Text3:",",
    ),
    Text(
      "                 ),\n"
          "                ),\n"
          "\t             ),\n"
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


  String Text_Q6_TxtSol ="decoration:\n  TextDecoration.underline";

  String Text_Q6_Question = "Fill The Missing Field To Turn Text(Bye) Underlined ";

  static var Text_Q6_T1_Controller = new TextEditingController();
  static var Text_Q6_T1_Answer = "decoration";

  static var Text_Q6_T2_Controller = new TextEditingController();
  static var Text_Q6_T2_Answer = "TextDecoration";

  static var Text_Q6_T3_Controller = new TextEditingController();
  static var Text_Q6_T3_Answer = "underline";

  List Text_Q6_list = [
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
          "         Text(\n"
          "          'Bye',\n"
          "          style: TextStyle(",
    ),
    CmpQuizz_TextField_Text_TextField_Text_TextField_Text(
      Spacing:64.0,
      TC1_Controller:Text_Q6_T1_Controller,
      TC1_Width:Text_Q6_T1_Answer.length*10.0,
      TC1_MaxLength:Text_Q6_T1_Answer.length,
      Text1:":",
      TC2_Controller:Text_Q6_T2_Controller,
      TC2_Width:Text_Q6_T2_Answer.length*10.0,
      TC2_MaxLength:Text_Q6_T2_Answer.length,
      Text2:".",
      TC3_Controller:Text_Q6_T3_Controller,
      TC3_Width:Text_Q6_T3_Answer.length*10.0,
      TC3_MaxLength:Text_Q6_T3_Answer.length,
      Text3:",",
    ),
    Text(
      "                 ),\n"
          "                ),\n"
          "\t             ),\n"
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


  String Text_Q7_TxtSol ="decoration:\n  TextDecoration.lineThrough";

  String Text_Q7_Question = "Fill The Missing Field To Turn Text(Bird) LineThrough";

  static var Text_Q7_T1_Controller = new TextEditingController();
  static var Text_Q7_T1_Answer = "decoration";

  static var Text_Q7_T2_Controller = new TextEditingController();
  static var Text_Q7_T2_Answer = "TextDecoration";

  static var Text_Q7_T3_Controller = new TextEditingController();
  static var Text_Q7_T3_Answer = "lineThrough";

  List Text_Q7_list = [
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
          "         Text(\n"
          "          'Bird',\n"
          "          style: TextStyle(",
    ),
    CmpQuizz_TextField_Text_TextField_Text_TextField_Text(
      Spacing:64.0,
      TC1_Controller:Text_Q7_T1_Controller,
      TC1_Width:Text_Q7_T1_Answer.length*10.0,
      TC1_MaxLength:Text_Q7_T1_Answer.length,
      Text1:":",
      TC2_Controller:Text_Q7_T2_Controller,
      TC2_Width:Text_Q7_T2_Answer.length*10.0,
      TC2_MaxLength:Text_Q7_T2_Answer.length,
      Text2:".",
      TC3_Controller:Text_Q7_T3_Controller,
      TC3_Width:Text_Q7_T3_Answer.length*10.0,
      TC3_MaxLength:Text_Q7_T3_Answer.length,
      Text3:",",
    ),
    Text(
      "                 ),\n"
          "                ),\n"
          "\t             ),\n"
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


  String Text_Q8_TxtSol ="fontSize:40";

  String Text_Q8_Question = "Fill The Missing Fields To Turn Text(F40) Size To 40";

  static var Text_Q8_T1_Controller = new TextEditingController();
  static var Text_Q8_T1_Answer = "fontSize";

  static var Text_Q8_T2_Controller = new TextEditingController();
  static var Text_Q8_T2_Answer = "40";


  List Text_Q8_list = [
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
          "         Text(\n"
          "          'F40',\n"
          "          style: TextStyle(",
    ),
    CmpQuizz_TextField_Text_TextField_Text(
      Spacing:64.0,
      TC1_Controller:Text_Q8_T1_Controller,
      TC1_Width:Text_Q8_T1_Answer.length*10.0,
      TC1_MaxLength:Text_Q8_T1_Answer.length,
      Text1:":",
      TC2_Controller:Text_Q8_T2_Controller,
      TC2_Width:Text_Q8_T2_Answer.length*10.0,
      TC2_MaxLength:Text_Q8_T2_Answer.length,
      Text2:",",
    ),
    Text(
      "                 ),\n"
          "                ),\n"
          "\t             ),\n"
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

  static var Text_Q9_T1_Controller = new TextEditingController();
  static var Text_Q9_T1_Answer = "text";

  static var Text_Q9_T2_Controller = new TextEditingController();
  static var Text_Q9_T2_Answer = "TextStyle";

  static var Text_Q9_T3_Controller = new TextEditingController();
  static var Text_Q9_T3_Answer = "color";

  static var Text_Q9_T4_Controller = new TextEditingController();
  static var Text_Q9_T4_Answer = "text";

  static var Text_Q9_T5_Controller = new TextEditingController();
  static var Text_Q9_T5_Answer = "TextStyle";

  static var Text_Q9_T6_Controller = new TextEditingController();
  static var Text_Q9_T6_Answer = "color";

  static var Text_Q9_T7_Controller = new TextEditingController();
  static var Text_Q9_T7_Answer = "fontWeight";

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
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------




















}
