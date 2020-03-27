import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


var Stepper_Intro_CompList =[
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
              CmpTitle(Title:"What Is Stepper?",),
              Divider(),
              CmpSubTitle(SubTitle:"A Material Stepper Widget That Displays Progress Through A Sequence Of Steps",),
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



String Stepper_Hor_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(StepperHorRun) To Be Runned\n\n"
    "-This Class Is Statefull Widget To Detect Stepper Steps\n\n"
    "-First Creating Main Class StepperHorRun And Set Its Main State\n\n"
    "-Secondly Creating Class _StepperHorState That Extend Its State From Its Main StepperHorRun\n\n"
    "-Creating Variable _currentStep To Determine The Position Of The Stepper And Initialized To Start From 0(First Position)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Allow Us To Use Scaffold\n\n"
    "-Scaffold Allow Us To Use AppBar And Body\n\n"
    "-The AppBar Have Simple Title\n\n"
    "-Body Contain Stepper\n\n"
    "-Stepper Direction Set Horizontally\n\n"
    "-Current Step Set To The CurrentStep Variable Used To Know Active Step\n\n"
    "-When Step Is Tapped We're Changing CurrentStep Variable To Take The New Index Step\n\n"
    "-When Continue Is Pressed And We Havent Reached The End A Step Incremented Up\n\n"
    "-When Cancel And Not Reached The First We Decrement Step Down\n\n"
    "-Finally Loading Step Content Into A List,All Active,If Step Finished We Representing Complete Icon Else A Number Is Displayed\n\n";


List Stepper_Hor_list =[
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
              CmpSubTitle(SubTitle:"1-Defining Variable _currentStep That Determine Where The Stepper Is After That User Go With Steps:\n",),
              CmpCode(CodeTxt:"int _currentStep = 0;\n\n",),
              CmpSubTitle(SubTitle:"2-Code Deployed Into Body:\n",),
              CmpCode(
                CodeTxt:
                "Stepper(\n\n"

                    " type:\n"
                    "  StepperType.horizontal,\n\n"

                    " currentStep:_currentStep,\n\n"

                    " onStepTapped:\n"
                    "  (int step) => setState(\n"
                    "     () => _currentStep = step\n"
                    "   ),\n\n"

                    " onStepContinue:\n"
                    "  _currentStep<2 ? ()=>setState(\n"
                    "     () => _currentStep += 1\n"
                    "  ):null,\n\n"

                    " onStepCancel:\n"
                    "  _currentStep>0? ()=>setState(\n"
                    "     () => _currentStep -= 1\n"
                    "  ):null,\n\n\n"

                    " steps:<Step>[\n\n"

                    "  Step(\n"
                    "   title:Text('Txt'),\n"
                    "   content://Widget,\n"
                    "   isActive: _currentStep >= 0,\n"
                    "   state:\n"
                    "    _currentStep>=0?StepState.complete:StepState.disabled,"
                    "  ),\n\n"

                    " Step(\n"
                    "  title:Text('Txt'),\n"
                    "  content://Widget,\n"
                    "  isActive:_currentStep >= 0,\n"
                    "  state:\n"
                    "  _currentStep>=1?StepState.complete:StepState.disabled,\n"
                    " ),\n\n"

                    "//You Can Add More Steps\n\n"

                    " ],\n"
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



String Stepper_Ver_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(SteppervERRun) To Be Runned\n\n"
    "-This Class Is Statefull Widget To Detect Stepper Steps\n\n"
    "-First Creating Main Class StepperHorRun And Set Its Main State\n\n"
    "-Secondly Creating Class _StepperHorState That Extend Its State From Its Main StepperHorRun\n\n"
    "-Creating Variable _currentStep To Determine The Position Of The Stepper And Initialized To Start From 0(First Position)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Allow Us To Use Scaffold\n\n"
    "-Scaffold Allow Us To Use AppBar And Body\n\n"
    "-The AppBar Have Simple Title\n\n"
    "-Body Contain Stepper\n\n"
    "-Stepper Direction Set Vertically\n\n"
    "-Current Step Set To The CurrentStep Variable Used To Know Active Step\n\n"
    "-When Step Is Tapped We're Changing CurrentStep Variable To Take The New Index Step\n\n"
    "-When Continue Is Pressed And We Havent Reached The End A Step Incremented Up\n\n"
    "-When Cancel And Not Reached The First We Decrement Step Down\n\n"
    "-Finally Loading Step Content Into A List,All Active,If Step Finished We Representing Complete Icon Else A Number Is Displayed\n\n";

List Stepper_Ver_list =[
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
              CmpSubTitle(SubTitle:"1-Defining Variable _currentStep That Determine Where The Stepper Is After That User Go With Steps:\n",),
              CmpCode(CodeTxt:"int _currentStep = 0;\n\n",),
              CmpSubTitle(SubTitle:"2-Code Deployed Into Body:\n",),
              CmpCode(
                CodeTxt:
                    "Stepper(\n\n"

                    " type:\n"
                    "  StepperType.vertical,\n\n"

                    " currentStep:_currentStep,\n\n"

                    " onStepTapped:\n"
                    "  (int step) => setState(\n"
                    "     () => _currentStep = step\n"
                    "   ),\n\n"

                    " onStepContinue:\n"
                    "  _currentStep<2 ? ()=>setState(\n"
                    "     () => _currentStep += 1\n"
                    "  ):null,\n\n"

                    " onStepCancel:\n"
                    "  _currentStep>0? ()=>setState(\n"
                    "     () => _currentStep -= 1\n"
                    "  ):null,\n\n\n"

                    " steps:<Step>[\n\n"

                    "  Step(\n"
                    "   title:Text('Txt'),\n"
                    "   content://Widget,\n"
                    "   isActive: _currentStep >= 0,\n"
                    "   state:\n"
                    "    _currentStep>=0?StepState.complete:StepState.disabled,"
                    "  ),\n\n"

                    " Step(\n"
                    "  title:Text('Txt'),\n"
                    "  content://Widget,\n"
                    "  isActive:_currentStep >= 0,\n"
                    "  state:\n"
                    "  _currentStep>=1?StepState.complete:StepState.disabled,\n"
                    " ),\n\n"

                    "//You Can Add More Steps\n\n"

                    " ],\n"
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
