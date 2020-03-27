import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


String Chip_Simple_Explanation=
    "-main Is The Principal Method Runned Once Program Started,Calling Class SimpleChipRun To Be Runned\n\n"
    "-SimpleChipRun Is Stateless Widget As We Just Need To Show Chip\n\n"
    "-As Flutter Is Based On Widgets We Need To Create One\n\n"
    "-Creating An MaterialApp That Grant Light Theme And Title\n\n"
    "-Taking As An Home Scaffold That Let Us Create The AppBar And The Body Of The Page\n\n"
    "-As An AppBar Taking A Title\n\n"
    "-As An Body It Take A Centered Layout Taking Chip Having As An Avatar Circle Avatar With Grey Background Color Showing Letter F Inside Followed By A Label\n\n";


List Chip_Simple_list =[
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
                "Chip(\n"
                " avatar:CircleAvatar(\n"
                "  backgroundColor:Colors.grey,\n"
                "  child: Text('F'),\n"
                " ),\n"
                " label: Text('Flutter'),\n"
                ")\n"
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

String Chip_OnDelete_Explanation=
    "-First We Need To Create A Class Courses That We Need It To Take Course Name And Its Letter,Take An Constructor To Define The Variables\n\n"
    "-main Is The Principal Method Runned Once Program Started,Calling Class ChipOnDel To Be Runned\n\n"
    "-ChipOnDel Is Statefull Widget As We Need To Delete Chip (State Change From Shown To Deleted),We Need To Create Class State\n\n"
    "-Now Creating Class State _ChipOnDelState That Extends Its Main State From ChipOnDel\n\n"
    "-Creating A List Courses List That We Add In It 2 Objectc Of Courses Using The Constructor Of Class Courses That We Have Created\n\n"
    "-Now Creating Widget CoursesWidgets That Will Loop Into The List And Print Objects Into Chips By Putting Them Into Circle Avatar Followed By The Label\n\n"
    "-When A Chip Is Deleted A State Change Occur,We Have The Remove From Courses List The Chip We Hit X To Delete Knowable By entry(Courses Name We Need To Delete)\n\n"
    "-As Flutter Is Based On Widgets We Need To Create One\n\n"
    "-Creating An MaterialApp That Grant Light Theme And Title\n\n"
    "-Taking As An Home Scaffold That Let Us Create The AppBar And The Body Of The Page\n\n"
    "-As An AppBar Taking A Title\n\n"
    "-As An Body It Take A Centered Layout Taking Row That Print Chip Widgets Into A List\n\n";



List Chip_OnDelete_list =[
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
              CmpTitle(Title:"Create Class Constructor:",),
              Divider(),
              CmpSubTitle(SubTitle: "Used To Store Data Into Objects\n",),
              CmpCode(
                CodeTxt:
                "class ClassName{\n"
                " final String Var1,Var2;\n\n"
                " const Courses(\n"
                "  this.Var1,\n"
                "  this.Var2\n"
                " );\n\n"
                "}",
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
              CmpTitle(Title:"Create Objects List:",),
              Divider(),
              CmpSubTitle(SubTitle: "Used To Create Objects List Data From Class Created To Avoid Duplication\n",),
              CmpCode(
                CodeTxt:
                "final List<ClassName> _VarList = <ClassName>[\n"
                " const Courses('Var1Txt', 'Var2Txt'),\n"
                " const Courses('Var1Txt', 'Var2txt')\n"
                "];",
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
              CmpTitle(Title:"To Widget Chip:",),
              Divider(),
              CmpSubTitle(SubTitle: "Now We Need To Traverse Courses Data And Show As Chip\n",),
              CmpCode(
                CodeTxt:
                "Iterable<Widget> get VarNameWidget sync* {\n"
                " for (Courses Cr in _VarList) {\n"
                "  yield Padding(\n"
                "   padding: const EdgeInsets.all(4.0),\n"
                "   child: Chip(\n"
                "   avatar:CircleAvatar(child:Text(Cr.Var1)),\n"
                "   label: Text(Cr.Var2),\n"
                "   onDeleted:(){\n"
                "    setState(() {\n"
                "     _VarList.removeWhere((ClassName entry) {\n"
                "      return entry.name == Cr.name;\n"
                "     });\n"
                "    });\n"
                "   },\n"
                "  ),\n"
                "  );\n"
                " }\n"
                "}\n",
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











