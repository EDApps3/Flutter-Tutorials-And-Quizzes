import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


List Card_Intro_list =[
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
              CmpTitle(Title:"What Is Card:",),
              Divider(),
              CmpSubTitle(SubTitle: "Material Design Card,Has Slightly Rounded Corners And A Shadow:You Can Set:\n-Background Color\n-Elevation\n",),
            ]
        ),
      ),
    ),
  ),
];


//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------


String Card_Simple_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(SimpleCardRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Show Centered 2 Cards (No State Change)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It And Having Light Theme\n\n"
    "-As An Home It Take An Scaffold That Allow Us To Use AppBar And Body\n\n"
    "-As An AppBar It Take A Title"
    "-As An  Body It Contain A Column(Give 2 Row) Centered Vertically\n\n"
    "-First Row Contain A Card That Hold Card Having A Simple Text\n\n"
    "-Second Row Contain Also A Card That Hold Card Having A Simple Text\n\n";


List Card_Simple_list =[
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
                      "Card(\n"
                      " child:\n"
                      "  //Any Widget(Btn,Txt...)\n"
                      "),\n",
              ),
            ]
        ),
      ),
    ),
  ),
];


//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------


String Card_WH_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(SimpleCardWHRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Show Cards Max Width With A Height 200 (No State Change)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It And Having Light Theme\n\n"
    "-As An Home It Take An Scaffold That Allow Us To Use AppBar And Body\n\n"
    "-As An AppBar It Take A Title"
    "-As An  Body It Contain A Column Centered Vertically(No Need To Center Horizontally As Having Max Width)\n\n"
    "-First Row Contain A Card That A Sized Box Used  To Size Widgets Having Max Width And Height 200\n\n"
    "-Sized Box Child Match Its Size\n\n"
    "-Sized Box Taking Card As A Child\n\n"
    "-Card Taking A Row Having Text Centered Horizontally And Vertically(You Can Use Center Layout Instead Of Row)\n\n";


List Card_WH_list =[
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
                    "SizedBox(\n"
                    " width:double.infinity,\n"
                    " height: 200,\n"
                    " child:Card(\n"
                    " child:\n"
                    "  //Any Widget(Btn,Txt...)\n"
                    ")\n",
              ),
            ]
        ),
      ),
    ),
  ),
];


//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------


String Card_Red_WH_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(SimpleBgCardWHRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Show Red Background Color Card (No State Change)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It And Having Light Theme\n\n"
    "-As An Home It Take An Scaffold That Allow Us To Use AppBar And Body\n\n"
    "-As An AppBar It Take A Title"
    "-As An  Body It Contain A Column Centered Vertically(No Need To Center Horizontally As Having Max Width)\n\n"
    "-First Row Contain A Card That A Sized Box Used  To Size Widgets Having Max Width And Height 200\n\n"
    "-Sized Box Child Match Its Size\n\n"
    "-Sized Box Taking Card As A Child Having Background Color Set To Red By Color\n\n"
    "-Card Taking A Row Having Text Centered Horizontally And Vertically(You Can Use Center Layout Instead Of Row)\n\n";



List Card_Red_WH_list =[
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
                    "SizedBox(\n"
                    " width:double.infinity,\n"
                    " height: 200,\n"
                    " child:Card(\n"
                    " color:Colors.red,\n"
                    " child:\n"
                    "  //Any Widget(Btn,Txt...)\n"
                    ")\n",
              ),
            ]
        ),
      ),
    ),
  ),
];


//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------


String Card_Cust_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(CustCardRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Show A Customized Card (No State Change)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It And Having Light Theme\n\n"
    "-As An Home It Take An Scaffold That Allow Us To Use AppBar And Body\n\n"
    "-As An AppBar It Take A Title"
    "-As An  Body It Contain A Column Centered Vertically(No Need To Center Horizontally As Having Max Width)\n\n"
    "-First Row Contain A Card That A Sized Box Used  To Size Widgets Having Max Width And Height 200\n\n"
    "-Sized Box Child Match Its Size\n\n"
    "-Sized Box Taking Card As A Child\n\n"
    "-Card Taking Column(Elements Placed In Rows)\n\n"
    "-First Row Taking A Row(Elements Placed In Column) Aligned Horizontally To The Center Taking As Column1 An Image And As Column2 Text\n\n"
    "-Second Tow Taking A Row(Elements Placed In Column) Aligned Horizontally To The Center Taking As Column 1 A Text Only\n\n ";


List Card_Cust_list =[
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
                    "Card(\n"
                    "child:\n"
                    " //Any Widget(Row,Col,Container...)\n"
                    ")",
              ),
            ]
        ),
      ),
    ),
  ),
];


//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------



String Card_Elevator_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(CardElevatorRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Navigate Between Pages(No State Change)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It And Having Light Theme\n\n"
    "-As An Home It Take An Scaffold  That Allow Us To Use AppBar And Body Of The Page\n\n"
    "-As An AppBar It Take A Title\n\n"
    "-The Body Contain Column(Allow To Place Elements Each On Row)\n\n"
    "-First Row Take A Card That Has Elevation 20 With A List Tile That Display As A List With Max Width and Take Press Effect,Once Pressed The Navigator Take The User To The Wanted Page (Page1)\n\n"
    "-Second Row Same As The First Card With Different Text And Take User To Another Page Page2\n\n"
    "\n\nFinally Page1 And Page2 Are Simple Page That Have AppBar With Leading Icon Back That Take User Back To The Main Page!";


List Card_Elavator_list =[
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
                    "Card(\n"
                    " elevation:20\n"
                    " child:\n"
                    "  //Any Widget\n"
                    ")\n",
              ),
            ]
        ),
      ),
    ),
  ),
];


//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------