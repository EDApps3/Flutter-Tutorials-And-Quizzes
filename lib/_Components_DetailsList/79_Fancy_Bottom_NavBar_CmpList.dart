import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


String Fancy_Bottom_NavBar_Explanation=
    "Soon!\n\n";


List Fancy_Bottom_NavBar_list =[
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
              CmpTitle(Title:"Fancy Bottom NavBar",),
              Divider(),
              CmpSubTitle(SubTitle:"A Material Widget That Display A Bottom Fancy NavBar Where Item Go Between 2 and 4.",),
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
              CmpTitle(Title:"Getting Started:",),
              Divider(),
              CmpSubTitle(SubTitle:"We Need To Import Into The Yaml The Plugin:",),
              SizedBox(height: 16,),
              Image.asset("Images/FBN.PNG",),
              CmpSubTitle(SubTitle:"\n\nDon't Forget To Get Packages!",),
              CmpSubTitle(SubTitle:"\n\nWe Need To Import:\nimport 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';\n",),
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
              CmpTitle(Title:"Keywords:",),
              Divider(),
              CmpCode(CodeTxt:"TabData:",),
              CmpSubTitle(SubTitle:"-Take iconData That Diplsay The Icon\n-title Text To Be Shown\n-onClick Action To Dp When Clicked.",),
              Divider(),
              CmpCode(CodeTxt:"initialSelection:",),
              CmpSubTitle(SubTitle:"Active PageIndex On Start.",),
              Divider(),
              CmpCode(CodeTxt:"circleColor:",),
              CmpSubTitle(SubTitle:"Set The Background Of The Circle Globbing The Icon.",),
              Divider(),
              CmpCode(CodeTxt:"inactiveIconColor:",),
              CmpSubTitle(SubTitle:"Set The Background Of Non Slected Circle Globbing The Icon.",),
              Divider(),
              CmpCode(CodeTxt:"barBackgroundColor:",),
              CmpSubTitle(SubTitle:"Set The BackgroundColor Of The Main Bar",),
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

              CmpSubTitle(SubTitle:"Creating PageIndex To Be Shown Var:"),
              CmpCode(CodeTxt:"int currentPage = 0;"),

              CmpSubTitle(SubTitle:"Creating StateKey Var:"),
              CmpCode(CodeTxt:"GlobalKey bottomNavigationKey = GlobalKey();"),

              CmpCode(
                  CodeTxt:
                  "Scaffold(\n"
                  " bottomNavigationBar:FancyBottomNavigation(\n"
                  " initialSelection:0,\n"
                  " key: bottomNavigationKey,\n"
                  " circleColor:Colors.teal,\n"
                  " inactiveIconColor:Colors.white,\n"
                  " barBackgroundColor:Colors.lightBlueAccent,\n"
                  " tabs: [\n"
                  "  TabData(\n"
                  "   iconData: Icons.add,\n"
                  "   title:'Add',\n"
                  "   onclick: () {}\n"
                  "  ),\n"
                  "  //You Can Add More\n"
                  " ],\n"
                  " onTabChangedListener:(indexPage) {\n"
                  "  setState(() {\n"
                  "   currentPage = indexPage;\n"
                  "  });\n"
                  " },\n"
                  "),\n"
                  ")\n"

              ),
            ]
        ),
      ),
    ),
  ),
];

