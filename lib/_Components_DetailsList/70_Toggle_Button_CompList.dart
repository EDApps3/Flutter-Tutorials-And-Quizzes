import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';

String ToggleButtons_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(ToggleButtonRun) To Be Runned\n\n"
    "-This Class Is StatefullWidget Widget As User Is Enabling And Disabling Button And Effect Taken On Text\n\n"
    "-Creating State Class _ToggleButtonRunState That Extend Its Main State From Class ToggleButtonRun\n\n"
    "-Creating List Variable _selections Taking 3 bool Variable Set To False (Bold->false Italic->false Underline->false)\n\n"
    "-Creating Variable TxtBold Used To Set Text Between Bold If Button Toggled And Normal If Not\n\n"
    "-Creating Variable TxtItalic Used To Set Text Between Italic If Button Toggled And Normal If Not\n\n"
    "-Creating Variable TxtUnder Used To Set Text Underlined If Button Toggled And None If Not\n\n"
    "-As Flutter Is Based On Widget A Widget Must Be Builded\n\n"
    "-Creating Matrial App That Allow Us To Set App Title Taking Scaffold As An Home\n\n"
    "-Scaffold Allow Us to Set AppBar And Body Of The Page\n\n"
    "-As An AppBar It Simple Title\n\n"
    "-As An Body It Take Column Layout(Elements Represented Each On Line)\n\n"
    "-First Row Take ToggleButtons That Take Items As Children (Icons),isSelected Take A List Of bool Created Up That Initialize All Buttons To False(Not Selected),When Each Pressed We Switch It From False to True Set By !(Inverse) And Checking Index And If Selected Then Putting Effect If Not Removing Effect To Normal\n\n"
    "-color Set The Color Of ToggleButton Icon When Selected,fillColor Set BackgroundColor Of The Togg;le Button When Selected\n\n"
    "-Secons Row Take Text Where Style Taken By Variables That Switch When Button Is Toggled (Bold To Normal Par Example..)\n\n ";


List ToggleButtons_List =[
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
              CmpTitle(Title:"What Is Toggle Buttons?",),
              Divider(),
              CmpSubTitle(SubTitle:"A Horizontal Set Of Toggle Buttons.",),
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

            CmpTitle(Title:"1-List Of Bool To Know Wich Selected:\n"),
            CmpSubTitle(SubTitle:"3 Represent Number Of Items,3 Items Set To Not Selected(False)",),
            CmpCode(CodeTxt:"List<bool> _selections = List.generate(3, (_)=>false );\n\n",),

            CmpTitle(Title:"2-Widget:\n"),
            CmpCode(CodeTxt:
              "ToggleButtons(\n"
              " children: <Widget>[\n"
              "  Icon(Icons.format_bold),\n"
              "  Icon(Icons.format_italic),\n"
              "  Icon(Icons.format_underline),\n"
              " ],\n"
              " isSelected:_selections,\n"
              " onPressed:(int index){\n"
              "  setState(() {\n"
              "   _selections[index]=!_selections[index];\n\n"
              "   if(index==0 && _selections[index]){\n"
              "    Do\n"
              "   }\n"
              "   else if(index==0 && !_selections[index]){\n"
              "    //Do\n"
              "   }\n\n"
              "   //You Can Compare Other Indexs Too\n\n"
               "  });\n"
               " },\n"
               " color:Colors.teal,\n"
               " fillColor:Colors.deepPurple,\n"
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
