import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';

String FlushBar_Simple_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(SimpleFlushBarRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Raised Button That Show FlushBar(No State Change In Both Button And FlushBar)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Has An Scaffold That Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As AppBar It Has An Title\n\n"
    "-As An Body It Has Centered Layout\n\n"
    "-Centered Layout Contain The Raised Button\n\n"
    "-When The Raised Button Is Pressed It Call A Method ShowFlushBar That Take Context As Parameter\n\n"
    "-This method Take An FlushBar Having Its Title And Its Message\n\n"
    "-Finally Showing The FlushBar\n\n";


List FlushBar_Simple_list =[
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
              CmpTitle(Title:"Getting Started:",),
              Divider(),
              CmpSubTitle(SubTitle:"\nWe Need To Head To Yaml And Add:\n\n",),
              Image.asset("Images/FB1.PNG"),
              CmpSubTitle(SubTitle:"\nDon't Forget To Get Packages!\n\n",),
              CmpSubTitle(SubTitle:"\nWhen We Need To Use It We Have To Import:\nimport 'package:flushbar/flushbar.dart';\n",),
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:10,),
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
              CmpCode(
                CodeTxt:
                    "void FB(BuildContext context){\n"
                    " Flushbar(\n"
                    "  title:\n"
                    "    'Title Text',\n"
                    "  message:\n"
                    "    'Message Text',\n"
                    " )..show(context);\n"
                    "}\n",
              )
            ]
        ),
      ),
    ),
  ),
];


//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------


String FlushBar_RedBg_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(FlushBarBGRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Raised Button That Show FlushBar(No State Change In Both Button And FlushBar)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Take Scaffold That Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As AppBar It Has An Title\n\n"
    "-As An Body It Has Centered Layout\n\n"
    "-Centered Layout Contain The Raised Button\n\n"
    "-When The Raised Button Is Pressed It Call A Method ShowFlushBar That Take Context As Parameter\n\n"
    "-This method Take An FlushBar Having Its Title And Its Message With A Red Background Color\n\n"
    "-Finally Showing The FlushBar\n\n";


List FlushBar_RedBg_list =[
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
              CmpTitle(Title:"Getting Started:",),
              Divider(),
              CmpSubTitle(SubTitle:"\nWe Need To Head To Yaml And Add:\n\n",),
              Image.asset("Images/FB1.PNG"),
              CmpSubTitle(SubTitle:"\nDon't Forget To Get Packages!\n\n",),
              CmpSubTitle(SubTitle:"\nWhen We Need To Use It We Have To Import:\nimport 'package:flushbar/flushbar.dart';\n",),
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:10,),
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
              CmpCode(
                CodeTxt:
                    "void FB(BuildContext context){\n"
                    " Flushbar(\n"
                    "  title:\n"
                    "    'Title Text',\n"
                    "  message:\n"
                    "    'Message Text',\n"
                    "  backgroundColor:\n"
                    "     Colors.red,\n"
                    " )..show(context);\n"
                    "}\n"
              )
            ]
        ),
      ),
    ),
  ),
];


//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------


String FlushBar_Yellow_Text_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(FlushBarYWTxtRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Raised Button That Show FlushBar(No State Change In Both Button And FlushBar)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Take Scaffold That Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As AppBar It Has An Title\n\n"
    "-As An Body It Has Centered Layout\n\n"
    "-Centered Layout Contain The Raised Button\n\n"
    "-When The Raised Button Is Pressed It Call A Method ShowFlushBar That Take Context As Parameter\n\n"
    "-This method Take An FlushBar Having Its Title Text And Its Message Text\n\n"
    "-titleText,messageText Used To Style The Text\n\n"
    "-Finally Showing The FlushBar\n\n";


List FlushBar_Yellow_Text_list =[
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
              CmpTitle(Title:"Getting Started:",),
              Divider(),
              CmpSubTitle(SubTitle:"\nWe Need To Head To Yaml And Add:\n\n",),
              Image.asset("Images/FB1.PNG"),
              CmpSubTitle(SubTitle:"\nDon't Forget To Get Packages!\n\n",),
              CmpSubTitle(SubTitle:"\nWhen We Need To Use It We Have To Import:\nimport 'package:flushbar/flushbar.dart';\n",),
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:10,),
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
              CmpCode(
                  CodeTxt:
                      "void ShowFB(BuildContext context){\n"
                      " Flushbar(\n"
                      "  titleText:\n"
                      "   Text(\n"
                      "   'TitleText'\n"
                      "   style:TextStyle(\n"
                      "    color:Colors.yellow\n"
                      "   ),\n"
                      "  ),\n"
                      "  messageText:\n"
                      "   Text(\n"
                      "    'MessageTitle'\n"
                      "    style:TextStyle(\n"
                      "     color:Colors.yellow\n"
                      "    ),\n"
                      "   ),\n"
                      "  )..show(context);\n"
                      "}\n"
              )
            ]
        ),
      ),
    ),
  ),
];


//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------


String FlushBar_Icon_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(FlushBarIconRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Raised Button That Show FlushBar(No State Change In Both Button And FlushBar)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Take Scaffold Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As AppBar It Has An Title\n\n"
    "-As An Body It Has Centered Layout\n\n"
    "-Centered Layout Contain The Raised Button\n\n"
    "-When The Raised Button Is Pressed It Call A Method ShowFlushBar That Take Context As Parameter\n\n"
    "-This method Take An FlushBar Having Its Title And Its Message And Icon Taking Icon Needed\n\n"
    "-Icon Color Set To White\n\n"
    "-Finally Showing The FlushBar\n\n";

List FlushBar_Icon_list =[
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
              CmpTitle(Title:"Getting Started:",),
              Divider(),
              CmpSubTitle(SubTitle:"\nWe Need To Head To Yaml And Add:\n\n",),
              Image.asset("Images/FB1.PNG"),
              CmpSubTitle(SubTitle:"\nDon't Forget To Get Packages!\n\n",),
              CmpSubTitle(SubTitle:"\nWhen We Need To Use It We Have To Import:\nimport 'package:flushbar/flushbar.dart';\n",),
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:10,),
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
              CmpCode(
                  CodeTxt:
                      "void FB(BuildContext context){\n"
                      " Flushbar(\n"
                      "  title:\n"
                      "    'Title Text',\n"
                      "  message:\n"
                      "    'Message Text',\n"
                      "  icon:\n"
                      "    new Icon(Icons.info),\n"
                      " )..show(context);\n"
                      "}\n"
              )
            ]
        ),
      ),
    ),
  ),
];


//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------


String FlushBar_MainButton_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(FlushBarMainBtnRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Raised Button That Show FlushBar(No State Change In Both Button And FlushBar)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Take An Scaffold That Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As AppBar It Has An Title\n\n"
    "-As An Body It Has Centered Layout\n\n"
    "-Centered Layout Contain The Raised Button\n\n"
    "-When The Raised Button Is Pressed It Call A Method ShowFlushBar That Take Context As Parameter\n\n"
    "-This method Take An FlushBar Having Its Title And Its Message\n\n"
    "-It Take A Main Button That Has A Flat Button Having As A Value Go,White Text,Blue Background Color,When Pressed It Launch A Url That Take The user To The App On PlayStore!\n\n"
    "-Finally Showing The FlushBar\n\n";

List FlushBar_MainButton_list =[
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
              CmpTitle(Title:"Getting Started:",),
              Divider(),
              CmpSubTitle(SubTitle:"\nWe Need To Head To Yaml And Add:\n\n",),
              Image.asset("Images/FB1.PNG"),
              CmpSubTitle(SubTitle:"\nDon't Forget To Get Packages!\n\n",),
              CmpSubTitle(SubTitle:"\nWhen We Need To Use It We Have To Import:\nimport 'package:flushbar/flushbar.dart';\n",),
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:10,),
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
              CmpCode(
                  CodeTxt:
                     "void FB(BuildContext context){\n"
                      " Flushbar(\n"
                      "  title:\n"
                      "    'Title Text',\n"
                      "  message:\n"
                      "    'Message Text',\n"
                      "  mainButton:\n"
                      "   FlatButton(\n"
                      "    child:Text('Go!'),\n"
                      "   onPressed:{\n"
                      "    //Do\n"
                      "   }\n"
                      ")\n"
                      " )..show(context);\n"
                      "}\n"
              )
            ]
        ),
      ),
    ),
  ),
];


//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------


String FlushBar_Position_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(FlushBarPosRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Raised Button That Show FlushBar(No State Change In Both Button And FlushBar)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Take An Scaffold That Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As AppBar It Has An Title\n\n"
    "-As An Body It Has Centered Layout\n\n"
    "-Centered Layout Contain The Raised Button\n\n"
    "-When The Raised Button Is Pressed It Call 2 Methods That Take Context As Parameter\n\n"
    "-This 2 methods Take An FlushBar Having Its Title And Its Message\n\n"
    "-Position Displayed Using flushbarPosition:\n-Top-> FlushbarPosition.TOP\n-Bottom-> FlushbarPosition.BOTTOM";

List FlushBar_Position_list =[
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
              CmpTitle(Title:"Getting Started:",),
              Divider(),
              CmpSubTitle(SubTitle:"\nWe Need To Head To Yaml And Add:\n\n",),
              Image.asset("Images/FB1.PNG"),
              CmpSubTitle(SubTitle:"\nDon't Forget To Get Packages!\n\n",),
              CmpSubTitle(SubTitle:"\nWhen We Need To Use It We Have To Import:\nimport 'package:flushbar/flushbar.dart';\n",),
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:10,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Top Code:",),
              Divider(),
              CmpCode(
                  CodeTxt:
                      "void TopFB(BuildContext context){\n"
                      " Flushbar(\n"
                      "  title:'Text',\n"
                      "  message:'Text',\n"
                      "  flushbarPosition:\n"
                      "   FlushbarPosition.TOP,\n"
                      " )..show(context);\n"
                      "}\n",
              )
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:10,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Bottom Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "void BottomFB(BuildContext context){\n"
                    " Flushbar(\n"
                    "  title:'Text',\n"
                    "  message:'Text',\n"
                    "  flushbarPosition:\n"
                    "   FlushbarPosition.BOTTOM,,\n"
                    " )..show(context);\n"
                    "}\n",
              )
            ]
        ),
      ),
    ),
  ),
];


//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------



String FlushBar_Duration_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(FlushBarDuration) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Raised Button That Show FlushBar(No State Change In Both Button And FlushBar)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Take An Scaffold That Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As AppBar It Has An Title\n\n"
    "-As An Body It Has Centered Layout\n\n"
    "-Centered Layout Contain The Raised Button\n\n"
    "-When The Raised Button Is Pressed It Call A Method ShowFlushBar That Take Context As Parameter\n\n"
    "-This method Take An FlushBar Having Its Title And Its Message\n\n"
    "-FlushBar Duration set By duration That Take 2seconds"
    "-Finally Showing The FlushBar\n\n";


List FlushBar_Duration_list =[
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
              CmpTitle(Title:"Getting Started:",),
              Divider(),
              CmpSubTitle(SubTitle:"\nWe Need To Head To Yaml And Add:\n\n",),
              Image.asset("Images/FB1.PNG"),
              CmpSubTitle(SubTitle:"\nDon't Forget To Get Packages!\n\n",),
              CmpSubTitle(SubTitle:"\nWhen We Need To Use It We Have To Import:\nimport 'package:flushbar/flushbar.dart';\n",),
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:10,),
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
              CmpCode(
                CodeTxt:
                    "void FB(BuildContext context){\n"
                    " Flushbar(\n"
                    "  title:\n"
                    "    'Title Text',\n"
                    "  message:\n"
                    "    'Message Text',\n"
                    "  duration:\n"
                    "    Duration(seconds:2),"
                    " )..show(context);\n"
                    "}\n"
              )
            ]
        ),
      ),
    ),
  ),

];


//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------