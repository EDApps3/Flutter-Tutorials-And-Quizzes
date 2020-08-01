import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


String TabBar_Top_Explanation=
    "-main Is The Principal Method Called Once The Program Is Loaded\n\n"
    "-Once Loaded The Program Gonna Call The Class TopTabBar,Statless Widget (No State Change) Just Navigating Through Pages \n\n"
    "-Creating Class TopTabBar\n\n"
    "-As Flutter Is Based On Widgets,We Need To Create One\n\n"
    "-Creating Material App That Grant Light Theme And Set The Title When We Need To Close The App\n\n"
    "-Taking As An Home Scaffold That Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As An AppBar It Take An Title,Bottom Of The Top AppBar We Have TabBar That Take As A List Objects Of TabBar Taking Icon And Text\n\n"
    "-You Can Only Show Text Or Icon Or Both Of Them\n\n"
    "-You Can Create Tabs As You Want\n\n"
    "-Now As An Body We have To Put TabBar View That Will Take Childrens Of Type Widget Pages\n\n"
    "-Noting That If We Created 3 TabBar We Need To Create 3 Pages\n\n"
    "-Finally Creating The Pages...\n\n";


List TabBar_Top_list =[
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
                " appBar: AppBar("
                "  bottom: TabBar(\n"
                "   tabs: [\n"
                "    Tab(icon:Icon(Icons.star),text:'P1',),\n"
                "    Tab(icon:Icon(Icons.star),text:'P2',),\n"
                "    Tab(icon:Icon(Icons.star),text:'P3',),\n"
                "   ],\n"
                "  ),\n"
                " ),\n"
                " body:TabBarView(\n"
                "  children: [\n"
                "   P1(),\n"
                "   P2(),\n"
                "   P3(),\n"
                "  ],\n"
                " ),\n"
                "),\n"
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

String TabBar_Bottom_Explanation=
    "-main Is The Principal Method Called Once The Program Is Loaded\n\n"
    "-Once Loaded The Program Gonna Call The Class BottomTabBar,Statless Widget (No State Change) Just Navigating Through Pages \n\n"
    "-Creating Class BottomTabBar\n\n"
    "-As Flutter Is Based On Widgets,We Need To Create One\n\n"
    "-Creating Material App That Grant Light Theme And Set The Title When We Need To Close The App\n\n"
    "-Taking As An Home Scaffold That Allow Us To Use AppBar,BottomNavigationAppBar And Set The Body Of The Page\n\n"
    "-As An AppBar It Take An Title\n\n"
    "-As An BottomNavigationBar Taking A Container Set To Orange Having As An child TabBar Takinf List Of TabBar Each Having Icon And Text\n\n"
    "-You Can Only Show Text Or Icon Or Both Of Them\n\n"
    "-You Can Create Tabs As You Want\n\n"
    "-Now As An Body We have To Put TabBar View That Will Take Childrens Of Type Widget Pages\n\n"
    "-Noting That If We Created 3 TabBar We Need To Create 3 Pages\n\n"
    "-Finally Creating The Pages...\n\n";


List TabBar_Bottom_list =[
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
                      " bottomNavigationBar: Container(\n"
                      "  color:Colors.orange,\n"
                      "  child: TabBar(\n"
                      "   tabs: [\n"
                      "    Tab(icon:Icon(Icons.star),text:'P1',),\n"
                      "    Tab(icon:Icon(Icons.star),text:'P2',),\n"
                      "    Tab(icon:Icon(Icons.star),text:'P3',),\n"
                      "   ],\n"
                      "  ),\n"
                      " ),\n"
                      " body:TabBarView(\n"
                      "  children: [\n"
                      "   P1(),\n"
                      "   P2(),\n"
                      "   P3(),\n"
                      "  ],\n"
                      " ),\n"
                      "),\n"
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




String TabBar_Top_Hidden_Explanation=
    "Soon!";


List TabBar_Top_Hidden_list =[
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
              CmpTitle(Title:"Soon",),
            ]
        ),
      ),
    ),
  ),
];




String TabBar_Bottom_Hidden_Explanation=
    "Soon!";


List TabBar_Bottom_Hidden_list =[
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
              CmpTitle(Title:"Soon",),
            ]
        ),
      ),
    ),
  ),
];

//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------