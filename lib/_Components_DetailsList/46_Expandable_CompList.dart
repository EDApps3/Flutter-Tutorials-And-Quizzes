import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';



var Expandable_Intro_CompList =[
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
              CmpTitle(Title:"What Is Expandable?",),
              Divider(),
              CmpSubTitle(SubTitle:"A Flutter Widget That Can Be Expanded Or Collapsed By The User.",),
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
              CmpSubTitle(SubTitle:"We Need To Import Into The Yaml The Plugin:",),
              SizedBox(height: 16,),
              Image.asset("Images/Expandable.PNG",),
              CmpSubTitle(SubTitle:"\n\nDon't Forget To Get Packages!",),
              CmpSubTitle(SubTitle:"\n\nWe Need To Import:\nimport 'package:expandable/expandable.dart';\n",),
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


String SimpleExpandable_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(SimpleExpandableRun) To Be Runned\n\n"
    "-This Class Is Statefull Widget To Detect Expandable State (Collapsed,Expanded...)\n\n"
    "-First Creating The Main Class SimpleExpandableRun And Set Its State\n\n"
    "-Secondly Creating The State Class _ExpandableState That Extend Its Main State From The Main Class SimpleExpandableRun\n\n"
    "-Creating String Variable That Will Fit Into The Expandable Body\n\n"
    "-Once Page Is Loaded She Will Initialize Its State\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Allow Us To Use Scaffold And Set The Title Of The App When We Need To Close\n\n"
    "-Scaffold Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As An AppBar Its Has An Title\n\n"
    "-As An Body It Have A Centered Expandable Panel\n\n"
    "-Panel Header Text Set To 'This Is The Header'\n\n"
    "-Icon Visible And Show With Grey Color,You Can Disable It By Set It To false\n\n"
    "-Expandable Collapsed When Taping Both Body And Header,You Can Also Set To False\n\n"
    "-Finally When Collapsed It Will Show Just 2 Lines Overflow Show As ...\n\n"
    "-When Expanded It Will Show All The Content\n\n";


var SimpleExpandable_list =[
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
                 "ExpandablePanel(\n\n"

                 " header:\n"
                 "  Text('This Is The Header'),\n\n"

                 " hasIcon:true,\n\n"

                 " iconColor:Colors.grey,\n\n"

                 " tapBodyToCollapse:true,\n\n"

                 " tapHeaderToExpand:true,\n\n"

                 " collapsed:\n"
                 "  Text(\n"
                 "   ContentText,\n"
                 "   softWrap:true,\n"
                 "   maxLines:2,\n"
                 "   overflow:TextOverflow.ellipsis,\n"
                 "  ),\n\n"

                 " expanded:\n"
                 "  Text(\n"
                 "   ContentText,\n"
                 "   softWrap:true,\n"
                 "  ),\n\n"

                 ")\n\n"
              ),
            ]
        ),
      ),
    ),
  ),
];