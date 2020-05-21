import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';

String Clipping_ClipOval_Explanation=
    "-Main Is The Principal Method Used To Run ClippingClipOval Class When The Page Is Loaded\n\n"
    "-Creating Class ClippingClipOval,Stateless As There Is No Data Change After The Page Is Loaded(No State Change)\n\n"
    "-As Flutter Is Based On Widgets,We Need To Create One\n\n"
    "-Creating A Material App That Take Scaffold Allowing Us To Use AppBar And Body\n\n"
    "-As An AppBar It Has An Simple Title\n\n"
    "-As An Body It Take ListView To Avoid Overflowing And Allow Scrolling\n\n"
    "-ListView Take Childrens\n\n"
    "-Row 1 Represent Simple Text 'Before Applying ClipOval' \n\n"
    "-Row 2 Represent A Sized Box With Height 15 Used To Set Space\n\n"
    "-Row 3 Take A Centered Container With Width & Height 120 With teal Background Color\n\n"
    "-Row 4 Take A Divider (line)\n\n"
    "-Row 5 Represent Simple Text 'After Applying ClipOval' \n\n"
    "-Row 6 Represent A Sized Box With Height 15 Used To Set Space\n\n"
    "-Row 7 Take A Centered Clipped Container By Oval  With Width & Height 120 With teal Background Color\n\n";


List Clipping_ClipOval_list =[
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
              CmpTitle(Title:"ClipOval",),
              Divider(),
              CmpSubTitle(SubTitle:"A Widget That Clips Its Child Using An Oval (Circle).",),
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
                  "ClipOval(\n"
                  " child: //Any Widget\n"
                  ")\n"
              ),
            ]
        ),
      ),
    ),
  ),
];





String Clipping_ClipRRect_Explanation=
    "-Main Is The Principal Method Used To Run ClippingClipRRect Class When The Page Is Loaded\n\n"
    "-Creating Class ClippingClipRRect,Stateless As There Is No Data Change After The Page Is Loaded(No State Change)\n\n"
    "-As Flutter Is Based On Widgets,We Need To Create One\n\n"
    "-Creating A Material App That Take Scaffold Allowing Us To Use AppBar And Body\n\n"
    "-As An AppBar It Has An Simple Title\n\n"
    "-As An Body It Take ListView To Avoid Overflowing And Allow Scrolling\n\n"
    "-ListView Take Childrens\n\n"
    "-Row 1 Represent Simple Text 'Before Applying ClippingClipRRect' \n\n"
    "-Row 2 Represent A Sized Box With Height 15 Used To Set Space\n\n"
    "-Row 3 Take A Centered Container With Width & Height 120 With teal Background Color\n\n"
    "-Row 4 Take A Divider (line)\n\n"
    "-Row 5 Represent Simple Text 'After Applying ClipOval' \n\n"
    "-Row 6 Represent A Sized Box With Height 15 Used To Set Space\n\n"
    "-Row 7 Take A Centered Clipped Container By RRect By Radius 20  With Width & Height 120 With teal Background Color\n\n";



List Clipping_ClipRRect_list =[
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
              CmpTitle(Title:"ClipRRect",),
              Divider(),
              CmpSubTitle(SubTitle:"A Widget That Clips Its Child Using A Rounded Rectangle.",),
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
                  "ClipRRect(\n"
                  " borderRadius:BorderRadius.circular(20),\n"
                  " child://Any Widget\n"
                  ")\n"
              ),
            ]
        ),
      ),
    ),
  ),
];