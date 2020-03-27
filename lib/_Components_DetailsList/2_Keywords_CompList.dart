import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_GreyCard_Image_Title.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';

List WidgetKeywordsCompList =[
  CmpGreyCardImageTitle(
     CardIcon:Image.asset("Images/Keyword.png"),
     CardTitle:"Widget",
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
              CmpTitle(Title:"What Is Flutter Widget ?",),
              Divider(),
              CmpSubTitle(SubTitle:"-User Interface Build Using Modern Framework\n\n-Everything Within Flutter Application Is A Widget(Text,Buttons,Layouts...)\n\n-Describe How The View Should Look(Configuration And State)",),
              SizedBox(height: 16,),
              Image.asset("Images/Widget.png",),
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

List StatelessKeywordsCompList =[
  CmpGreyCardImageTitle(
    CardIcon:Image.asset("Images/Keyword.png"),
    CardTitle:"Stateless Widget",
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
              CmpTitle(Title:"What Is a Stateless Widget ?",),
              Divider(),
              CmpSubTitle(SubTitle:"-Drawn only once when the Widget is loaded, which means we can’t redraw the Widget based on any events or user actions.\n\n-Used When We Want To Display Things That Doesn't Handle Any Event Example Page Of Texts.\n\n",),
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

List StatefullKeywordsCompList =[
  CmpGreyCardImageTitle(
    CardIcon:Image.asset("Images/Keyword.png"),
    CardTitle:"Statefull Widget",
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
              CmpTitle(Title:"What Is a Statefull Widget ?",),
              Divider(),
              CmpSubTitle(SubTitle:"-Can Be Loaded Many Times By Calling setState()\n\n-Require 2 classes, one is derived from Stateful Widget and another is derived from Generic State<>\n\n-Example: A Quiz That Has 2 Radio Buttons Once The User Check The Wanted Option We Have To Check The Answer So a Change To a State Has Been Made(Change Radio State From NonChecked To Checked)\n\n",),
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

List NavigatorKeywordsCompList =[
  CmpGreyCardImageTitle(
    CardIcon:Image.asset("Images/Keyword.png"),
    CardTitle:"Navigator",
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
              CmpTitle(Title:"What Is a Navigator?",),
              Divider(),
              CmpSubTitle(SubTitle:"Simple Widget That Maintains A Stack Of Routes (Terms,History of visited Pages)\n\n",),
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
              CmpTitle(Title:"Navigator Push:",),
              Divider(),
              CmpSubTitle(SubTitle:"Used To Go From An Page To Another Page , Example Login Page To Profile Page\n\n",),
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
              CmpTitle(Title:"Navigator Pop:",),
              Divider(),
              CmpSubTitle(SubTitle:"Used To Get Rid Of The Last Visited Screen, Example: A Dialog Has Popped Up,Pop Will Close That Dialog\n\n",),
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

List ScaffoldKeywordsCompList =[
  CmpGreyCardImageTitle(
    CardIcon:Image.asset("Images/Keyword.png"),
    CardTitle:"Scaffold",
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
              CmpTitle(Title:"What Is Scaffold?",),
              Divider(),
              CmpSubTitle(SubTitle:"-Container For A Material App\n\n-Allow Us To Create Multiple Widgets Such As appBar , home , body , BottomNavigationBar ...\n\n",),
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


List AppBarKeywordsCompList =[
  CmpGreyCardImageTitle(
    CardIcon:Image.asset("Images/Keyword.png"),
    CardTitle:"AppBar",
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
              CmpTitle(Title:"What Is An AppBar?",),
              Divider(),
              CmpSubTitle(SubTitle:"-A Header That Display At The Top Of Scaffold.\n\n-Default Background Color Is Blue.\n\n-Default Text Color Is White.\n\n-An appBar Can Contain Icons.\n\n-An appBar Can Be Styled.\n\n",),
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

List MaterialAppKeywordsCompList =[
  CmpGreyCardImageTitle(
    CardIcon:Image.asset("Images/Keyword.png"),
    CardTitle:"Material App",
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
              CmpTitle(Title:"What Is An MaterialApp?",),
              Divider(),
              CmpSubTitle(
                SubTitle:
                  "-MaterialApp Used For Creating material Design which allows us to use Scaffold\n\n"
                  "-Describe The Tilte And The Theme That Will Be Shown When User Need To Close The App\n\n",
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










