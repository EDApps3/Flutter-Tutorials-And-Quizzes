import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


String Navigator_Page_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(NavPagesRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Navigate Through Pages(No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-Material Grant The Light Theme\n\n"
    "-As An Home It Take Scaffold That Allow Us To Create AppBar And The Body Of The Page (All Widgets That Appear)\n\n"
    "-As An AppBar It Has An Title\n\n"
    "-As An Body It Has Center Layout That Contain A Raised Button\n\n"
    "-Raised Button Contain A Text Child That Represent Its Value\n\n"
    "-When Raised Button Is Pressed The Navigator Will Push New Page To Be Opened (Page1)\n\n\n\n"
    "-Page1 Represented By Class Page1"
    "-Page1 Contain An Material App That Allow Us To Use  Scaffold\n\n"
    "-As Scaffold It Contain An AppBarThat Hold:\n"
    " A title \n"
    " A Back Leading Icon That On Pressed The Navigator Push The Main Page To Be The Active\n";


List Navigator_Page_list =[
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
              CmpCode(
                  CodeTxt:
                      "Navigator.push(\n"
                      "  context,\n"
                      "  MaterialPageRoute(\n"
                      "   builder:\n"
                      "   (context)=>Page()\n"
                      "  )\n"
                      ");\n",
              ),
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


String Navigator_Links_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(NavLinksRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Navigate Through Link(No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-Material Grant The Light Theme\n\n"
    "-As An Home It Take An Scaffold That Allow Us To Create AppBar And The Body Of The Page (All Widgets That Appear)\n\n"
    "-As An AppBar It Has An Title\n\n"
    "-As An Body That Contain a Center Layout\n\n"
    "-The Center Layout Container a Raised Button\n\n"
    "-The Raised Button Contain A Text As a Value\n\n"
    "-Once The Button Is Pressed It Call Private Method launchUrl\n\n"
    "-launchURL is asynchronus Method Lunching Link In Variable url\n\n"
    "-If The Url Can be Launched Then The Url Will Be Opened\n\n"
    "-If Not An Error Will Be Thrown!\n\n";


List Navigator_Links_list =[
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
              CmpSubTitle(SubTitle:"We Need First To Import Url Plugin So We Must Head To Yaml And Add:\n",),
              Image.asset("Images/Url.png"),
              CmpSubTitle(SubTitle:"Don't Forget To Get Packages!\n",),
              CmpSubTitle(SubTitle:"When We Need To Use It We Have To Import:\nimport 'package:url_launcher/url_launcher.dart';",),
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
                    "_launchUrl() async{\n"
                    ' const Url=\n'
                    '  "https://play.google.com/store/apps/details?id=edapps.com.flutter_tutorials_and_quizzes";\n\n'
                    " if(await canLaunch(Url)){\n"
                    "   await launch(Url);\n"
                    " }\n"
                    " else{\n"
                    "  throw 'Could Not Launch Url!';\n"
                    " }\n"
                    "}\n",
              ),
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



String Navigator_Tel_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(NavTelRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Navigate Through Dialer(No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-Material Grant The Light Theme\n\n"
    "-As An Home It Take An Scaffold That Allow Us To Create AppBar And The Body Of The Page (All Widgets That Appear)\n\n"
    "-As An AppBar It Has An Title\n\n"
    "-As An Body That Contain a Center Layout\n\n"
    "-The Center Layout Container a Raised Button\n\n"
    "-The Raised Button Contain A Text As a Value\n\n"
    "-Once The Button Is Pressed It Call Private Method launchUrl\n\n"
    "-launchURL is asynchronus Method Containg Tel To Dial In Tel Variable\n\n"
    "-The Url Contain Telephone Calling The Needed Number\n\n"
    "-If The Url Can be Launched Then The Url Will Be Opened\n\n"
    "-If Not An Error Will Be Thrown!\n\n";


List Navigator_Tel_list =[
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
              CmpSubTitle(SubTitle:"We Need First To Import Url Plugin So We Must Head To Yaml And Add:\n",),
              Image.asset("Images/Url.png"),
              CmpSubTitle(SubTitle:"Don't Forget To Get Packages!\n",),
              CmpSubTitle(SubTitle:"When We Need To Use It We Have To Import:\nimport 'package:url_launcher/url_launcher.dart';",),
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
                    "_launchUrl() async{\n"
                    ' const Tel=\n'
                    '  "tel:+96176404762";\n'
                    " if(await canLaunch(Tel)){\n"
                    "   await launch(Tel);\n"
                    " }\n"
                    " else{\n"
                    "  throw 'Could Not Launch Tel!;\n"
                    " }\n"
                    "}\n",
              ),
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


String Navigator_SMS_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(NavSMSRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Navigate Through SMS(No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-Material Grant The Light Theme\n\n"
    "-As An Home It Take Scaffold That Allow Us To Create AppBar And The Body Of The Page (All Widgets That Appear)\n\n"
    "-As An AppBar It Has An Title\n\n"
    "-As An Body That Contain a Center Layout\n\n"
    "-The Center Layout Container a Raised Button\n\n"
    "-The Raised Button Contain A Text As a Value\n\n"
    "-Once The Button Is Pressed It Call Private Method launchUrl\n\n"
    "-launchURL is asynchronus Method Contain Containg SMS Variable To The Number To Be Sent\n\n"
    "-The Url Contain SMS  To The Needed Number\n\n"
    "-If The Url Can be Launched Then The Url Will Be Opened\n\n"
    "-If Not An Error Will Be Thrown!\n\n";


List Navigator_SMS_list =[
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
              CmpSubTitle(SubTitle:"We Need First To Import Url Plugin So We Must Head To Yaml And Add:\n",),
              Image.asset("Images/Url.png"),
              CmpSubTitle(SubTitle:"Don't Forget To Get Packages!\n",),
              CmpSubTitle(SubTitle:"When We Need To Use It We Have To Import:\nimport 'package:url_launcher/url_launcher.dart';",),
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
                    "_launchUrl() async{\n"
                    ' const SMS=\n'
                    '  "sms:+96176404762";\n'
                    " if(await canLaunch(SMS)){\n"
                    "   await launch(SMS);\n"
                    " }\n"
                    " else{\n"
                    "  throw 'Could Not Send SMS!';\n"
                    " }\n"
                    "}\n",
              ),
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




String Navigator_Email_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(NavEmailRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Navigate Through Email(No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-Material Grant The Light Theme\n\n"
    "-As An Home It Take An Scaffold That Allow Us To Create AppBar And The Body Of The Page (All Widgets That Appear)\n\n"
    "-As An AppBar It Has An Title\n\n"
    "-As An Body That Contain a Center Layout\n\n"
    "-The Center Layout Container a Raised Button\n\n"
    "-The Raised Button Contain A Text As a Value\n\n"
    "-Once The Button Is Pressed It Call Private Method launchUrl\n\n"
    "-launchURL is asynchronus Method Containing The Email In The Var Email\n\n"
    "-The Url Contain Email Calling mailto: Email Needed \n\n"
    "-If The Url Can be Launched Then The Url Will Be Opened\n\n"
    "-If Not An Error Will Be Thrown!\n\n";


List Navigator_Email_list =[
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
              CmpSubTitle(SubTitle:"We Need First To Import Url Plugin So We Must Head To Yaml And Add:\n",),
              Image.asset("Images/Url.png"),
              CmpSubTitle(SubTitle:"Don't Forget To Get Packages!\n",),
              CmpSubTitle(SubTitle:"When We Need To Use It We Have To Import:\nimport 'package:url_launcher/url_launcher.dart';",),
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
                    "_launchUrl() async{\n"
                    ' const Email=\n'
                    '  "mailto:edapps.contact@gmail.com";\n'
                    " if(await canLaunch(Email)){\n"
                    "   await launch(Email);\n"
                    " }\n"
                    " else{\n"
                    "  throw 'Could Not Send Email!';\n"
                    " }\n"
                    "}\n",
              ),
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