

import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_GreyCard_Image_Title.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../AppLang.dart';




/*
var TKeywords1,TKeywords2,TKeywords3,TKeywords4,TKeywords5,TKeywords6,TKeywords7,TKeywords8,TKeywords9,TKeywords10,TKeywords11,TKeywords12;

void TranslateKeyWordsCompList() async{
  TKeywords1="What Is ";
  await TranslateWord(TKeywords1).then((value){ TKeywords1 =value; });

  TKeywords2="-User Interface Build Using Modern Framework\n\n-Everything Is A Widget(Text,Buttons,Layouts...)\n\n-Describe How The View Should Look (Configuration And State)";
  await TranslateWord(TKeywords2).then((value){ TKeywords2 =value; });

  TKeywords3="-Drawn only once when the Widget is loaded, which means we can’t redraw the Widget based on any events or user actions.\n\n-Used When We Want To Display Things That Doesn't Handle Any Event Example Page Of Texts.\n\n";
  await TranslateWord(TKeywords3).then((value){ TKeywords3 =value; });

  TKeywords4="-Can Be Loaded Many Times By Calling setState()\n\n-Require 2 classes, one is derived from Stateful Widget and another is derived from Generic State<>\n\n-Example: A Quiz That Has 2 Radio Buttons Once The User Check The Wanted Option We Have To Check The Answer So a Change To a State Has Been Made(Change Radio State From NonChecked To Checked)\n\n";
  await TranslateWord(TKeywords4).then((value){ TKeywords4 =value; });

  TKeywords5="Simple Widget That Maintains A Stack Of Routes (Terms,History of visited Pages)\n\n";
  await TranslateWord(TKeywords5).then((value){ TKeywords5 =value; });

  TKeywords6="Used To Go From An Page To Another Page , Example Login Page To Profile Page\n\n";
  await TranslateWord(TKeywords6).then((value){ TKeywords6 =value; });

  TKeywords7="Used To Get Rid Of The Last Visited Screen, Example: A Dialog Has Popped Up,Pop Will Close That Dialog\n\n";
  await TranslateWord(TKeywords7).then((value){ TKeywords7 =value; });

  TKeywords8="-Container For A Material App\n\n-Allow Us To Create Multiple Widgets Such As appBar ,  body , BottomNavigationBar ...\n\n";
  await TranslateWord(TKeywords8).then((value){ TKeywords8 =value; });

  TKeywords9="Specify If The Body Should Resize When The Keyboard Appear";
  await TranslateWord(TKeywords9).then((value){ TKeywords9 =value; });

  await TranslateWord(Scaffold_AvoidBottom_false_Explanation).then((value){ Scaffold_AvoidBottom_false_Explanation =value; });
 
  await TranslateWord(Scaffold_AvoidBottom_true_Explanation).then((value){ Scaffold_AvoidBottom_true_Explanation =value; });

  TKeywords10="-A Header That Display At The Top Of Scaffold.\n\n-Default Background Color Is Blue.\n\n-Default Text Color Is White.\n\n-An appBar Can Contain Icons.\n\n-An appBar Can Be Styled.\n\n";
  await TranslateWord(TKeywords10).then((value){ TKeywords10 =value; });

  TKeywords11="-MaterialApp Used For Creating material Design which allows us to use Scaffold\n\n-Describe The Tilte And The Theme That Will Be Shown When User Need To Close The App\n\n";
  await TranslateWord(TKeywords11).then((value){ TKeywords11 =value; });

  await TranslateWord(MaterialApp_Title_Theme_Explanation).then((value){ MaterialApp_Title_Theme_Explanation =value; });

}


*/


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


//---------------------------------------

String Scaffold_AvoidBottom_false_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(Scaffold_resizeToAvoidBottomPadding_false) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We There Is No Data Change Or Any Actions To Do\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Contain A Scaffold That Allow Us To Create The Body Of The Page (All Widgets That Appear)\n\n"
    "-Scaffold Set To Not Resize The Body\n\n"
    "-Body Widgets Will Be Shown In Next Courses You Can Keep Going!\n\n";



List Scaffold_AvoidBottom_false_list =[
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
              CmpTitle(Title:"resizeAvoidBottomPadding:",),
              Divider(),
              CmpSubTitle(SubTitle:"Specify If The Body Should Resize When The Keyboard Appear",),
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
                    "  resizeToAvoidBottomPadding:false,\n"
                    "  //More Widgets Go Here\n"
                    " ),\n"
                    "),\n",
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


String Scaffold_AvoidBottom_true_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(Scaffold_resizeToAvoidBottomPadding_true) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We There Is No Data Change Or Any Actions To Do\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Contain A Scaffold That Allow Us To Create The Body Of The Page (All Widgets That Appear)\n\n"
    "-Scaffold Set To Resize The Body\n\n"
    "-Body Widgets Will Be Shown In Next Courses You Can Keep Going!\n\n";



List Scaffold_AvoidBottom_true_list =[
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
              CmpTitle(Title:"resizeAvoidBottomPadding:",),
              Divider(),
              CmpSubTitle(SubTitle:"Specify If The Body Should Resize When The Keyboard Appear",),
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
                    "  resizeToAvoidBottomPadding:true,\n"
                    "  //More Widgets Go Here\n"
                    " ),\n"
                    "),\n",
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




String MaterialApp_Title_Theme_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(MaterialAppTitleTheme) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We There Is No Data Change Or Any Actions To Do\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-title Set To Demo\n\n"
    "-Theme To Teal\n\n"
    "-As An Home It Contain A Scaffold That Allow Us To Create The Body Of The Page (All Widgets That Appear)\n\n"
    "-Body Has A Centered Text!\n\n";



List MaterialApp_Title_Theme_list =[
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
              CmpTitle(Title:"Material App:",),
              Divider(),
              CmpSubTitle(SubTitle:"-title Show As Text\n-theme SetThe Color Of The Header\n\nHere title Set To Demo And Theme To Teal\n",),
              Image.asset("Images/MaterialAppTitleTheme.PNG"),
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
                    " debugShowCheckedModeBanner:false,\n"
                    " title:'Demo',\n"
                    " theme:ThemeData(\n"
                    "  primaryColor:Colors.teal,\n"
                    " ),\n"
                    " home:Scaffold(\n"
                    "  //More Widgets Go Here\n"
                    " ),\n"
                    "),\n",
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










