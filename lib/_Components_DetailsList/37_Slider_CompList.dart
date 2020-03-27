import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';



String Slider_Simple_Explanation=
    "-main Is Principal Method Runned Once Program Started Calling Class SimpSliderRun\n\n"
    "-Creating Class SimpSliderRun Statefull Due To Slider Value Change,creating Its State\n\n"
    "-Creating State Class _State Extending Its Main Class From SimpSliderRun\n\n"
    "-Creating Value Var Initialized To 0 Representing Slider Start Value\n\n"
    "-Creating Method That Set Slider State Update Value Taken By Its Parameter value And Stored To The Variable We Created\n\n"
    "-As Flutter Is Based On Widgets We Need To Create One\n\n"
    "-Creating Material App That Grant Light Theme,Title\n\n"
    "-Taking As An Home Scaffold That Allow Us To Use AppBar And Body\n\n"
    "-As An AppBar It Take A Title\n\n"
    "-As An Body Takes Column Aligned Vertically To The Center\n\n"
    "-Row1 Taking Text Representing Slider Value Multiplied By 100 And Rouded Due The Value(0 to 1 ) And Double\n\n"
    "-Row2 Taking Slider Taking Its Value And OnChange Calling Its Method\n\n";


List Slider_Simple_list =[
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
              CmpTitle(Title:"Slider Value:",),
              Divider(),
              CmpSubTitle(SubTitle:"We Need To Create A Variable That Indicate Slider Value\n",),
              CmpCode(
                CodeTxt:
                    "double _value = 0.0;",
              ),

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
              CmpTitle(Title:"Slider Value State:",),
              Divider(),
              CmpSubTitle(SubTitle:"We Need To Update Slider State When User Slide\n",),
              CmpCode(
                CodeTxt:
                "void _setvalue(double value)\n"
                " => setState(\n"
                "  () => _value = value\n"
                ");",
              ),

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
                "Slider(\n"
                " value: _value,\n"
                " onChanged: _setvalue\n"
                ")",
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


String Slider_Color_Explanation=
    "-main Is Principal Method Runned Once Program Started Calling Class SliderColorRun\n\n"
    "-Creating Class SliderColorRun Statefull Due To Slider Value Change,creating Its State\n\n"
    "-Creating State Class _State Extending Its Main Class From SliderColorRun\n\n"
    "-Creating Value Var Initialized To 0 Representing Slider Start Value\n\n"
    "-Creating Method That Set Slider State Update Value Taken By Its Parameter value And Stored To The Variable We Created\n\n"
    "-As Flutter Is Based On Widgets We Need To Create One\n\n"
    "-Creating Material App That Grant Light Theme,Title\n\n"
    "-Taking As An Home Scaffold That Allow Us To Use AppBar And Body\n\n"
    "-As An AppBar It Take A Title\n\n"
    "-As An Body Takes Column Aligned Vertically To The Center\n\n"
    "-Row1 Taking Text Representing Slider Value Multiplied By 100 And Rouded Due The Value(0 to 1 ) And Double\n\n"
    "-Row2 Taking Slider Taking Its Value And OnChange Calling Its Method\n\n"
    "-Slider Active Color Set To Green By activeColor\n\n"
    "-Slider InaActive Color Set To red By inactiveColor\n\n";


List Slider_Color_list =[
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
              CmpTitle(Title:"Slider Value:",),
              Divider(),
              CmpSubTitle(SubTitle:"We Need To Create A Variable That Indicate Slider Value\n",),
              CmpCode(
                CodeTxt:
                "double _value = 0.0;",
              ),

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
              CmpTitle(Title:"Slider Value State:",),
              Divider(),
              CmpSubTitle(SubTitle:"We Need To Update Slider State When User Slide\n",),
              CmpCode(
                CodeTxt:
                "void _setvalue(double value)\n"
                    " => setState(\n"
                    "  () => _value = value\n"
                    ");",
              ),

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
                   "Slider(\n"
                    " value: _value,\n"
                    " onChanged: _setvalue\n"
                    " activeColor:Colors.green,\n"
                    " inactiveColor: Colors.red,\n"
                    ")\n",
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


String Slider_MaxMinDiv_Explanation=
    "-main Is Principal Method Runned Once Program Started Calling Class SliderMinMaxDivRun\n\n"
    "-Creating Class SliderMinMaxDivRun Statefull Due To Slider Value Change,creating Its State\n\n"
    "-Creating State Class _State Extending Its Main Class From SliderMinMaxDivRun\n\n"
    "-Creating Value Var Initialized To 0 Representing Slider Start Value\n\n"
    "-Creating Method That Set Slider State Update Value Taken By Its Parameter value And Stored To The Variable We Created\n\n"
    "-As Flutter Is Based On Widgets We Need To Create One\n\n"
    "-Creating Material App That Grant Light Theme,Title\n\n"
    "-Taking As An Home Scaffold That Allow Us To Use AppBar And Body\n\n"
    "-As An AppBar It Take A Title\n\n"
    "-As An Body Takes Column Aligned Vertically To The Center\n\n"
    "-Row1 Taking Text Representing Slider Value Multiplied By 100 And Rouded Due The Value(0 to 1 ) And Double\n\n"
    "-Row2 Taking Slider Taking Its Value And OnChange Calling Its Method\n\n"
    "-Slider label Take A Text Show When Sliding\n\n"
    "-Slider min Take A Double Value And Its The Minimum Value\n\n"
    "-Slider max Take A Double Value And Its The Maximum Value\n\n"
    "-Slider divisions Take A Double Value And Its The Value That Increase Each Slide\n\n";



List Slider_MaxMinDiv_list =[
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
              CmpTitle(Title:"Slider Value:",),
              Divider(),
              CmpSubTitle(SubTitle:"We Need To Create A Variable That Indicate Slider Value\n",),
              CmpCode(
                CodeTxt:
                "double _value = 0.0;",
              ),

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
              CmpTitle(Title:"Slider Value State:",),
              Divider(),
              CmpSubTitle(SubTitle:"We Need To Update Slider State When User Slide\n",),
              CmpCode(
                CodeTxt:
                "void _setvalue(double value)\n"
                    " => setState(\n"
                    "  () => _value = value\n"
                    ");",
              ),

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
                    "Slider(\n"
                    " label:'TxtLbl',\n"
                    " value: _value,\n"
                    " onChanged: _setvalue\n"
                    " min: 0,\n"
                    " divisions: 100,\n"
                    " max: 1000,\n"
                    ")\n",
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
