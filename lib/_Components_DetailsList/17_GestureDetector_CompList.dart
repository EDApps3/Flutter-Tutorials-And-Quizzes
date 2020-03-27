import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


var GestureDetector_Intro_CompList =[
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
              CmpTitle(Title:"What Is Gesture Detector?",),
              Divider(),
              CmpSubTitle(SubTitle:"Widget Used To Detect Gesture,Used On Widgets That Doesn't Has On Pressed Example Image, Image Placed As A Child Of Gesture Detector\n\n",),
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


String GestureDetector_GestImg_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(GestImgRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Centered Image That Take Gesture(No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Has Scaffold\n\n"
    "-Scaffold Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As An AppBar It Has An Title\n\n"
    "-As An Body It Take Centered Layout\n\n"
    "-Centered Layout Contain The Image Followed By A Parent GestureDetector\n\n"
    "-Once The Image Is Tapped A Dilaog AD Of Type AlertDialog Having Text Image Tapped Will Pop\n\n ";


List GestureDetector_GestImg_list =[
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
              CmpTitle(Title:"Image Gesture Detector:",),
              Divider(),
              CmpSubTitle(SubTitle:"Applying Gesture Detector On An Image Child",),
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
                    "GestureDetector(\n"
                    " onTap: (){\n"
                    "  //To Do\n"
                    " }\n"
                    " child:\n"
                    "  //Any Widgets(Image)\n"
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

String GestureDetector_GestAppBarTitle_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(GestAppBarTtitleRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A AppBar That Take A Gesture (No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Has Scaffold\n\n"
    "-Scaffold Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As AppBar It Has An Title Holded By Gesture Detector As A Parent\n\n"
    "-Once The Title Text Is Tapped An Alert AD Of Type AlertDialog Will Pop With A Text AppTitle Tapped\n\n "
    "-As An Body It Take A Centered Layout\n\n"
    "-Centered Layout Contain Simple Text\n\n";


List GestureDetector_GestAppBarTitle_list =[
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
              CmpTitle(Title:"AppBar Title Gesture Detector:",),
              Divider(),
              CmpSubTitle(SubTitle:"Applying Gesture Detector On AppBar Title",),
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
                "AppBar(\n"
                " title:\n"
                "  GestureDetector(\n"
                "   onTap: (){\n"
                "    //Action\n"
                "   },\n"
                "   child:Text('Tap Me!'),\n"
                "  ),\n"
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


String GestureDetector_TapCoords_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(TapCoords) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Call A Page Into body(Page Called May Be Statefull)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Has Scaffold\n\n"
    "-Scaffold Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As AppBar It Has An Title\n\n"
    "-As An Body It Take Class Page MyWidget\n\n"
    "-Creating MyWidget page Statefull Due To Tap X Y And Change Position And Creating Its State\n\n"
    "-Now Creating State Page MyWidgetState Extending Its State From Main Class MyWidget\n\n"
    "-Defining Variables posx And posy Initiakized To 0, And A String Txt\n\n"
    "-Creating Methos showMenu That Will Show A Menu Taking context As Menu Is Material Design,And Position Taking Values From Left,Top,Right,Bottom Where Left Taking Tap Coords X And Top Tap Coords Y\n\n"
    "-Creating Method onTapDown Called To Know Tap X Y Coords By A Box On Tap And gets Its Coordonate And Once Detected We Set the New posx posy And String Txt To Show Values\n\n"
    "-After That onTapDown Take The Coords Show The Menu According To Those Coords\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-returning GestureDetector That When Tap Will Call The Method onTapDown That We Have Created\n\n"
    "-Taking Stack That Fit To Max Width And Height And Container And Positioned Taking Text And left Representing X,Right Y\n\n"
    "-Stack Combine This 3 Elements Into each Other (Relative Not Block)\n\n"
    "-Due To Statefull Once posx and posy Change Positioned will take The New Coords\n\n";


List GestureDetector_TapCoords_list =[
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
              CmpSubTitle(SubTitle:"First We Need To Create Variable Where We Store Coordinates\n",),
              CmpCode(
                CodeTxt:
                  "double posx = 0;\n"
                  "double posy = 0;\n",
              ),
              CmpSubTitle(SubTitle:"Method getting Coordinates:\n",),
              CmpCode(
                CodeTxt:
                "void onTapDown(BuildContext context,TapDownDetails details) {\n"
                " final RenderBox box = context.findRenderObject();\n"
                " final Offset localOffset = box.globalToLocal(details.globalPosition);\n"
                " setState(() {\n"
                "  posx = localOffset.dx;\n"
                "  posy = localOffset.dy;\n"
                " });\n"
                "}",
              ),
              CmpSubTitle(SubTitle:"Widget:\n",),
              CmpCode(
                CodeTxt:
                "GestureDetector(\n"
                " onTapDown:\n"
                " (TapDownDetails details)=>onTapDown(context,details),\n"
                " child://Child\n"
                ")\n",
              )
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

