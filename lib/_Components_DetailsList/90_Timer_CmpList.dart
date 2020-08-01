import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


String Timer_CountDown_Explanation=
    "Soon!\n\n";


List Timer_CountDown_list =[
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"What Is Timer?",),
              Divider(),
              CmpSubTitle(SubTitle:"A Countdown timer that can be configured to fire once or repeatedly.The timer counts down from the specified duration to 0. When the timer reaches 0, the timer invokes the specified callback function. Use a periodic timer to repeatedly count down the same interval.",),
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Code:",),
              Divider(),
              CmpSubTitle(SubTitle:"1-Creating Timer Variable:\n",),
              CmpCode(CodeTxt:"Timer _timer;\n"),

              CmpSubTitle(SubTitle:"2-Creating Timer Start Index To Start Count From:\n",),
              CmpCode(CodeTxt:"int _start = 0;\n"),

              CmpSubTitle(SubTitle:"3-Creating Start Timer Method:\n",),
              CmpCode(
                CodeTxt:
                 "void startTimer(int timerDuration) {\n"
                 " if (_timer != null) {\n"
                 "   _timer.cancel();\n"
                 " }\n"
                 " setState(() {\n"
                 "  _start = timerDuration;\n"
                 " });\n"
                 " const oneSec = const Duration(seconds: 1);\n"
                 " _timer = new Timer.periodic(\n"
                 "   oneSec,\n"
                 "   (Timer timer) => setState(() {\n"
                 "     if (_start < 1) {\n"
                 "       timer.cancel();\n"
                 "     }\n"
                 "     else {\n"
                 "      _start = _start - 1;\n"
                 "     }\n"
                 "   }),\n"
                 "  );\n"
                 "}"
              ),

              CmpSubTitle(SubTitle:"4-Creating Pause Timer Method:\n",),
              CmpCode(
                CodeTxt:
                 "void pauseTimer() {\n"
                 "  if (_timer != null){\n"
                 "   _timer.cancel();\n"
                 "  } \n"
                 "}"
              ),

              CmpSubTitle(SubTitle:"5-Creating Continue Timer Method:\n",),
              CmpCode(
                CodeTxt:
                "void ContinueTimer(){\n"
                "  startTimer(_start);\n"
                "} "
              ),


            ]
        ),
      ),
    ),
  ),
];

//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------

String Timer_DaysCountDown_Explanation=
    "Soon!\n\n";


List Timer_DaysCountDown_list =[
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"What Is Timer?",),
              Divider(),
              CmpSubTitle(SubTitle:"A Countdown timer that can be configured to fire once or repeatedly.The timer counts down from the specified duration to 0. When the timer reaches 0, the timer invokes the specified callback function. Use a periodic timer to repeatedly count down the same interval.",),
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Code:",),
              Divider(),
              CmpSubTitle(SubTitle:"1-Creating Timer Variable:\n",),
              CmpCode(CodeTxt:"Timer _timer;\n"),

              CmpSubTitle(SubTitle:"2-Creating Timer Start Index To Start Count From:\n",),
              CmpCode(CodeTxt:"int _start = 0;\n"),

              CmpSubTitle(SubTitle:"3-Creating Start Timer Method:\n",),
              CmpCode(
                CodeTxt:
                 "void startTimer(int timerDuration) {\n"
                 " if (_timer != null) {\n"
                 "   _timer.cancel();\n"
                 " }\n"
                 " setState(() {\n"
                 "  _start = timerDuration;\n"
                 " });\n"
                 " const oneSec = const Duration(seconds: 1);\n"
                 " _timer = new Timer.periodic(\n"
                 "   oneSec,\n"
                 "   (Timer timer) => setState(() {\n"
                 "     if (_start < 1) {\n"
                 "       timer.cancel();\n"
                 "     }\n"
                 "     else {\n"
                 "      _start = _start - 1;\n"
                 "     }\n"
                 "   }),\n"
                 "  );\n"
                 "}"
              ),

            
            ]
        ),
      ),
    ),
  ),
];

//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------

