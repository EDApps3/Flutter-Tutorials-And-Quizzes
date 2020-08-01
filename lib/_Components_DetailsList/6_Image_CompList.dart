import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';


String ImageInsert_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(ImageInsRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Centered Image (No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Contain A Scaffold That Allow Us To Create AppBar And The Body Of The Page (All Widgets That Appear)\n\n"
    "-As An AppBar It Has An Title Image Insert\n\n"
    "-As An Body It Has Centered Layout\n\n"
    "-Centered Layout Contain The Image That Will Be Putted In The Center\n\n";


List ImageInsert_list =[
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
              CmpSubTitle(SubTitle:"1-Insert An Directory(Folder) Named Images in The Root Of The Project\n",),
              Image.asset("Images/Img1.png"),
              CmpSubTitle(SubTitle:"\n2-Drag And Drop Image Into The Folder Images\n",),
              Image.asset("Images/Img2.png"),
              CmpSubTitle(SubTitle:"\n3-Finaly Add To Yaml\n",),
              Image.asset("Images/Img3.png"),
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
                 "Image.asset('ImageName.extension),\n"
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


String ImageWidthHeight_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(ImageInsWHRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Centered Image With Width And Height Set to 40 (No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Contain A Scaffold That Allow Us To Create AppBar And The Body Of The Page (All Widgets That Appear)\n\n"
    "-As An AppBar It Has An Title Image Insert\n\n"
    "-As An Body It Has Centered Layout\n\n"
    "-Centered Layout Contain The Image That Will Be Putted In The Center\n\n"
    "-Image Has:\n"
    " Image Path\n"
    " Width Value 40\n"
    " Height Value 40\n";


List ImageWidthHeight_list =[
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
                  "Image.asset(\n"
                  " 'ImageName.extension',\n"
                  " width:Value,\n"
                  " height:Value,\n"
                  ")\n"
              ),
            ]
        ),
      ),
    ),
  ),
];





//-----------------------------------------------------
//-----------------------------------------------------
//-----------------------------------------------------
//-----------------------------------------------------

String ImageNetwork_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(ImgNetworkRun) To Be Runned\n\n"
    "-This Class Is Statefull Widget Due To Load Image State Change By Bytes\n\n"
    "-Creating Main Class State\n\n"
    "-Creating State Class _ImgNetworkState Extending Its Main State From The Main Class ImgNetworkRun\n\n"
    "-Method initState Initializing Page State When Loaded\n\n"
    "-Method dispose Disposing Page  When Closed\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Contain A Scaffold That Allow Us To Create AppBar And The Body Of The Page (All Widgets That Appear)\n\n"
    "-As An AppBar It Has An Title\n\n"
    "-As An Body It Has Centered Container With Width And Height 270\n\n"
    "-The Container Taking Image From Network That Cover The Container And Untill Load Will Show CircularProgressIndicator Where Its Progress Taken From Bytes ,When Totaly Loaded Will Hide(null)\n\n";


List ImageNetwork_list =[
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
                      "Image.network(\n"
                      " 'https://...',\n"
                      "),\n"
              ),
            ]
        ),
      ),
    ),
  ),
];








//-----------------------------------------------------
//-----------------------------------------------------
//-----------------------------------------------------
//-----------------------------------------------------

String Image_Fit_Contain_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(ImgFitContain) To Be Runned\n\n"
    "-This Class Is Stateless Widget Due To No State Change Just Displaying Image\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Contain A Scaffold That Allow Us To Create AppBar And The Body Of The Page (All Widgets That Appear)\n\n"
    "-As An AppBar It Has An Title\n\n"
    "-As An Body It Take ListView That Allow Scrolling And Avoid OverFlow\n\n"
    "-Taking Column Padded By 8 On All Sides Where Elements Displayed As Rows\n\n"
    "-Row 1 Taking Simple Styled Text\n\n"
    "-Row 2 Taking Original Image\n\n"
    "-Row 3 Taking Simple Styled Text\n\n"
    "-Row 4 Taking Container With Width And Height With A Border To Show Effect Where Image Is Set To Contain The Container\n\n";




List Image_Fit_Contain_list =[
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
              CmpTitle(Title:"BoxFit Contain:",),
              Divider(),
              CmpSubTitle(SubTitle:"As Large As Possible Containing The Box",)
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
                 "Container(\n"
                 " decoration:BoxDecoration(\n"
                 "  border:Border.all(),\n"
                 " ),\n"
                 " height:300,\n"
                 " width :300,\n"
                 " child:Image.asset(\n"
                 "  'Images/S2.jpg',\n"
                 "  fit:BoxFit.contain,\n"
                 " ),\n"
                 ")\n"
              ),
            ]
        ),
      ),
    ),
  ),
];








//-----------------------------------------------------
//-----------------------------------------------------
//-----------------------------------------------------
//-----------------------------------------------------

String Image_Fit_Cover_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(ImgFitCover) To Be Runned\n\n"
    "-This Class Is Stateless Widget Due To No State Change Just Displaying Image\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Contain A Scaffold That Allow Us To Create AppBar And The Body Of The Page (All Widgets That Appear)\n\n"
    "-As An AppBar It Has An Title\n\n"
    "-As An Body It Take ListView That Allow Scrolling And Avoid OverFlow\n\n"
    "-Taking Column Padded By 8 On All Sides Where Elements Displayed As Rows\n\n"
    "-Row 1 Taking Simple Styled Text\n\n"
    "-Row 2 Taking Original Image\n\n"
    "-Row 3 Taking Simple Styled Text\n\n"
    "-Row 4 Taking Container With Width And Height With A Border To Show Effect Where Image Is Set To Cover The Container\n\n";




List Image_Fit_Cover_list =[
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
              CmpTitle(Title:"BoxFit Cover:",),
              Divider(),
              CmpSubTitle(SubTitle:"As Small As Possible Covering Entire Box",)
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
                 "Container(\n"
                 " decoration:BoxDecoration(\n"
                 "  border:Border.all(),\n"
                 " ),\n"
                 " height:300,\n"
                 " width :300,\n"
                 " child:Image.asset(\n"
                 "  'Images/S2.jpg',\n"
                 "  fit:BoxFit.cover,\n"
                 " ),\n"
                 ")\n"
              ),
            ]
        ),
      ),
    ),
  ),
];





//-----------------------------------------------------
//-----------------------------------------------------
//-----------------------------------------------------
//-----------------------------------------------------

String Image_Fit_Fill_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(ImgFitFill) To Be Runned\n\n"
    "-This Class Is Stateless Widget Due To No State Change Just Displaying Image\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Contain A Scaffold That Allow Us To Create AppBar And The Body Of The Page (All Widgets That Appear)\n\n"
    "-As An AppBar It Has An Title\n\n"
    "-As An Body It Take ListView That Allow Scrolling And Avoid OverFlow\n\n"
    "-Taking Column Padded By 8 On All Sides Where Elements Displayed As Rows\n\n"
    "-Row 1 Taking Simple Styled Text\n\n"
    "-Row 2 Taking Original Image\n\n"
    "-Row 3 Taking Simple Styled Text\n\n"
    "-Row 4 Taking Container With Width And Height With A Border To Show Effect Where Image Is Set To Fill The Container\n\n";




List Image_Fit_Fill_list =[
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
              CmpTitle(Title:"BoxFit Cover:",),
              Divider(),
              CmpSubTitle(SubTitle:"Scalled To Box Size ,Quality Will Be Losed!",)
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
                 "Container(\n"
                 " decoration:BoxDecoration(\n"
                 "  border:Border.all(),\n"
                 " ),\n"
                 " height:300,\n"
                 " width :300,\n"
                 " child:Image.asset(\n"
                 "  'Images/S2.jpg',\n"
                 "  fit:BoxFit.fill,\n"
                 " ),\n"
                 ")\n"
              ),
            ]
        ),
      ),
    ),
  ),
];









