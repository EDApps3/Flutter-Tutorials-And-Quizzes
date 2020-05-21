import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


var ListView_Intro_CompList =[
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
              CmpTitle(Title:"What Is ListView?",),
              Divider(),
              CmpSubTitle(SubTitle:"Scrolling Widget,Dislay Its Children One After One.\nListView Can Be Scrolled Horizontally or Vertically\n\n",),
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



String ListView_Horizontal_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(LVHorRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Create a Scrollable List(No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home Contain The Scaffold \n\n"
    "-Scaffold Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As AppBar It Has An Title\n\n"
    "-As An Body It Take ListView Scrolled Horizontaly\n\n"
    "-Elements Inside The ListView Called Children\n\n"
    "-Children Displayed On A Row (All Images On One Row) To Be Scrolled  <- And ->\n\n";


List ListView_Horizontal_list =[
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
                "ListView(\n"
                    " scrollDirection:\n"
                    "  Axis.horizontal,\n"
                    " children: <Widget>[\n"
                    "   Row(\n"
                    "    children: <Widget>[\n"
                    "     //Widgets\n"
                    "    ],\n"
                    "   ),\n"
                    "  ],\n"
                    "),\n",
              ),
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



String ListView_Vertical_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(LVVertRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Create a Scrollable List (No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home Contain The Scaffold \n\n"
    "-Scaffold Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As AppBar It Has An Title\n\n"
    "-As An Body It Take ListView That Can Be Scrolled Vertically\n\n"
    "-Elements Inside The ListView Called Children\n\n"
    "-Children Displayed On A Column (Each Image On A Row ) Where The Images Are Aligned to the Center Horizontally By The CrossAlignCenter And Scrolled Up And Down\n\n";



List ListView_Vertical_list =[
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
                    "ListView(\n"
                    " scrollDirection:\n"
                    "  Axis.vertical,\n"
                    " children: <Widget>[\n"
                    "   Column(\n"
                    "    crossAxisAlignment:\n"
                    "     CrossAxisAlignment.center,\n"
                    "    children: <Widget>[\n"
                    "     //Widgets\n"
                    "    ],\n"
                    "   ),\n"
                    "  ],\n"
                    "),\n",
              ),
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




String ListView_ScrollTo_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(LVScrollTo) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Create a Scrollable List (No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating ScrollController Sc That Allow Scrolling Into The ListView And Control It\n\n"
    "-Creating IndexSc Representing Items Lenth Inside The List\n\n"
    "-Creating JumpWidth Used To Animated To Another Items Using Width Value Or Scroll value\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home Contain The Scaffold \n\n"
    "-Scaffold Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As AppBar It Has An Title\n\n"
    "-As An Body It Take Row(Giving 3 Cols)\n\n"
    "-First Col Taking Container Having Width 10% Taking Height 250 Taking Centered Outline Button When Clicked Reducing JumpWidth By 200 And ANimating Scroller(200 Due Items Width In ListView)\n\n"
    "-Second Col Taking Container Having 80% Width And Height 250 Taking ListView Scrolled Horizontally Where Each Item Have Card Taking Image Sized to 200x200\n\n"
    "-Third Col Taking Container Having Width 10% Taking Height 250 Taking Centered Outline Button When Clicked Increasing JumpWidth By 200 And ANimating Scroller(200 Due Items Width In ListView)\n\n";




List ListView_ScrollTo_list =[
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

              CmpSubTitle(SubTitle:"1-Creating Scroll Controller Given To The ListView\n"),
              CmpCode(CodeTxt: "ScrollController SC = new ScrollController();\n\n",),

              CmpSubTitle(SubTitle:"2-Creating Item Index Var\n"),
              CmpCode(CodeTxt: "double IndexSc=0.0;\n\n",),

              CmpSubTitle(SubTitle:"3-Creating Animate Width Variable\n"),
              CmpCode(CodeTxt: "double JumpWidth=0.0;\n\n",),


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
              CmpTitle(Title:"Previous Button:",),
              Divider(),
              CmpCode(
                CodeTxt:
                "OutlineButton(\n"
                " child:Text('<'),\n"
                " onPressed:(){\n"
                "  if(IndexSc !=0){\n"
                "   IndexSc--;\n"
                "   JumpWidth-=200.00;\n"
                "   SC.animateTo(\n"
                "    JumpWidth,\n"
                "    duration:Duration(milliseconds:500),\n"
                "    curve:Curves.fastOutSlowIn,\n"
                "   );\n"
                "  }\n"
                " },\n"
                ")\n",
              ),


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
              CmpTitle(Title:"Next Button:",),
              Divider(),
              CmpCode(
                CodeTxt:
                "OutlineButton(\n"
                    " child:Text('>'),\n"
                    " onPressed:(){\n"
                    "  if(IndexSc != 6){\n"
                    "   IndexSc++;\n"
                    "   JumpWidth+=200.00;\n"
                    "   SC.animateTo(\n"
                    "    JumpWidth,\n"
                    "    duration:Duration(milliseconds:500),\n"
                    "    curve:Curves.fastOutSlowIn,\n"
                    "   );\n"
                    "  }\n"
                    " },\n"
                    ")\n",
              ),


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
              CmpTitle(Title:"ListView Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                "ListView(\n"
                " controller:SC,\n"
                " scrollDirection: Axis.horizontal,\n"
                " children: <Widget>[\n"
                "  //Widget\n"
                " ],\n"
                ")\n",
              ),


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




String ListView_MoveTo_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(LVMoveTo) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Create a Scrollable List Moving To Top And Bottom Using Controller (No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating ScrollController SCTopBottom That Allow Scrolling Into The ListView And Control It\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home Contain The Scaffold \n\n"
    "-Scaffold Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As AppBar It Has An Title\n\n"
    "-As An Body It Take ListView That Allow Scrolling And Avoiding Overflow Controlled By The Controller Created SCTopBottom And Having As Children Simple Container That Have Max Width Of The Screen And Height 300 With A BgColor Set By Color And A Centered Text\n\n"
    "-Now As floatingActionButton (Putted Bottom To The Right) Has A Column (Give 2 Rows)\n\n"
    "-Row 1 Has A FloatingActionButton BackgroundColor Set To Green By Color On Pressed animate The Controller To The Top Position(0) with fastOutSlowIn Animation And duration 500ms\n\n"
    "-Row 2 Has A FloatingActionButton BackgroundColor Set To Green By Color On Pressed animate The Controller To The Bottom Position(SCTopBottom.position.maxScrollExtent) with fastOutSlowIn Animation And duration 500ms\n\n"
    "";




List ListView_MoveTo_list =[
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

              CmpSubTitle(SubTitle:"1-Creating Scroll Controller Given To The ListView\n"),
              CmpCode(CodeTxt: "ScrollController SCTopBottom = new ScrollController();\n\n",),

              CmpSubTitle(SubTitle:"2-Scrolling To Top\n"),
              CmpCode(CodeTxt:
                 "SCTopBottom.animateTo(\n"
                 " 0,\n"
                 " duration:Duration(milliseconds:500),\n"
                 " curve:Curves.fastOutSlowIn,\n"
                 ");"
                ,),

              CmpSubTitle(SubTitle:"3-Scrolling To Bottom\n"),
              CmpCode(CodeTxt:
              "SCTopBottom.animateTo(\n"
                  " SCTopBottom.position.maxScrollExtent,\n"
                  " duration:Duration(milliseconds:500),\n"
                  " curve:Curves.fastOutSlowIn,\n"
                  ");"
                ,),


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
              CmpTitle(Title:"ListView Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "ListView(\n"
                    " controller:SCTopBottom,\n"
                    " children: <Widget>[\n"
                    "  //Widget\n"
                    " ],\n"
                    ")\n",
              ),


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


