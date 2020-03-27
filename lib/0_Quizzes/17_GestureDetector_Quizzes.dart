import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/1_TextField_Text.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/Cmp_Fields_Quizz.dart';
import 'dart:math';


class cl_GestureDetector extends StatefulWidget {
  cl_GestureDetector({Key key}) : super(key: key);
  cl_GestureDetector_State createState() => cl_GestureDetector_State();
}

class cl_GestureDetector_State extends State<cl_GestureDetector> {
  int GestureDetectorQuizzRan=new Random().nextInt(3);

  var Text_NullController= new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      title: "Generate Quizzes",
      debugShowCheckedModeBanner: false,
      home:

      (GestureDetectorQuizzRan == 0) ?
      Cmp_Fields_Quizz (
        AppBarTitle: "Gesture Detector Quizz",
        Question: GestureDetector_Q1_Question,
        SolutionTxt: GestureDetector_Q1_TxtSol,
        GoRoute: "/Generate_GestureDetector_Quizz",
        Ans1Txt: GestureDetector_Q1_T1_Controller,
        Ans2Txt: GestureDetector_Q1_T2_Controller,
        Ans3Txt: Text_NullController,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: GestureDetector_Q1_T1_Answer,
        CorrectAns2: GestureDetector_Q1_T2_Answer,
        CorrectAns3: "NotSet",
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: GestureDetector_Q1_list,
      ) :




      Cmp_Fields_Quizz (
        AppBarTitle: "Gesture Detector Quizz",
        Question: GestureDetector_Q1_Question,
        SolutionTxt: GestureDetector_Q1_TxtSol,
        GoRoute: "/Generate_GestureDetector_Quizz",
        Ans1Txt: GestureDetector_Q1_T1_Controller,
        Ans2Txt: GestureDetector_Q1_T2_Controller,
        Ans3Txt: Text_NullController,
        Ans4Txt: Text_NullController,
        Ans5Txt: Text_NullController,
        Ans6Txt: Text_NullController,
        Ans7Txt: Text_NullController,
        CorrectAns1: GestureDetector_Q1_T1_Answer,
        CorrectAns2: GestureDetector_Q1_T2_Answer,
        CorrectAns3: "NotSet",
        CorrectAns4: "NotSet",
        CorrectAns5: "NotSet",
        CorrectAns6: "NotSet",
        CorrectAns7: "NotSet",
        QuizzList: GestureDetector_Q1_list,
      ) ,







      routes: <String, WidgetBuilder>{
        "/Generate_GestureDetector_Quizz": (BuildContext context) => cl_GestureDetector(),
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

  String GestureDetector_Q1_TxtSol =
      "GestureDetector(\n"
      " child:Text('Hi'),\n"
      " onTap: (){},\n"
      "),";

  String GestureDetector_Q1_Question = "Fill The Missing Fields To Create Gesture Detctor On Text Hi";

  static var GestureDetector_Q1_T1_Controller = new TextEditingController();
  static var GestureDetector_Q1_T1_Answer = "GestureDetector";

  static var GestureDetector_Q1_T2_Controller = new TextEditingController();
  static var GestureDetector_Q1_T2_Answer = "child";


  List GestureDetector_Q1_list = [
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
        "         title:Text('GestureDetector'),\n"
        "       ),\n"
        "      body:\n"
        "       Center(\n"
        "        child:",
    ),
    CmpQuizz_TextField_Text(
        Spacing: 60.0,
        TC1_Controller: GestureDetector_Q1_T1_Controller,
        TC1_Width:GestureDetector_Q1_T1_Answer.length*10.0,
        TC1_MaxLength:GestureDetector_Q1_T1_Answer.length,
        Text1: "(",
    ),
    CmpQuizz_TextField_Text(
        Spacing: 63.0,
        TC1_Controller: GestureDetector_Q1_T2_Controller,
        TC1_Width:GestureDetector_Q1_T2_Answer.length*10.0,
        TC1_MaxLength:GestureDetector_Q1_T2_Answer.length,
        Text1: ":Text('Hi'),",
    ),
    Text(
      "          onTap: (){},\n"
          "         ),\n"
          "        ),\n"
          "       ),\n"
          "      );\n"
          "     }\n"
          "   }\n"
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
