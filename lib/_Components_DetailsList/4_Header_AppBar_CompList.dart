import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


String AppBar_Light_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(SimpleAppBarLightRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Create An AppBar(No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Allow Us To Use Scaffold And Set The Theme To Light\n\n"
    "-Light Theme Make Main BackgroundColor Blank And AppBar Blue (We Can Change Them)\n\n"
    "-Scaffold Allow Us To Use AppBar\n\n"
    "-Finally Setting The Title Of The AppBar";


List AppBar_Light_list =[
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
              CmpTitle(Title:"AppBar Light Theme:",),
              Divider(),
              CmpSubTitle(SubTitle:"Turn AppBar Background Color To Blue,Main Background Color To Light",),
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
                    "MaterialApp(\n"
                    " theme:ThemeData.light(),\n"
                    " home:Scaffold(\n"
                    "  appBar: AppBar(\n"
                    "   title: Text('AppBar_Title'),\n"
                    "  ),\n"
                    " ),\n"
                    "),\n",
              ),
            ]
        ),
      ),
    ),
  ),
];


//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------


String AppBar_Dark_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(SimpleAppBarLightRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Create An AppBar(No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Allow Us To Use Scaffold And Set The Theme To Dark\n\n"
    "-Dark Theme Make Main BackgroundColor And AppBar To Dark (We Can Change Them)\n\n"
    "-Scaffold Allow Us To Use AppBar\n\n"
    "-Finally Setting The Title Of The AppBar";


List AppBar_Dark_list =[
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
              CmpTitle(Title:"AppBar Dark Theme:",),
              Divider(),
              CmpSubTitle(SubTitle:"Turn AppBar Background Color To Dark,Main Background Color To Dark",),
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
                    "MaterialApp(\n"
                    " theme:ThemeData.dark(),\n"
                    " home:Scaffold(\n"
                    "  appBar: AppBar(\n"
                    "   title: Text('AppBar_Title'),\n"
                    "  ),\n"
                    " ),\n"
                    "),\n",
              ),
            ]
        ),
      ),
    ),
  ),
];


//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------

String AppBar_YBG_RTXT_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(SimpleAppBarYBG_RTXT_Run) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Create An AppBar(No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Allow Us To Use Scaffold And Set The Theme To Dark\n\n"
    "-Dark Theme Make Main BackgroundColorAnd AppBar To Dark (Case AppBar Change)\n\n"
    "-Scaffold Allow Us To Use AppBar\n\n"
    "-We Can Change App Bar Background Color By Calling backgroudColor:Color_Needed\n\n"
    "-Finally Setting The Title(Text) Of The AppBar\n\n"
    "-Last Step To Perform Is Change Title TextColor To Red,We Can Change It By TextStyle color:Color_Needed";


List AppBar_YBG_RTXT_list =[
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
              CmpTitle(Title:"Styling The AppBar:",),
              Divider(),
              CmpSubTitle(SubTitle:"You Can Still Style The AppBar And Apply Wanted Text And Background Color!",),
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
                            "MaterialApp(\n"
                            " theme:ThemeData.dark(),\n"
                            " home:Scaffold(\n"
                            " appBar: AppBar(\n"
                            "  backgroundColor:\n   Colors.yellow,\n"
                            "  title: Text(\n"
                            "    'AppBar_Title',\n"
                            "    style: TextStyle(\n"
                            "       color: Colors.red,\n"
                            "     ),\n"
                            "  ),\n"
                            " )\n"
                            "),\n",
              ),
            ]
        ),
      ),
    ),
  ),
];


//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------

String AppBar_Gradient_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(GradientAppBarRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Create An AppBar(No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Allow Us To Use Scaffold\n\n"
    "-Scaffold Allow Us To Use AppBar\n\n"
    "-Now Setup That Body Allowed By Scaffold\n\n"
    "-Custom Scroll View Allow Us To Scroll Down When There Is Alot Of Content\n\n"
    "-Now Creating Silver That Allow Us To Create Silver AppBar\n\n"
    "-The App Bar Will Be Pinned Alway To The Top\n\n"
    "-His Height is 50\n\n"
    "-Contain An Container in that 50px Height That having an Box Decoration\n\n"
    "-Inside The Box Colors Set By Linear Gradient\n\n"
    "-Colors go Between purple And Yellow\n\n"
    "-Finally Setting The Title Of The Bar";


List AppBar_Gradient_list =[
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
              CmpTitle(Title:"Styling The AppBar:",),
              Divider(),
              CmpSubTitle(SubTitle:"You Can Still Apply The Gradient Colors Into The AppBar!",),
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
                    "CustomScrollView (\n"
                    " slivers: <Widget>[\n"
                    "  SliverAppBar (\n"
                    "   pinned: true,\n"
                    "   expandedHeight: 50,\n"
                    "   flexibleSpace: Container (\n"
                    "   decoration:BoxDecoration (\n"
                    "     gradient:LinearGradient (\n"
                    "       colors:[\n"
                    "         Colors.deepPurpleAccent,\n"
                    "         Colors.yellowAccent,\n"
                    "       ],\n"
                    "      ),\n"
                    "     ),\n"
                    "    ),\n"
                    "   title: Text ('AppBar_Title'),\n"
                    "  ),\n"
                    " ],\n"
                    "),"
              ),
            ]
        ),
      ),
    ),
  ),
];


//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------

String AppBar_LeftIcon_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(AppBarLeftIconRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Create An AppBar(No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Allow Us To Use Scaffold And Set The Theme To Light\n\n"
    "-Scaffold Allow Us To Use AppBar\n\n"
    "-AppBar Title is Centered By centerTitle\n\n"
    "-To Add The The Left Icon We Add leading Then IconName\n\n"
    "-Setting The Title Of The AppBar That Has Direction ,Style To Set His Color To Indigo\n\n"
    "-Finally The Background Of The AppBar To Grey";


List AppBar_LeftIcon_list =[
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
              CmpTitle(Title:"Styling The AppBar:",),
              Divider(),
              CmpSubTitle(SubTitle:"You Can Add An Left Icon To The AppBar Using leading",),
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
                "MaterialApp(\n"
                    " theme:ThemeData.dark(),\n"
                    " home:Scaffold(\n"
                    "  appBar:AppBar(\n"
                    "   centerTitle: true,\n"
                    "   leading:Icon(Icons.ac_unit),\n"
                    "   title:Text(\n"
                    "    'LeftIcon',\n"
                    "   textDirection:\n"
                    "    TextDirection.ltr,\n"
                    "   style: TextStyle(\n"
                    "    color: Colors.indigo,"
                    "   ),\n"
                    "  ),\n"
                    "  backgroundColor: Colors.grey,\n"
                    " ),\n"
                    "),\n",
              ),
            ]
        ),
      ),
    ),
  ),
];

//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------


String AppBar_LeftRightIcon_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(AppBarLeftRightIconRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Create An AppBar(No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Allow Us To Use Scaffold And Set The Theme To Light\n\n"
    "-Scaffold Allow Us To Use AppBar\n\n"
    "-App Bar Will be Divided To 3 Part\nIcon | Title | Icon\n"
    "-First Part Is The Leading Icon That Move 12px\n\n"
    "-Second Part Is The Title Inserted Inside A Row That Contain Title Text, Row Used To Center The Title\n\n"
    "-Finally Setting The Last Icon By action That Take The Icon\n\n"
    "-actions is a widget that use shortcuts\n\n"
    "-Last Icon Inserted After The Row Containing The Title Noting That All Covered By The AppBar On The Same Line";


List AppBar_LeftRightIcon_list =[
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
              CmpTitle(Title:"Styling The AppBar:",),
              Divider(),
              CmpSubTitle(SubTitle:"A Floating Icon From Left And Right!",),
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
                        "MaterialApp(\n"
                        " theme:ThemeData.dark(),\n"
                        " home:Scaffold(\n"
                        " appBar:AppBar(\n"
                        "  leading: Padding(\n"
                        "   padding:\n"
                        "    EdgeInsets.only(left: 12),\n"
                        "     child:  IconButton(\n"
                        "       icon:\n"
                        "        Icon(Icons.account_balance),\n"
                        "      ),\n"
                        "   ),\n"
                        "  title: Row(\n"
                        "   mainAxisAlignment:\n"
                        "    MainAxisAlignment.center,\n"
                        "   children: <Widget>[\n"
                        "     Text('<-- Icons -->')\n"
                        "   ],\n"
                        "  ),\n"
                        "  actions: <Widget>[\n"
                        "   IconButton(\n"
                        "    icon:\n"
                        "     Icon(Icons.account_balance),\n"
                        "     ),\n"
                        "   ],\n"
                        "  ),\n"
                        " ),\n"
                        "),\n",
              ),
            ]
        ),
      ),
    ),
  ),
];

//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------


String AppBar_DoubleSideIcon_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(AppBarDoubleSideIconsRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Create An AppBar(No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Allow Us To Use Scaffold And Set The Theme To Light\n\n"
    "-Scaffold Allow Us To Use AppBar\n\n"
    "-App Bar Will be Divided To 3 Part\nIcon Icon | Title | Icon Icon\n"
    "-First Part Is The Leading Icon But As We Have To Put 2 Icons We Have To Use Row (leading take one icon)\n\n"
    "-First Icons Row Has children that Will contain To Icon Button That Hold The Icon"
    "-Second Part Is The Title Inserted Inside A Row That Contain Title Text, Row Used To Center The Title\n\n"
    "-Finally Setting The Last 2Icons By action That Take The 2Icons Inside IconButtons too\n\n"
    "-actions is a widget that used shortcuts\n\n"
    "-Last 2Icons Inserted After The Row Containing The Title Noting That All Covered By The AppBar On The Same Line";


List AppBar_DoubleSideIcon_list =[
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
              CmpTitle(Title:"Styling The AppBar:",),
              Divider(),
              CmpSubTitle(SubTitle:"A Double Floating Icons From Left And Right!",),
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
                        "MaterialApp(\n"
                        " theme:ThemeData.dark(),\n"
                        " home:Scaffold(\n"
                        "appBar: AppBar(\n"
                        " leading: Padding(\n"
                        "  padding: EdgeInsets.only(left: 2),\n"
                        "   child: Row(\n"
                        "    children: <Widget>[\n"
                        "     IconButton(\n"
                        "      icon: Icon(Icons.account_circle),\n"
                        "     ),\n"
                        "     Expanded(\n"
                        "      child: IconButton(\n"
                        "       icon:\n"
                        "        Icon(Icons.account_circle),\n"
                        "       ),\n"
                        "     ),\n"
                        "    ],\n"
                        "   ),\n"
                        "  ),\n"
                        " title: Row(\n"
                        "  mainAxisAlignment:\n"
                        "   MainAxisAlignment.center,\n"
                        "    children: <Widget>[\n"
                        "     Text('Icons'),\n"
                        "    ],\n"
                        " ),\n"
                        "actions: <Widget>[\n"
                        " IconButton(\n"
                        "  icon:Icon(Icons.account_circle),\n"
                        " ),\n"
                        " IconButton(\n"
                        "  icon:Icon(Icons.account_circle),\n"
                        "  ),\n"
                        " ],\n"
                        "),\n"
                        "),\n"
                        "),\n",
              ),
            ]
        ),
      ),
    ),
  ),
];

//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------