import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


var BackDrop_Intro_CompList =[
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
              CmpTitle(Title:"What Is BackDrop?",),
              Divider(),
              CmpSubTitle(SubTitle:"Scaffold Allowing Using BackLayer And FrontLayer.",),
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
              CmpTitle(Title:"Getting Started:",),
              Divider(),
              CmpSubTitle(SubTitle:"Adding Plugin Into Yaml Dependency:\n",),
              Image.asset("Images/BackDrop.PNG"),
              CmpSubTitle(SubTitle:"\nTo Use We Need  To Import:\nimport 'package:backdrop/backdrop.dart';\n",),
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



String BackDrop_Left_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(SimpleLeftBackDrop) To Be Runned\n\n"
    "-This Class Is Statefull Widget To Detect Active Layer\n\n"
    "-First Creating Main Class SimpleLeftBackDrop And Set Its Main State\n\n"
    "-Secondly Creating Class _SimpleLeftBackDropState That Extend Its State From Its Main SimpleLeftBackDrop\n\n"
    "-When Page Is Opened We're Initializing Its State\n\n"
    "-When Page Is Closed Or Disposed We're Disposing Its State\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Allow Us To Use BackdropScaffold\n\n"
    "-BackdropScaffold Is Replaced By Scaffold\n\n"
    "-icon Position Set To Lead (Start From Left)\n\n"
    "-title Set The AppBar Title\n\n"
    "-BackLayer Display BackDrop Contents When Dropped\n\n"
    "-Front Layer Is The Main Screen Visible To The User\n\n"
    "-Both Layers Heres Taking A Centered Text\n\n";

List BackDrop_Left_List =[
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
                "BackdropScaffold(\n"
                " iconPosition:BackdropIconPosition.leading,\n"
                " title: Text('Left Backdrop'),\n"
                " backLayer://Any Widget(ListView,Center...)\n"
                " frontLayer://Any Widget(ListView,Center...)\n"
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


String BackDrop_Right_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(SimpleRightBackDrop) To Be Runned\n\n"
    "-This Class Is Statefull Widget To Detect Active Layer\n\n"
    "-First Creating Main Class SimpleRightBackDrop And Set Its Main State\n\n"
    "-Secondly Creating Class _SimpleRightBackDropState That Extend Its State From Its Main SimpleRightBackDrop\n\n"
    "-When Page Is Opened We're Initializing Its State\n\n"
    "-When Page Is Closed Or Disposed We're Disposing Its State\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Allow Us To Use BackdropScaffold\n\n"
    "-BackdropScaffold Is Replaced By Scaffold\n\n"
    "-icon Position Set To Lead By Default,To Hide It We Need To Set To None\n\n"
    "-Now To Set Icon To The Right We Use actions(Floating Item To The Right) That Take The Toggle Button That Open The BackDrop Menu\n\n"
    "-title Set The AppBar Title\n\n"
    "-BackLayer Display BackDrop Contents When Dropped\n\n"
    "-Front Layer Is The Main Screen Visible To The User\n\n"
    "-Both Layers Heres Taking A Centered Text\n\n";

List BackDrop_Right_List =[
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
                    "BackdropScaffold(\n"
                    " iconPosition:BackdropIconPosition.none,\n"
                    " actions: <Widget>[\n"
                    "  BackdropToggleButton(\n"
                    "   icon:AnimatedIcons.close_menu,\n"
                    "  ),\n"
                    " ],\n"
                    " title: Text('Left Backdrop'),\n"
                    " backLayer://Any Widget(ListView,Center...)\n"
                    " frontLayer://Any Widget(ListView,Center...)\n"
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


String BackDrop_Custom_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(CustomBackDrop) To Be Runned\n\n"
    "-This Class Is Statefull Widget To Detect Active Layer\n\n"
    "-First Creating Main Class CustomBackDrop And Set Its Main State\n\n"
    "-Secondly Creating Class _CustomBackDropState That Extend Its State From Its Main CustomBackDrop\n\n"
    "-When Page Is Opened We're Initializing Its State\n\n"
    "-When Page Is Closed Or Disposed We're Disposing Its State\n\n"
    "-As We Will Change Pages,We Need To Create A Page Index SelectedPageIndex Variable Set To 0 => Home page\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Allow Us To Use BackdropScaffold\n\n"
    "-Material Default Color Is Blue,To Set It To Custom Creating Theme Color Set To Teal\n\n"
    "-BackdropScaffold Is Replaced By Scaffold\n\n"
    "-icon Position Set To Lead By Default,To Hide It We Need To Set To None\n\n"
    "-title Taking Row Now,Used To Set Custom Icon Needed(2 Col),First Row Taking The Custom ToggleButton And Second Col The AppBar Title To Be Shown\n\n"
    "-BackLayer Display BackDrop Contents When Dropped\n\n"
    "-BackLayer Taking Container Full Width And Height That Take BackdropNavigationBackLayer That Take Only ListTile\n\n"
    "-Each ListTile Have White Text Set To Center In A Container,Trailing Icon(Shown At Right Of ListTile)\n\n"
    "-Once Taping Into BackdropNavigationBackLayer Will Know Index Of ListTile Selected And Store It In SlectedPage Var That We Have Created\n\n"
    "-Front Layer Is The Main Screen Visible To The User\n\n"
    "-Contents In Front Layer Depends On Selected Page Index, 0->Home 1->About\n\n"
    "-Finally Creating Home And About Page\n\n";


List BackDrop_Custom_List =[
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
                    "BackdropScaffold(\n"
                    " iconPosition:BackdropIconPosition.none,\n"
                    " title:Row(\n"
                    "  children: <Widget>[\n"
                    "   BackdropToggleButton(\n"
                    "    icon:AnimatedIcons.home_menu,\n"
                    "   ),\n"
                    "   Text('AppBar Title'),\n"
                    "  ],\n"
                    " ),"
                    " backLayer:Container(\n"
                    "  width:double.infinity,\n"
                    "  height:double.infinity,\n"
                    "  color:Colors.black26,\n"
                    "  child:BackdropNavigationBackLayer(\n"
                    "   items: <Widget>[\n"
                    "     //ListTile(...)\n"
                    "     //ListTile(...)\n"
                    "   ],\n"
                    "   onTap:(int pos)=>{\n"
                    "     setState(()=>SelectedPageIndex=pos),\n"
                    "   },\n"
                    "  ),\n"
                    " ),\n"
                    " frontLayer://Any Widget(ListView,Center...)\n"
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
