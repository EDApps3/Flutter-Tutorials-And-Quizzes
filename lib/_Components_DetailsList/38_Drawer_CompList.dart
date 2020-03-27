import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';



String Drawer_Left_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(LeftDrawerRun) To Be Runned\n\n"
    "-Creating LeftDrawerRun And Its State Due To Drawer Change State ( Opening | Closing )\n\n"
    "-Creating Function _launchUrl That Take User To PlayStore,Check Navigation Course\n\n"
    "-Creating Function _launchFb  That Take User To Facebook Page,Check Navigation Course\n\n"
    "-As Flutter Is Based On Widgets We Need To Create One\n\n"
    "-Creating MaterialApp Having Title Containing As An Home Scaffold\n\n"
    "-Scaffold Allow Us To Use AppBar And Page Body And Drawer\n\n"
    "-As An AppBar It Has An Simple Title\n\n"
    "-Now Creating A Drawer That Will Take Wanted Widgets,Here Taking A ListView Containing 2 List Tile\n\n"
    "-Each ListTile Having An Title,Icon And Action When Pressed To Take The User To The Url By Calling The Functions Created Up\n\n"
    "-Finally The Body Having Simple Centered Text\n\n"
;


List Drawer_Left_list =[
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
              CmpTitle(Title:"What Is Drawer?",),
              Divider(),
              CmpSubTitle(SubTitle:"Draw An Openable Menu That Hide And Show When Clicking The Open Icon Placed In The Left Or Right\n",),
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
              CmpCode(
                CodeTxt:
                    "Scaffold(\n"
                    " drawer:new Drawer(\n"
                    "  child:\n"
                    "   //Any Widgets(Row,ListView..)\n"
                    " ),\n"
                    ")",
              ),

            ]
        ),
      ),
    ),
  ),
];

//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------


String Drawer_Right_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(RightDrawerRun) To Be Runned\n\n"
    "-Creating RightDrawerRun And Its State Due To Drawer Change State ( Opening | Closing )\n\n"
    "-Creating Function _launchUrl That Take User To PlayStore,Check Navigation Course\n\n"
    "-Creating Function _launchFb  That Take User To Facebook Page,Check Navigation Course\n\n"
    "-As Flutter Is Based On Widgets We Need To Create One\n\n"
    "-Creating MaterialApp Having Title Containing As An Home Scaffold\n\n"
    "-Scaffold Allow Us To Use AppBar And Page Body And endDrawer\n\n"
    "-As An AppBar It Has An Simple Title\n\n"
    "-Now Creating A Drawer That Will Take Wanted Widgets,Here Taking A ListView Containing 2 List Tile\n\n"
    "-Each ListTile Having An Title,Icon And Action When Pressed To Take The User To The Url By Calling The Functions Created Up\n\n"
    "-Finally The Body Having Simple Centered Text\n\n"
;


List Drawer_Right_list =[
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
              CmpTitle(Title:"What Is Drawer?",),
              Divider(),
              CmpSubTitle(SubTitle:"Draw An Openable Menu That Hide And Show When Clicking The Open Icon Placed In The Left Or Right\n",),
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
              CmpCode(
                CodeTxt:
                    "Scaffold(\n"
                    " endDrawer:new Drawer(\n"
                    "  child:\n"
                    "   //Any Widgets(Row,ListView..)\n"
                    " ),\n"
                    ")",
              ),

            ]
        ),
      ),
    ),
  ),
];