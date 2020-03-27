import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


var FlipView_Intro_CompList =[
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
              CmpTitle(Title:"What Is FlipView?",),
              Divider(),
              CmpSubTitle(SubTitle:"Widget Providing 3d Flipping Card",),
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
              CmpTitle(Title:"Getting Started:",),
              Divider(),
              CmpSubTitle(SubTitle:"Adding Plugin Into Yaml Dependency:\n",),
              Image.asset("Images/FV.PNG"),
              CmpSubTitle(SubTitle:"\nTo Use We Need  To Import:\nimport 'package:flutter_flip_view/flutter_flip_view.dart';\n",),
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



String FlipView_Simple_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(FlipViewHorRun) To Be Runned\n\n"
    "-This Class Is Statefull Widget To Detect FlipCard State\n\n"
    "-First Creating Main Class FlipViewHorRun And Set Its Main State\n\n"
    "-Secondly Creating Class _FVHState That Extend Its State From Its Main FlipViewHorRun\n\n"
    "-Declaring Variable For Controller To Control The Animation\n\n"
    "-Declaring Variable For Curve Animation\n\n"
    "-Setting Up Duration And Animation\n\n"
    "-Adding Listener If Animation Is Finished And Focused Then Unfocus(opposent movement) and vise versa\n\n"
    "-Flip Method refer To Listener To Turn  The Card If Not Turned\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Allow Us To Use Scaffold\n\n"
    "-Scaffold Allow Us To Use AppBar And Body\n\n"
    "-The AppBar Have Simple Title\n\n"
    "-Body Contain Centered FlipView Taking Widgets In Back And Front\n\n"
    "-Flip Called When Button Is Clicked\n\n";

List FlipView_Simple_list =[
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
              CmpSubTitle(SubTitle:"1-Declaring Variable For Controller To Control The Animation:\n\n",),
              CmpCode(CodeTxt:"AnimationController _animationController;\n\n",),
              CmpSubTitle(SubTitle:"2-Declaring Variable For Curve Animation:\n\n",),
              CmpCode(CodeTxt:"Animation<double> _curvedAnimation;\n\n",),
              CmpSubTitle(SubTitle:"3-Declaring Variable To Know Wich Node Is Active Back Or Front:\n\n",),
              CmpCode(CodeTxt:"FocusNode _focusNode = FocusNode();\n\n",),
              CmpSubTitle(SubTitle:"4-Setting Animation Duration Here 1s:\n\n",),
              CmpCode(
                CodeTxt:
                    " _animationController=AnimationController(\n"
                    "  vsync: this,\n"
                    "  duration:Duration(milliseconds: 1000)\n"
                    " );\n\n",
              ),
              CmpSubTitle(SubTitle:"5-Setting Animation:\n\n",),
              CmpCode(
                CodeTxt:
                    " _curvedAnimation=CurvedAnimation(\n"
                    "  parent:_animationController,\n"
                    "  curve: Curves.easeInOut,\n"
                    " );\n\n",
              ),
              CmpSubTitle(SubTitle:"6-Setting Listener:\n\n",),
              CmpCode(
                CodeTxt:
                    "_animationController.addStatusListener((AnimationStatus status) {\n"
                    "if (!_focusNode.hasFocus && _animationController.isCompleted) {\n"
                    " setState(() {\n"
                    "  FocusScope.of(context).requestFocus(_focusNode);\n"
                    "});\n"
                    "}else if(_focusNode.hasFocus && !_animationController.isCompleted){\n"
                    " _focusNode.unfocus();\n"
                    "}\n"
                    "});\n",
              ),
              CmpSubTitle(SubTitle:"7-Finally Flip That Refer To The Listner:\n\n",),
              CmpCode(
                CodeTxt:
                    " void _flip(bool reverse) {\n\n"
                    "  if(_animationController.isAnimating){\n"
                    "   return;\n"
                    "  }\n"

                    "  if (reverse) {\n"
                    "   _animationController.forward();\n"
                    "  }\n"

                    " else {\n"
                    "  _animationController.reverse();\n"
                    " }\n"

                    "}\n",
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

