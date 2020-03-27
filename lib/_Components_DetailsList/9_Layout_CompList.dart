import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


var Layout_Intro_CompList =[
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
              CmpTitle(Title:"What Is Layout?",),
              Divider(),
              CmpSubTitle(
                  SubTitle:
                  "Very Important Used To Set Widgets By Lines Or Columns,examples:\n"
                  "-3 Images On Same Line\n"
                  "-3 Images Each On A Line\n\n"
              ),
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
              CmpTitle(Title:"Example Of Layouts:",),
              Divider(),
              CmpSubTitle(
                SubTitle:
                    "-Center (Used In All Previous Codes And It Handle One Elements, It Can Handle Alot Of Elements When It Hold An Layout( Container ,Row, Col) And The Last Contain The Elements(children))\n\n"
                    "-Row\n\n"
                    "-Column\n\n"
                    "-Container\n\n"
              ),
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
              CmpTitle(Title:"Tips Must Be Known:",),
              Divider(),
              CmpSubTitle(
                  SubTitle:
                      "-Row:\n"
                      " Main Axis Go Horizontally\n"
                      " Cross Axis Go Vertically\n",
              ),
              Image.asset("Images/R_Tips.png"),
              CmpSubTitle(
                SubTitle:
                    "\n\n-Col:(Opposite Of Row)\n"
                    " Cross Axis Go Horizontally\n"
                    " Main Axis Go Vertically\n"
              ),
              Image.asset("Images/C_Tips.png"),
            ]
        ),
      ),
    ),
  ),
];

//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------

String Layout_Col_MAC_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(Col_MA_CenterRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put Columns(No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-Material Grant The Light Theme\n\n"
    "-As An Home It Take Scaffold Allow Us To Create AppBar And The Body Of The Page (All Widgets That Appear)\n\n"
    "-As An AppBar It Has An Title\n\n"
    "-As An Body It Has Column (Allow Us To Insert Multiple Widgets Inside Children And Appear Each On A Line when He is Not Inside A Row)\n\n"
    "-The Column Has MainAxisAlignment Center Thats Mean That Appear Centered Vertically\n\n"
    "-Now Column Has Children That Contain Multiple Widgets(2 Texts , 1 text and 1 Image , 5 Images....)\n\n"
    "-First Row To Appear Is A Container , The Container Has a Box Having Border Width 2 And Red Color That Contain An Image\n\n"
    "-Second Row To Appear Is A Container , The Container Has a Box Having Border Width 2 And Red Color That Contain An Image\n\n";


List Layout_Col_MAC_list =[
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
              CmpTitle(Title:"Must Know:",),
              Divider(),
              CmpSubTitle(
                SubTitle:
                    "Col Main Axis Alignment Go Vertically\n"
                    " start(Up)\n"
                    " center(Middle)\n"
                    " end(Down)\n"
              ),
              Image.asset("Images/C_Tips.png"),
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
                    "Column(\n"
                    " mainAxisAlignment:\n"
                    "   MainAxisAlignment.center,\n"
                    " children: <Widget>[\n"
                    "  //Insert Multiple Widgets\n"
                    " ]\n"
                    ")\n"
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


String Layout_Col_MAS_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(Col_MA_StartRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put Columns(No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-Material Grant The Light Theme\n\n"
    "-As An Home It Take An Scaffold That Allow Us To Create AppBar And The Body Of The Page (All Widgets That Appear)\n\n"
    "-As An AppBar It Has An Title\n\n"
    "-As An Body It Has Column (Allow Us To Insert Multiple Widgets Inside Children And Appear Each On A Line when He is Not Inside A Row)\n\n"
    "-The Column Has MainAxisAlignment Start Thats Mean That Appear Up Vertically\n\n"
    "-Now Column Has Children That Contain Multiple Widgets(2 Texts , 1 text and 1 Image , 5 Images....)\n\n"
    "-First Row To Appear Is A Container , The Container Has a Box Having Border Width 2 And Red Color That Contain A Text Hi\n\n"
    "-Second Row To Appear Is A Container , The Container Has a Box Having Border Width 2 And Red Color That Contain A Text Hi\n\n";


List Layout_Col_MAS_list =[
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
              CmpTitle(Title:"Must Know:",),
              Divider(),
              CmpSubTitle(
                  SubTitle:
                  "Col Main Axis Alignment Go Vertically\n"
                      " start(Up)\n"
                      " center(Middle)\n"
                      " end(Down)\n"
              ),
              Image.asset("Images/C_Tips.png"),
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
                      "Column(\n"
                      " mainAxisAlignment:\n"
                      "   MainAxisAlignment.start,\n"
                      " children: <Widget>[\n"
                      "  //Insert Multiple Widgets\n"
                      " ]\n"
                      ")\n"
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


String Layout_Col_MAE_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(Col_MA_EndRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put Columns(No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-Material Grant The Light Theme\n\n"
    "-As An Home It Take An Scaffold That Allow Us To Create AppBar And The Body Of The Page (All Widgets That Appear)\n\n"
    "-As An AppBar It Has An Title\n\n"
    "-As An Body It Has Column (Allow Us To Insert Multiple Widgets Inside Children And Appear Each On A Line when He is Not Inside A Row)\n\n"
    "-The Column Has MainAxisAlignment Center Thats Mean That Appear Centered Vertically\n\n"
    "-Now Column Has Children That Contain Multiple Widgets(2 Texts , 1 text and 1 Image , 5 Images....)\n\n"
    "-First Row To Appear Is A Container , The Container Has a Box Having Border Width 2 And Red Color That Contain An IconButton(Android Icon)\n\n"
    "-Second Row To Appear Is A Container , The Container Has a Box Having Border Width 2 And Red Color That Contain An Text(Android)\n\n"
    "";

List Layout_Col_MAE_list =[
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
              CmpTitle(Title:"Must Know:",),
              Divider(),
              CmpSubTitle(
                  SubTitle:
                  "Col Main Axis Alignment Go Vertically\n"
                      " start(Up)\n"
                      " center(Middle)\n"
                      " end(Down)\n"
              ),
              Image.asset("Images/C_Tips.png"),
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
                  "Column(\n"
                      " mainAxisAlignment:\n"
                      "   MainAxisAlignment.end,\n"
                      " children: <Widget>[\n"
                      "  //Insert Multiple Widgets\n"
                      " ]\n"
                      ")\n"
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



String Layout_Row_MAC_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(Row_MA_CenterRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Row (No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-Material Grant The Light Theme\n\n"
    "-As An Home It Take An Scaffold That Allow Us To Create AppBar And The Body Of The Page (All Widgets That Appear)\n\n"
    "-As An AppBar It Has An Title\n\n"
    "-As An Body It Has Row (Allow Us To Insert Multiple Widgets Inside Children And Appear Each On A Same Line)\n\n"
    "-Wich Means The Screen Has One Row\n\n"
    "-The Row Has MainAxisAlignment Center Thats Mean That Appear Centered Horizontaly\n\n"
    "-Now Row Has Children That Contain Multiple Widgets(2 Texts , 1 text and 1 Image , 5 Images....)\n\n"
    "-First Row First Col To Appear Is A Raised Button Having Text As His Value\n\n"
    "-First Row Second Col To Appear Is A Raised Button Having Text As His Value\n\n"
    "";

List Layout_Row_MAC_list =[
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
              CmpTitle(Title:"Must Know:",),
              Divider(),
              CmpSubTitle(
                  SubTitle:
                  "Row Main Axis Alignment Go Horizontally\n"
                      " start(Up)\n"
                      " center(Middle)\n"
                      " end(Down)\n"
              ),
              Image.asset("Images/R_Tips.png"),
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
                      "Row(\n"
                      " mainAxisAlignment:\n"
                      "   MainAxisAlignment.center,\n"
                      " children: <Widget>[\n"
                      "  //Insert Multiple Widgets\n"
                      " ]\n"
                      ")\n",
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


String Layout_Row_MAS_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(Row_MA_StartRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Row(No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-Material Grant The Light Theme\n\n"
    "-As An Home It Take An Scaffold That Allow Us To Create AppBar And The Body Of The Page (All Widgets That Appear)\n\n"
    "-As An AppBar It Has An Title\n\n"
    "-As An Body It Has Row (Allow Us To Insert Multiple Widgets Inside Children And Appear Each On A Same Line)\n\n"
    "-Wich Means The Screen Has One Row\n\n"
    "-The Row Has MainAxisAlignment Start Thats Mean That Appear From Start(First) Horizontaly\n\n"
    "-Now Row Has Children That Contain Multiple Widgets(2 Texts , 1 text and 1 Image , 5 Images....)\n\n"
    "-First Row First Col To Appear Is A Raised Button Having Text As His Value\n\n"
    "-First Row Second Col To Appear Is A Raised Button Having Text As His Value\n\n"
    "";

List Layout_Row_MAS_list =[
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
              CmpTitle(Title:"Must Know:",),
              Divider(),
              CmpSubTitle(
                  SubTitle:
                  "Row Main Axis Alignment Go Horizontally\n"
                      " start(Up)\n"
                      " center(Middle)\n"
                      " end(Down)\n"
              ),
              Image.asset("Images/R_Tips.png"),
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
                "Row(\n"
                    " mainAxisAlignment:\n"
                    "   MainAxisAlignment.start,\n"
                    " children: <Widget>[\n"
                    "  //Insert Multiple Widgets\n"
                    " ]\n"
                    ")\n",
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




String Layout_Row_MAE_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(Row_MA_EndRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Row(No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-Material Grant The Light Theme\n\n"
    "-As An Home It Take An Scaffold That Allow Us To Create AppBar And The Body Of The Page (All Widgets That Appear)\n\n"
    "-As An AppBar It Has An Title\n\n"
    "-As An Body It Has Row (Allow Us To Insert Multiple Widgets Inside Children And Appear Each On A Same Line)\n\n"
    "-Wich Means The Screen Has One Row\n\n"
    "-The Row Has MainAxisAlignment End Thats Mean That Appear From End Horizontaly\n\n"
    "-Now Row Has Children That Contain Multiple Widgets(2 Texts , 1 text and 1 Image , 5 Images....)\n\n"
    "-First Row First Col To Appear Is A Raised Button Having Text As His Value\n\n"
    "-First Row Second Col To Appear Is A Raised Button Having Text As His Value\n\n"
    "";

List Layout_Row_MAE_list =[
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
              CmpTitle(Title:"Must Know:",),
              Divider(),
              CmpSubTitle(
                  SubTitle:
                  "Row Main Axis Alignment Go Horizontally\n"
                      " start(Up)\n"
                      " center(Middle)\n"
                      " end(Down)\n"
              ),
              Image.asset("Images/R_Tips.png"),
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
                "Row(\n"
                    " mainAxisAlignment:\n"
                    "   MainAxisAlignment.end,\n"
                    " children: <Widget>[\n"
                    "  //Insert Multiple Widgets\n"
                    " ]\n"
                    ")\n",
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




String Layout_Contact_List_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(CListRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Show A Contact List(No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-Material Grant The Light Theme\n\n"
    "-As An Home It Call Class TestPage Returning An Scaffold That Allow Us To Create AppBar And The Body Of The Page (All Widgets That Appear)\n\n"
    "-As An AppBar It Has An Title\n\n"
    "-As An Body It Has An Container Having An ListView Scrolles Vertically To Avoid OverFlow\n\n"
    "-ListView Taking Column Aligned Vertically From Start\n\n"
    "-First Row Taking 2 Column,First Column Taking One Children Icon Size Set To 90,Second Column Taking 2 Children Of Type Text\n\n"
    "-Same For The Second Row...";

List Layout_Contact_List_list =[
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
              CmpTitle(Title:"More On Layouts:",),
              Divider(),
              CmpSubTitle(SubTitle:"Creating An Example On Layouts",)
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