import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


String TextOverFlow_Clip_Explanation=
    "-Main Is The Principal Method That Run On Program Loaded\n\n"
    "-When Loaded,Class TxtFClipRun Runned\n\n"
    "-Class TxtFClipRun Is Stateless As W Just Need To Show An OverFlowed Text\n\n"
    "-As Flutter Is Based On Widgets,We Have To Create One\n\n"
    "-An Material App Alow Us To Set Title And Theme\n\n"
    "-Matrial App Taking As An Home Scaffold\n\n"
    "-Scaffold Allow Us To  Create AppBar And Body Of The Page\n\n"
    "-As An AppBar It Take An Title\n\n"
    "-As An Body It Take A Row Containing A Container Sized To Width 200 And Height 150\n\n"
    "-Container Take An An Child An Text That We Gonnna Apply The OverFlow\n\n"
    "-Text Take First The Value To Be Shown And Next The Overflowing\n\n"
    "-Text Overflowed To Clip\n\n";


List TextOverFlow_Clip_list =[
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
              CmpTitle(Title:"Clip:",),
              Divider(),
              CmpSubTitle(SubTitle: "Clip The Overflowing Text To Fix Its Container\n",),
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
                    "Text(\n"
                    " 'Wanted Text',\n"
                    " overflow:\n"
                    "  TextOverflow.clip,\n"
                    "),"
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




String TextOverFlow_Ellipsis_Explanation=
    "-Main Is The Principal Method That Run On Program Loaded\n\n"
    "-When Loaded,Class TxtFEllipsisRun Runned\n\n"
    "-Class TxtFEllipsisRun Is Stateless As We Just Need To Show An OverFlowed Text\n\n"
    "-As Flutter Is Based On Widgets,We Have To Create One\n\n"
    "-An Material App Alow Us To Set Title And Theme\n\n"
    "-Matrial App Taking As An Home Scaffold\n\n"
    "-Scaffold Allow Us To  Create AppBar And Body Of The Page\n\n"
    "-As An AppBar It Take An Title\n\n"
    "-As An Body It Take A Row Containing A Container Sized To Width 200 And Height 150\n\n"
    "-Container Take An An Child An Text That We Gonnna Apply The OverFlow\n\n"
    "-Text Take First The Value To Be Shown And Next The Overflowing\n\n"
    "-Text Overflowed To Ellipsis\n\n";


List TextOverFlow_Ellipsis_list =[
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
              CmpTitle(Title:"Ellipsis:",),
              Divider(),
              CmpSubTitle(SubTitle:"Use An Ellipsis(...) To Indicate That Text Is OverFlowed\n",),
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
                      "Text(\n"
                      " 'Wanted Text',\n"
                      " overflow:\n"
                      "  TextOverflow.ellipsis,\n"
                      "),",
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





String TextOverFlow_Fade_Explanation=
    "-Main Is The Principal Method That Run On Program Loaded\n\n"
    "-When Loaded,Class TxtFFadeRun Runned\n\n"
    "-Class TxtFFadeRun Is Stateless As We Just Need To Show An OverFlowed Text\n\n"
    "-As Flutter Is Based On Widgets,We Have To Create One\n\n"
    "-An Material App Alow Us To Set Title And Theme\n\n"
    "-Matrial App Taking As An Home Scaffold\n\n"
    "-Scaffold Allow Us To  Create AppBar And Body Of The Page\n\n"
    "-As An AppBar It Take An Title\n\n"
    "-As An Body It Take A Row Containing A Container Sized To Width 200 And Height 50\n\n"
    "-Container Take An An Child An Text That We Gonnna Apply The OverFlow\n\n"
    "-Text Take First The Value To Be Shown And Next The Overflowing\n\n"
    "-Text Overflowed To Fade\n\n";


List TextOverFlow_Fade_list =[
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
              CmpTitle(Title:"Fade:",),
              Divider(),
              CmpSubTitle(SubTitle:"OverFlowed Text Show As Transparent\n",),
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
                   "Text(\n"
                    " 'Wanted Text',\n"
                    " overflow:\n"
                    "  TextOverflow.fade,\n"
                    "),",
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







String TextOverFlow_Visible_Explanation=
    "-Main Is The Principal Method That Run On Program Loaded\n"
    "-When Loaded,Class TxtFVisibleRun Runned\n"
    "-Class TxtFVisibleRun Is Stateless As We Just Need To Show An OverFlowed Text\n"
    "-As Flutter Is Based On Widgets,We Have To Create One\n"
    "-An Material App Alow Us To Set Title And Theme\n"
    "-Matrial App Taking As An Home Scaffold\n"
    "-Scaffold Allow Us To  Create AppBar And Body Of The Page\n"
    "-As An AppBar It Take An Title\n"
    "-As An Body It Take A Row Containing A Container Sized To Width 200 And Height 15\n"
    "-Container Take An An Child Card Color Set To Red That Take An Text That We Gonnna Apply The OverFlow\n"
    "-Text Take First The Value To Be Shown And Next The Overflowing\n"
    "-Text Overflowed To Visible";


List TextOverFlow_Visible_list =[
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
              CmpTitle(Title:"Visible:",),
              Divider(),
              CmpSubTitle(SubTitle:"Render Text Outside Container\n",),
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
                    "Text(\n"
                    " 'Wanted Text',\n"
                    " overflow:\n"
                    "  TextOverflow.visible,\n"
                    "),",
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