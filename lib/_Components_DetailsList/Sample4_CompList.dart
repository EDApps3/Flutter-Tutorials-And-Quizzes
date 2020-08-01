import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_Title.dart';

String Sample4_Explanation=
    "-Main Is The Principal Method That Run Once Program Started And Will Run The Class UISample4\n\n"
    "-Creating Class UISample4 Statefull Widget Due To Changing Text State(Result...)\n\n"
    "-Crating Class State UISample4State That Extends Its Main State From The Main Class UISample4\n\n"
    "-Creating String Variable Num1 Describing Number 1 Value Example (4.5) Initialized To Empty '' (No Number Selected)\n\n"
    "-Creating String Variable Num2 Describing Number 2 Value Example (2)   Initialized To Empty '' (No Number Selected)\n\n"
    "-Creating String Variable Operand That Will Contain (+ , - , / , x) Due To User Button Select So We Can Do The Operation Example (4.5/2)\n\n"
    "-Creating String Variable Result Describing Result Of The Operation (2.25 If 4.5/2) Initialized To Empty '' (No Result Calculated)\n\n"
    "-Creating Method DotError That Show An Alert If User Putting 2 Dots Example (2.5.5)\n\n"
    "-Creating Method buttonPressed That Take A String s Describing Button Text (3 If Button3 Pressed, + If Sum Button Pressed...)\n\n"
    "-Case 1 If Button Pressed Is Clear Known By s buttonPressed('CLEAR') Then We Need To Re-Initialize Variables Nums To Empty '' And Operand To Empty '' (NonSlected) And Result To 0\n\n"
    "-Case 2 If Any Of Operand Button Pressed (+,-,x,/) Then We Need To Store The Pressed Operand In operand Variable By Taking Case Continuing After Result1. If Result Not Equal To Zero Then User Might Want To Continue Example Result Is 5 If He Press Operand (+) Then We Need Number 2 To Be Inputted In This Case Result Will Be The Number 1...if Not(Result Is 0) then Number1 And Number2 Needed To Be Inputted...\n\n"
    "-Case 3 Of Calculation If Button Pressed Is = Then We Need To Perform The Calcul And Store It In The Variable Result In Case Number1 Inputed Noting That Variables Are Of Type String And Need To Be Parsed Into Double...If Number1 Not Inputed Than Alert Will Be Shown\n\n"
    "-Case 4 Last Case Of Numbers And Dot(.)...If Non Operand Is Selected then We Need To Input Num1...If Operand Is Selected Example (4 + ) Then We Need The Number2"
    "-Each Number We Need To Check If Containing 1(.) In Case s Is . If Conating Then We Cannot Add s (Another Dot) We Show A Alert,If Not S Is Appended To The String\n\n"
    "-Due To Having Multiple Buttons And Same Shape Just Text is Different And To Avoid Duplication We Create A WIdget Method buildElement That Return Expanded Raised Button With Text Passed by Parameter Example buildElement('3') Create A Raised Button 3...Styled...And Once Clicked Will Perform The Calcul Done In buttonPressed Method That pass(s) Describing Text Passed (3 Or + Or 5...)\n\n"
    "-As Flutter Is Based On Widgets We Need To Create One\n\n"
    "-Returning Material App That Has Dark Theme Allowing us To Use Scaffold\n\n"
    "-Scaffold Allow Us To Use AppBar And Body\n\n"
    "-As An AppBar Taking A Simple Text With Leading Icon\n\n"
    "-As An Body Taking SingleChildScrollView That Allow Scrolling And Avoid OverFlow Taking An Container That Have Device Width And Height\n\n"
    "-Element Are Placed Into Column(Each On A Row)\n\n"
    "-Row1 Taking A Container That Represent Number1 Styled...\n\n"
    "-Row2 Taking A Container That Represent Operand Styled...\n\n"
    "-Row3 Taking A Container That Represent Number2 Styled...\n\n"
    "-Row4 Taking A White Divider\n\n"
    "-Row5 Taking A Container That Represent Result Styled...\n\n"
    "-Row6 Taking A SizedBox With Height 20 For Spacing\n\n"
    "-Remaining Rows Take A Row(Elment Placed Into Column) Where Each Column Have A Button!\n\n"


    "";


List Sample4_list =[
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
              CmpCode(CodeTxt:"No Package Needed\n",),
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