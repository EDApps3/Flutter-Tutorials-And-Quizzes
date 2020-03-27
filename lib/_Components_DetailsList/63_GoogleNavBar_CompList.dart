import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


String GoogleNavBar_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(GoogleNavBar) To Be Runned\n\n"
    "-This Class Is Statefull Widget To Detect Changed Page Index To Be Shown\n\n"
    "-First Creating Main Class GoogleNavBar And Set Its Main State\n\n"
    "-Secondly Creating Class _GoogleNavBarState That Extend Its State From Its Main GoogleNavBar\n\n"
    "-Creating int Variable _selectedIndex Set To 0 Describe Active Page Index\n\n"
    "-Create List Of Widget _widgetOptions Used To Initialize Content Of Pages To Be Shown\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating A Material App Taking  Scaffold Allowing Us To Use AppBar And The Body Of The Page\n\n"
    "-As An AppBar It Take A Simple Text As Title\n\n"
    "-As An Body It Take Container Where Its Child Shown On Selected Page Index (if 0 Content Of Page0 In _widgetOptions...) \n\n"
    "-As An Bottom Nav Bar It Take A Container White Color With Shadows Taking GNav\n\n"
    "-GNav Having gap set to 8,activeColor Icon To White,padding,duration And tabBackgroundColor To grey And Finally Setting Buttons With icon And Text\n\n"
    "-Active selectedIndex Change Our Variable _selectedIndex,If Profile Selected _selectedIndex Set to 1...\n\n"
    "-Finally Change Method onTabChange That Change _selectedIndex\n\n";

List GoogleNavBar_List =[
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
              CmpTitle(Title:"What Is Google NavBar?",),
              Divider(),
              CmpSubTitle(SubTitle:"A Modern google style navBar for flutter.",),
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
              Image.asset("Images/GoogleNavBar.PNG"),
              CmpSubTitle(SubTitle:"\nTo Use We Need  To Import:\nimport 'package:google_nav_bar/google_nav_bar.dart';\n",),
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
              CmpSubTitle(SubTitle:"1-Declaring Selected Page Index Var:\n",),
              CmpCode(CodeTxt:"int _selectedIndex = 0;\n\n",),

              CmpSubTitle(SubTitle:"2-Declaring List Of Content Widget:\n",),
              CmpCode(
                CodeTxt:
                "static List<Widget> _widgetOptions = <Widget>[\n"
                "  //Any Widget\n"
                "]\n\n",
              ),

              CmpSubTitle(SubTitle:"3-Displaying Content At Body:\n",),
              CmpCode(
                CodeTxt:
                "Container(\n"
                " width:double.infinity,\n"
                " height:double.infinity,\n"
                " child:_widgetOptions.elementAt(_selectedIndex),\n"
                ")\n\n",
              ),

              CmpSubTitle(SubTitle:"4-The GNavBar:\n",),
              CmpCode(
                CodeTxt:
                "GNav(\n"
                " gap: 8,\n"
                " activeColor: Colors.white,\n"
                " iconSize: 24,\n"
                " padding:EdgeInsets.symmetric(horizontal: 20, vertical: 5),\n"
                " duration: Duration(milliseconds: 800),\n"
                " tabBackgroundColor: Colors.grey[800],\n"
                " tabs: [\n"
                "  GButton(\n"
                "    icon:Icons.home,\n"
                "    text: 'Home',\n"
                "  ),\n"
                "  //More GButton\n"
                " ],\n"
                " selectedIndex:_selectedIndex,\n"
                " onTabChange: (index) {\n"
                "  setState(() {\n"
                "   _selectedIndex = index;\n"
                "  });\n"
                " },\n"
                ")\n\n",
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


