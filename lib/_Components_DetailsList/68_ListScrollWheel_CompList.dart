import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';

String SimpleListScrollWheelView_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(SimpleListScrollWheelRun) To Be Runned\n\n"
    "-This Class Is StatefullWidget Widget As User Is Scrolling The Wheel And The Value Is Changing,And Create Its State\n\n"
    "-Creating State Class _SimpleListScrollWheelRunState That Extend Its Main State From Class SimpleListScrollWheelRun\n\n"
    "-Creating Integer Variable SelectedIndex Initialized To 1 Representing The Value Of The Selected Widget Of The Wheel\n\n"
    "-Once The Page Is Loaded State Is Initialized\n\n"
    "-As Flutter Is Based On Widget A Widget Must Be Builded\n\n"
    "-Creating Matrial App That Allow Us To Set App Title Taking Scaffold As An Home\n\n"
    "-Scaffold Allow Us to Set AppBar And Body Of The Page\n\n"
    "-As An AppBar It Simple Title\n\n"
    "-As An Body It Take Column Layout(Elements Represented Each On Line)\n\n"
    "-First Row Take A Text 'Simple Swipe Up Or Down The List Bellow!'\n\n"
    "-Second Row Take A Divider(Horizontal Line)\n\n"
    "-Third Row Take Text Representing Value Of Selected Wheel Container\n\n"
    "-Final Row Container With Height 230 Taking The ListWheelScrollView That As A Children Have All Widgets That Will Be Scrolled(Containers Having Color And Centered Text)\n\n"
    "-onSelectedItemChanged Take As Parameter A Variable(Index) When User Scroll the When Index Of The Selected Container Stored Into Index,Now Set Our Variable SelectedIndex To Index+1 (+1 Due To List Start Counting From 0)\n\n "
    "-Set State Allow To Set Changes To The Page!\n\n ";


List SimpleListScrollWheelView_List =[
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
              CmpTitle(Title:"What Is ListScrollWheel?",),
              Divider(),
              CmpSubTitle(SubTitle:"A 3d List Box Wich Children Can Be Scrolled .",),
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

              CmpTitle(Title:"1-Creating Variable Storing Index:\n"),
              CmpCode(CodeTxt:"int SelectedIndex=1;\n\n",),

              CmpTitle(Title:"2-ListScrollWheel Widget:\n"),
              CmpCode(CodeTxt:
                "ListWheelScrollView(\n"
                " children: <Widget>[\n"
                "   //Any Widgets\n"
                "  ]\n"
                ")\n",
              ),

              CmpTitle(Title:"3-Knowing Selected Index:\n"),
              CmpSubTitle(SubTitle:"Noting That Index Representing Choosen Index From The List,Our Variable SelectedIndex Set To Index +1 Due To The List Start Counting From 0\n",),
              CmpCode(
                CodeTxt:
                "onSelectedItemChanged:(int Index){\n"
                " setState(() {\n"
                "  SelectedIndex=Index+1;\n"
                " });\n"
                "},\n\n",
              ),

              CmpTitle(Title:"4-Full Code:\n"),
              CmpCode(
                CodeTxt:
                        "ListWheelScrollView(\n"
                        "onSelectedItemChanged:(int Index){\n"
                        " setState(() {\n"
                        "  SelectedIndex=Index+1;\n"
                        " });\n"
                        "},\n"
                        " children: <Widget>[\n"
                        "   //Any Widgets\n"
                        "  ]\n"
                        ")\n",
              ),
            ],
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

String ListScrollWheelViewItemExtent_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(ListScrollWheelUseExtentRun) To Be Runned\n\n"
    "-This Class Is StatefullWidget Widget As User Is Changing ExtentValue And Page Taking Effect,And Create Its State\n\n"
    "-Creating State Class _ListScrollWheelUseExtentState That Extend Its Main State From Class ListScrollWheelUseExtentRun\n\n"
    "-Creating double Variable SliderExtentValue Initialized To 42.0 Representing Size Of Each CHild\n\n"
    "-Creating _setvalue Method Used To Know The New Extent Value Changed By User By Sliding The Slider,Once Value Of Slider Changed We Store It In SliderExtentValue,SetState Used To Change The State Of The Page And Take Effect\n\n"
    "-Once The Page Is Loaded State Is Initialized\n\n"
    "-As Flutter Is Based On Widget A Widget Must Be Builded\n\n"
    "-Creating Matrial App That Allow Us To Set App Title Taking Scaffold As An Home\n\n"
    "-Scaffold Allow Us to Set AppBar And Body Of The Page\n\n"
    "-As An AppBar It Simple Title\n\n"
    "-As An Body It Take Column Layout(Elements Represented Each On Line)\n\n"
    "-First Row Take A Text 'Change The Value And See What Gonna Happen!'\n\n"
    "-Second Row Take A Slider Having Min Value 0 And Max Value 200 Value Initialized To Our Variable SliderExtentValue(42 On Start) Once User Slide We Call _setvalue Method Created In The Top To Change SliderExtentValue To The New Value Slided By The User \n\n"
    "-Third Row Take Text Representing Value Of Selected Wheel Container\n\n"
    "-Final Row Container With Height 230 Taking The ListWheelScrollView That As A Children Have All Widgets That Will Be Scrolled(Containers Having Color And Centered Text)\n\n"
    "-itemExtent Added To The List Taking The Value Choosen By The User SliderExtentValue\n\n ";


List ListScrollWheelViewItemExtent_List =[
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
              CmpTitle(Title:"ListScrollWheel ItemExtent",),
              Divider(),
              CmpSubTitle(SubTitle:"Set Size Of Its Child.",),
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
            CmpCode(CodeTxt:
                "ListWheelScrollView(\n"
                "  children: <Widget>[\n"
                "   //Any Widgets\n"
                "  ],\n"
                "  itemExtent:42.0,\n"
                ")\n",
            ),
          ],
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


String ListScrollWheelViewOffAxis_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(ListScrollWheelOffAxisRun) To Be Runned\n\n"
    "-This Class Is StatefullWidget Widget As User Is Changing OffAxisValue And Page Taking Effect,And Create Its State\n\n"
    "-Creating State Class _ListScrollWheelOffAxisState That Extend Its Main State From Class ListScrollWheelOffAxisRun\n\n"
    "-Creating double Variable SliderOffAxisValue Initialized To -0.4 Representing How Much The Wheel Is Horizontally Off-Center As A Fraction Of Its Width\n\n"
    "-Creating _setvalue Method Used To Know The New Extent Value Changed By User By Sliding The Slider,Once Value Of Slider Changed We Store It In SliderOffAxisValue,SetState Used To Change The State Of The Page And Take Effect\n\n"
    "-Once The Page Is Loaded State Is Initialized\n\n"
    "-As Flutter Is Based On Widget A Widget Must Be Builded\n\n"
    "-Creating Matrial App That Allow Us To Set App Title Taking Scaffold As An Home\n\n"
    "-Scaffold Allow Us to Set AppBar And Body Of The Page\n\n"
    "-As An AppBar It Simple Title\n\n"
    "-As An Body It Take Column Layout(Elements Represented Each On Line)\n\n"
    "-First Row Take A Text 'Change The Value And See What Gonna Happen!'\n\n"
    "-Second Row Take A Slider Having Min Value -0.5 And Max Value 0.5 Value Initialized To Our Variable SliderExtentValue(-0.4 On Start) Once User Slide We Call _setvalue Method Created In The Top To Change SliderExtentValue To The New Value Slided By The User \n\n"
    "-Third Row Take Text Representing Value Of Selected Wheel Container\n\n"
    "-Final Row Container With Height 230 Taking The ListWheelScrollView That As A Children Have All Widgets That Will Be Scrolled(Containers Having Color And Centered Text)\n\n"
    "-offAxisFraction Added To The List Taking The Value Choosen By The User SliderOffAxisValue\n\n ";


List ListScrollWheelViewOffAxis_List =[
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
              CmpTitle(Title:"ListScrollWheel offAxisFraction",),
              Divider(),
              CmpSubTitle(SubTitle:"How Much The Wheel Is Horizontally Off-Center As A Fraction Of Its Width,Value Go Between -0.5 And 0.5.",),
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
            CmpCode(CodeTxt:
                " ListWheelScrollView(\n"
                "  children: <Widget>[\n"
                "   //Any Widgets\n"
                "  ],\n"
                "  offAxisFraction:0.3,\n"
                ")\n",
            ),
          ],
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


String ListScrollWheelViewUseMagnifier_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(ListScrollWheelUseMagnifierRun) To Be Runned\n\n"
    "-This Class Is StatefullWidget Widget As User Is Changing OffAxisValue And Page Taking Effect,And Create Its State\n\n"
    "-Creating State Class _ListScrollWheelUseMagnifierState That Extend Its Main State From Class ListScrollWheelUseMagnifierRun\n\n"
    "-Creating String Variable Magnifier Initialized To On (SetTo Off When Radio Off Is Selected)\n\n"
    "-Creating Integer Variable _radioValue Initialized To 0(On) Set To 1 When Another Radio Selected(Off)\n\n"
    "-Creating Bool Variable MagnifierBool Initialized To true Set To False When Radio Off Is Selected By User\n\n"
    "-Creating Method _handleRadioValueChange Used To Apply Changes When User Select Any Radio If 0 Then On ,If 1 Then False\n\n"
    "-Creating _setvalue Method Used To Know The New Extent Value Changed By User By Sliding The Slider,Once Value Of Slider Changed We Store It In SliderOffAxisValue,SetState Used To Change The State Of The Page And Take Effect\n\n"
    "-Once The Page Is Loaded State Is Initialized\n\n"
    "-As Flutter Is Based On Widget A Widget Must Be Builded\n\n"
    "-Creating Matrial App That Allow Us To Set App Title Taking Scaffold As An Home\n\n"
    "-Scaffold Allow Us to Set AppBar And Body Of The Page\n\n"
    "-As An AppBar It Simple Title\n\n"
    "-As An Body It Take Column Layout(Elements Represented Each On Line)\n\n"
    "-First Row Take A Text 'Change The Value And See What Gonna Happen!'\n\n"
    "-Second Row Take A Text Showing If Magnifier Is On Or Off\n\n"
    "-Third Row Take 2 Radios,First Radio Have Value 0 Set To On And The Second ave Value  1\n\n"
    "-Final Row Container With Height 230 Taking The ListWheelScrollView That As A Children Have All Widgets That Will Be Scrolled(Containers Having Color And Centered Text)\n\n"
    "-useMagnifier Added To The List Definine If Magnifier Is Enabled Or Disabled\n\n"
    "-magnification Set Magnifier Value To 1.5\n\n";


List ListScrollWheelUseMagnifier_List =[
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
              CmpTitle(Title:"ListScrollWheel Magnifier",),
              Divider(),
              CmpSubTitle(SubTitle:"The Zoomed-in rate of The Magnifier,if Its Used(Set To true).",),
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
            CmpCode(CodeTxt:
                "ListWheelScrollView(\n"
                "  children: <Widget>[\n"
                "   //Any Widgets\n"
                "  ],\n"
                "  useMagnifier:true,\n"
                "  magnification:1.5,\n"
                ")\n",
            ),
          ],
        ),
      ),
    ),
  ),
];










