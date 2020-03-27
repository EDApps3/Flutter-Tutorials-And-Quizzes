import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


String PopupMenuButton_AppBar_Explanation=
    "-Main Is The Principal Method Used To Run SimpleAppBarPopupMenuButton Class When The Page Is Loaded\n\n"
    "-Creating Class SimpleAppBarPopupMenuButton,Stateless Due To Just Showing Popup Menu Button(It Will Not Change)\n\n"
    "-As Flutter Is Based On Widgets,We Need To Create One\n\n"
    "-Creating A Material App That Take Scaffold Allowing Us To Use AppBar And Body\n\n"
    "-As An AppBar It Has An Simple Title\n\n"
    "-AppBar Having actions (floating Items To The Right),Taking PopupMenuButton Taking PopupMenuItem You Can Add Much As You Want\n\n"
    "-Each PopupMenuItem Has Its Value Used To Do Action In OnSelected Method,And Child Taking Any Widget You Need,Here A Row Having Icon And Text\n\n"
    "-OffSet Set The Drop Down Not On Tap Position\n\n"
    "-color Set PopupMenu Background Color To Grey\n\n"
    "-As An Body It Take Centered Text\n\n";



List PopupMenuButton_AppBar_list =[
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
              CmpTitle(Title:"Popup Menu Button:",),
              Divider(),
              CmpSubTitle(SubTitle:"Display A Menu When Pressed",)
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
                    "PopupMenuButton<int>(\n"
                    " itemBuilder:(context)=>[\n"
                    "  PopupMenuItem(\n"
                    "    value:1,\n"
                    "    child://Widget,\n"
                    "  ),\n"
                    "  //You Can Add More PopupMenuItem\n"
                    " ],\n"
                    " offset: Offset(0,100),\n"
                    " color:Colors.grey,\n"
                    " elevation:2,\n"
                    " onSelected:(value){\n"
                    "  if(value==1){\n"
                    "    //Do\n"
                    "  }\n"
                    " },\n"
                    ")\n"
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
//-------------------------------------------------------------


String PopupMenuButton_ListTile_Explanation=
    "-Main Is The Principal Method Used To Run ListTilePopupMenuButton Class When The Page Is Loaded\n\n"
    "-Creating Class ListTilePopupMenuButton,Statefull Due To Showing Menu And Getting Tap Coords To Show Menu At Tap Position And Creating Its State\n\n"
    "-Creating State Class _ListTilePopupMenuButtonState Extending Main Class ListTilePopupMenuButton\n\n"
    "-Defining 2 Varibles posx posy That Will Contain Tap Coordinates\n\n"
    "-When Page Is Loaded We Initialize Its State\n\n"
    "-As Flutter Is Based On Widgets,We Need To Create One\n\n"
    "-Creating Method onTapDown Called To Know Tap X Y Coords By A Box On Tap And gets Its Coordonate And Once Detected We Set the New posx posy And String Txt To Show Values\n\n"
    "-Menu Take PopupMenuItems Where Each Have Its Childs\n\n"
    "-Creating A Material App That Take Scaffold Allowing Us To Use AppBar And Body\n\n"
    "-As An AppBar It Has An Simple Title\n\n"
    "-As An Body It Take ListView To Avoid Overflow And Allow Scrolling\n\n"
    "-ListView Taking Cards Each Having ListTile As Childs\n\n"
    "-ListTile Having leading Icon,Title,SubTitle,Trailing\n\n"
    "-Training Taking Gesture Detector On IconButton When Tapped Call Metod That Get Tap Coords And The Last one Show The Menu\n\n"
    "-You Can Use OnPressed Too Without GestureDetector\n\n ";


List PopupMenuButton_ListTile_list =[
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
              CmpTitle(Title:"Popup Menu Button:",),
              Divider(),
              CmpSubTitle(SubTitle:"Display A Menu When Pressed",)
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
                  "_showPopupMenu() async{\n"
                  "  await showMenu(\n"
                  "   context: context,\n"
                  "   position:\n"
                  "    RelativeRect.fromLTRB(\n"
                  "      leftVal,\n"
                  "      TopVal,\n"
                  "      RightVal,\n"
                  "      BottomVal\n"
                  "    ),\n"
                  "   items:[\n"
                  "    PopupMenuItem(\n"
                  "     child://Widget,\n"
                  "    ),\n"
                  "    //You Can Add More\n"
                  "   ],\n"
                  " );\n"
                  "}\n"
              ),
            ]
        ),
      ),
    ),
  ),
];












