import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


String CurvedNavBar_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(CurvedNavBar) To Be Runned\n\n"
    "-Creating GlobalKey _bottomNavigationKey For The CurvedNavigationBar\n\n"
    "-This Class Is StatefullWidget Due To Page Change Depending On User Selection,Create State Needed\n\n"
    "-Creating State Class _CurvedNavBarState That Extend Its Main State From The Main Class CurvedNavBar\n\n"
    "-Creating Integer Variable _page Representing The Page Index Set To 0,Changed On User Selection And Changing Body Page\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Has Scaffold That Allow Us To Use AppBar And Set Body\n\n"
    "-As An AppBar It Has A Title\n\n"
    "-As An bottomNavigationBar It Take CurvedNavigationBar\n\n"
    "-CurvedNavigationBar Initialized By Its Key\n\n"
    "-Active Page Is 0 The First One\n\n"
    "-Height Set To 50\n\n"
    "-items Is Childrens To Be Shown And Clicked By The User,Here 4Icons\n\n"
    "-Bar Color Set To White\n\n"
    "-buttonBackgroundColor Holding The Item BackgroundColor Set To Blue\n\n"
    "-backgroundColor Set The Active Button Backgound Color to Teal\n\n"
    "-animationCurve Set Animation To Curves.easeInOut With Duration 600ms Set By animationDuration\n\n"
    "-onTap Detect Item Change And Change Page To The Wanted Page\n\n"
    "-As An Body It Take Page Class Needed Depend On The Page Index Selected\n\n";



List CurvedNavBar_list =[
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
              CmpTitle(Title:"CurvedNavBar:",),
              Divider(),
              CmpSubTitle(SubTitle:"Flutter Package For Easy Implementation Of Curved Navigation Bar",),
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
              Image.asset("Images/CurvedNavBar.PNG"),
              CmpSubTitle(SubTitle:"\nTo Use We Need  To Import:\nimport 'package:curved_navigation_bar/curved_navigation_bar.dart';\n",),
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
              CmpCode(CodeTxt:"items:",),
              CmpSubTitle(SubTitle:"Take List of Widgets To Be Shown And Clickable By User.",),
              Divider(),
              CmpCode(CodeTxt:"index:",),
              CmpSubTitle(SubTitle:"index of NavigationBar, can be used to change current index or to set initial index.",),
              Divider(),
              CmpCode(CodeTxt:"color:",),
              CmpSubTitle(SubTitle:"Color of NavigationBar, default Colors.white.",),
              Divider(),
              CmpCode(CodeTxt:"buttonBackgroundColor:",),
              CmpSubTitle(SubTitle:"background color of floating button, default same as color attribute(White).",),
              Divider(),
              CmpCode(CodeTxt:"backgroundColor:",),
              CmpSubTitle(SubTitle:"Color of NavigationBar's background, default Colors.blueAccent.",),
              Divider(),
              CmpCode(CodeTxt:"onTap:",),
              CmpSubTitle(SubTitle:"Function handling taps on items.",),
              Divider(),
              CmpCode(CodeTxt:"animationCurve:",),
              CmpSubTitle(SubTitle:"Curves interpolating button change animation, default Curves.easeOutCubic.",),
              Divider(),
              CmpCode(CodeTxt:"animationDuration:",),
              CmpSubTitle(SubTitle:"Duration of button change animation, default Duration(milliseconds: 600).",),
              Divider(),
              CmpCode(CodeTxt:"height:",),
              CmpSubTitle(SubTitle:"Height of NavigationBar, min 0.0, max 75.0.",),
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
              CmpTitle(Title:"Code",),
              Divider(),

              CmpSubTitle(SubTitle:"1-Creating Key:"),
              CmpCode(CodeTxt:"GlobalKey _bottomNavigationKey = GlobalKey();\n\n",),

              CmpSubTitle(SubTitle:"2-Creating PageIndex Var:"),
              CmpCode(CodeTxt:"int _page = 0;\n\n",),

              CmpSubTitle(SubTitle:"3-Widget:"),
              CmpCode(
                CodeTxt:
                "Scaffold(\n"
                " bottomNavigationBar:CurvedNavigationBar(\n"
                "  key: _bottomNavigationKey,\n"
                "  index: 0,\n"
                "  height: 50.0,\n"
                "  items: <Widget>[\n"
                "   //Widgets To Show\n"
                "  ],\n"
                "  color: Colors.white,\n"
                "  buttonBackgroundColor:Colors.blue,\n"
                "  backgroundColor: Colors.teal,\n"
                "  animationCurve: Curves.easeInOut,\n"
                "  animationDuration: Duration(milliseconds: 600),\n"
                "  onTap: (index) {\n"
                "   setState(() {\n"
                "     _page = index;\n"
                "   });\n"
                "  },\n"
                " ),\n"
                ")\n",
              )
            ]
        ),
      ),
    ),
  ),
];