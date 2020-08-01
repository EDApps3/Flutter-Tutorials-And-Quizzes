import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/1_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/Cmp_Fields_Quizz.dart';
import 'dart:math';


class cl_FlutterSyntaxe extends StatefulWidget {
  cl_FlutterSyntaxe({Key key}) : super(key: key);
  cl_FlutterSyntaxe_State createState() => cl_FlutterSyntaxe_State();
}

class cl_FlutterSyntaxe_State extends State<cl_FlutterSyntaxe> {
  int GestureDetectorQuizzRan=new Random().nextInt(3);

  var Text_NullController= new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

      (GestureDetectorQuizzRan == 0) ?
      Cmp_Fields_Quizz (
        AppBarTitle: "Flutter Syntaxe Quizz",
        Question: FlutterSyntaxe_Q1_Question,
        SolutionTxt: FlutterSyntaxe_Q1_TxtSol,
        GoRoute: "/Generate_FlutterSyntaxe_Quizz",
        Ans1Txt: FlutterSyntaxe_Q1_T1_Controller,
        Ans2Txt: FlutterSyntaxe_Q1_T2_Controller,
        Ans3Txt: Text_NullController,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: FlutterSyntaxe_Q1_T1_Answer,
        CorrectAns2: FlutterSyntaxe_Q1_T2_Answer,
        CorrectAns3: "NotSet",
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: FlutterSyntaxe_Q1_list,
      ) :



      (GestureDetectorQuizzRan == 1) ?
       Cmp_Fields_Quizz (
        AppBarTitle: "Flutter Syntaxe Quizz",
        Question: FlutterSyntaxe_Q2_Question,
        SolutionTxt: FlutterSyntaxe_Q2_TxtSol,
        GoRoute: "/Generate_FlutterSyntaxe_Quizz",
        Ans1Txt: FlutterSyntaxe_Q2_T1_Controller,
        Ans2Txt: FlutterSyntaxe_Q2_T2_Controller,
        Ans3Txt: Text_NullController,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: FlutterSyntaxe_Q2_T1_Answer,
        CorrectAns2: FlutterSyntaxe_Q2_T2_Answer,
        CorrectAns3: "NotSet",
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: FlutterSyntaxe_Q2_list,
       ) :



      (GestureDetectorQuizzRan == 2) ?
       Cmp_Fields_Quizz (
        AppBarTitle: "Flutter Syntaxe Quizz",
        Question: FlutterSyntaxe_Q3_Question,
        SolutionTxt: FlutterSyntaxe_Q3_TxtSol,
        GoRoute: "/Generate_FlutterSyntaxe_Quizz",
        Ans1Txt: FlutterSyntaxe_Q3_T1_Controller,
        Ans2Txt: FlutterSyntaxe_Q3_T2_Controller,
        Ans3Txt: Text_NullController,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: FlutterSyntaxe_Q3_T1_Answer,
        CorrectAns2: FlutterSyntaxe_Q3_T2_Answer,
        CorrectAns3: "NotSet",
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: FlutterSyntaxe_Q3_list,
       ) :


      Cmp_Fields_Quizz (
        AppBarTitle: "Flutter Syntaxe Quizz",
        Question: FlutterSyntaxe_Q4_Question,
        SolutionTxt: FlutterSyntaxe_Q4_TxtSol,
        GoRoute: "/Generate_FlutterSyntaxe_Quizz",
        Ans1Txt: FlutterSyntaxe_Q4_T1_Controller,
        Ans2Txt: FlutterSyntaxe_Q4_T2_Controller,
        Ans3Txt: Text_NullController,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: FlutterSyntaxe_Q4_T1_Answer,
        CorrectAns2: FlutterSyntaxe_Q4_T2_Answer,
        CorrectAns3: "NotSet",
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: FlutterSyntaxe_Q4_list,
      ),




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

  String FlutterSyntaxe_Q1_TxtSol =
  "SourceCodeView(\n"
  " filePath:\n"
  "  'lib/Codes_FrontEnd/SourceCode.txt',\n"
  ")";


  String FlutterSyntaxe_Q1_Question = "Fill The Missing Fields To Loads A SourceCode.txt";

  static var FlutterSyntaxe_Q1_T1_Controller = new TextEditingController();
  static var FlutterSyntaxe_Q1_T1_Answer = "SourceCodeView";

  static var FlutterSyntaxe_Q1_T2_Controller = new TextEditingController();
  static var FlutterSyntaxe_Q1_T2_Answer = "filePath";


  List FlutterSyntaxe_Q1_list = [
    Text(
       "import 'package:flutter/material.dart';\n\n"

        "void main() {\n"
        "  runApp(Quizz());\n"
        "}\n\n"

        "class Quizz extends StatelessWidget{\n"
        "  @override\n"
        "  Widget build(BuildContext context) {\n"
        "   return MaterialApp(\n"
        "     debugShowCheckedModeBanner:false,\n"
        "     title:'Quizz',\n"
        "     home:\n"
        "      new Scaffold(\n"
        "       appBar: AppBar(\n"
        "         title:Text('Flutter Syntaxe'),\n"
        "       ),\n"
        "      body:\n"
    ),
    CmpQuizz_TextField_Text(
        Spacing: 60.0,
        TC1_Controller: FlutterSyntaxe_Q1_T1_Controller,
        TC1_Width:FlutterSyntaxe_Q1_T1_Answer.length*10.0,
        TC1_MaxLength:FlutterSyntaxe_Q1_T1_Answer.length,
        Text1: "(",
    ),
    CmpQuizz_TextField_Text(
        Spacing: 63.0,
        TC1_Controller: FlutterSyntaxe_Q1_T2_Controller,
        TC1_Width:FlutterSyntaxe_Q1_T2_Answer.length*10.0,
        TC1_MaxLength:FlutterSyntaxe_Q1_T2_Answer.length,
        Text1: ":'lib/Codes_FrontEnd/SourceCode.txt',",
    ),
    Text(
          "        ),\n"
          "       ),\n"
          "      );\n"
          "     }\n"
          " }\n",
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


  String FlutterSyntaxe_Q2_TxtSol =
     "SourceCodeView(\n"
     " codeLinkPrefix:\n"
     " 'www.Host.com/Codes/SourceCode.txt',\n"
     ")";

  String FlutterSyntaxe_Q2_Question = "Fill The Missing Fields To Loads A SourceCode.txt";

  static var FlutterSyntaxe_Q2_T1_Controller = new TextEditingController();
  static var FlutterSyntaxe_Q2_T1_Answer = "SourceCodeView";

  static var FlutterSyntaxe_Q2_T2_Controller = new TextEditingController();
  static var FlutterSyntaxe_Q2_T2_Answer = "filePath";


  List FlutterSyntaxe_Q2_list = [
    Text(
        "import 'package:flutter/material.dart';\n\n"

            "void main() {\n"
            "  runApp(Quizz());\n"
            "}\n\n"

            "class Quizz extends StatelessWidget{\n"
            "  @override\n"
            "  Widget build(BuildContext context) {\n"
            "   return MaterialApp(\n"
            "     debugShowCheckedModeBanner:false,\n"
            "     title:'Quizz',\n"
            "     home:\n"
            "      new Scaffold(\n"
            "       appBar: AppBar(\n"
            "         title:Text('Flutter Syntaxe'),\n"
            "       ),\n"
            "      body:\n"
    ),
    CmpQuizz_TextField_Text(
      Spacing: 60.0,
      TC1_Controller: FlutterSyntaxe_Q1_T1_Controller,
      TC1_Width:FlutterSyntaxe_Q1_T1_Answer.length*10.0,
      TC1_MaxLength:FlutterSyntaxe_Q1_T1_Answer.length,
      Text1: "(",
    ),
    CmpQuizz_TextField_Text(
      Spacing: 63.0,
      TC1_Controller: FlutterSyntaxe_Q2_T2_Controller,
      TC1_Width:FlutterSyntaxe_Q2_T2_Answer.length*10.0,
      TC1_MaxLength:FlutterSyntaxe_Q2_T2_Answer.length,
      Text1: ":'www.Host.com/Codes/SourceCode.txt',",
    ),
    Text(
          "        ),\n"
          "       ),\n"
          "      );\n"
          "     }\n"
          " }\n",
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



  String FlutterSyntaxe_Q3_TxtSol =
      "WidgetWithCodeView(\n"
      " filePath:\n"
      "  'lib/Codes_FrontEnd/QuizzCode.txt',\n"
      " child:Quizz(),\n"
      ")";

  String FlutterSyntaxe_Q3_Question = "Fill The Missing Fields To Loads QuizzCode.txt Code And Its Result";

  static var FlutterSyntaxe_Q3_T1_Controller = new TextEditingController();
  static var FlutterSyntaxe_Q3_T1_Answer = "WidgetWithCodeView";

  static var FlutterSyntaxe_Q3_T2_Controller = new TextEditingController();
  static var FlutterSyntaxe_Q3_T2_Answer = "filePath";


  List FlutterSyntaxe_Q3_list = [
    Text(
            "import 'package:flutter/material.dart';\n\n"

            "void main() {\n"
            "  runApp(Quizz());\n"
            "}\n\n"

            "class Quizz extends StatelessWidget{\n"
            "  @override\n"
            "  Widget build(BuildContext context) {\n"
            "   return MaterialApp(\n"
            "     debugShowCheckedModeBanner:false,\n"
            "     title:'Quizz',\n"
            "     home:\n"
            "      new Scaffold(\n"
            "       appBar: AppBar(\n"
            "         title:Text('Flutter Syntaxe'),\n"
            "       ),\n"
            "      body:\n"
    ),
    CmpQuizz_TextField_Text(
      Spacing: 60.0,
      TC1_Controller: FlutterSyntaxe_Q3_T1_Controller,
      TC1_Width:FlutterSyntaxe_Q3_T1_Answer.length*10.0,
      TC1_MaxLength:FlutterSyntaxe_Q3_T1_Answer.length,
      Text1: "(",
    ),
    CmpQuizz_TextField_Text(
      Spacing: 63.0,
      TC1_Controller: FlutterSyntaxe_Q3_T2_Controller,
      TC1_Width:FlutterSyntaxe_Q3_T2_Answer.length*10.0,
      TC1_MaxLength:FlutterSyntaxe_Q3_T2_Answer.length,
      Text1: ":'lib/Codes_FrontEnd/QuizzCode.txt',",
    ),
    Text(
          "        child:Quizz(),\n"
          "        ),\n"
          "       ),\n"
          "      );\n"
          "     }\n"
          " }\n",
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


  String FlutterSyntaxe_Q4_TxtSol =
      "WidgetWithCodeView(\n"
      " codeLinkPrefix:\n"
      " 'www.Host.com/Codes/QuizzCode.txt',\n"
      " child:Quizz(),\n"
      ")";

  String FlutterSyntaxe_Q4_Question = "Fill The Missing Fields To Loads QuizzCode.txt Code And Its Result";

  static var FlutterSyntaxe_Q4_T1_Controller = new TextEditingController();
  static var FlutterSyntaxe_Q4_T1_Answer = "WidgetWithCodeView";

  static var FlutterSyntaxe_Q4_T2_Controller = new TextEditingController();
  static var FlutterSyntaxe_Q4_T2_Answer = "codeLinkPrefix";


  List FlutterSyntaxe_Q4_list = [
    Text(
        "import 'package:flutter/material.dart';\n\n"

            "void main() {\n"
            "  runApp(Quizz());\n"
            "}\n\n"

            "class Quizz extends StatelessWidget{\n"
            "  @override\n"
            "  Widget build(BuildContext context) {\n"
            "   return MaterialApp(\n"
            "     debugShowCheckedModeBanner:false,\n"
            "     title:'Quizz',\n"
            "     home:\n"
            "      new Scaffold(\n"
            "       appBar: AppBar(\n"
            "         title:Text('Flutter Syntaxe'),\n"
            "       ),\n"
            "      body:\n"
    ),
    CmpQuizz_TextField_Text(
      Spacing: 60.0,
      TC1_Controller: FlutterSyntaxe_Q4_T1_Controller,
      TC1_Width:FlutterSyntaxe_Q4_T1_Answer.length*10.0,
      TC1_MaxLength:FlutterSyntaxe_Q4_T1_Answer.length,
      Text1: "(",
    ),
    CmpQuizz_TextField_Text(
      Spacing: 63.0,
      TC1_Controller: FlutterSyntaxe_Q4_T2_Controller,
      TC1_Width:FlutterSyntaxe_Q4_T2_Answer.length*10.0,
      TC1_MaxLength:FlutterSyntaxe_Q4_T2_Answer.length,
      Text1: ":'www.Host.com/Codes/SourceCode.txt',",
    ),
    Text(
          "        child:Quizz(),\n"
          "        ),\n"
          "       ),\n"
          "      );\n"
          "     }\n"
          " }\n",
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
