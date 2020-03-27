import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';



String SelectCombo_Explanation=
    "-main Is Principal Method Run SelectComboBoxRun Class When Program Runned\n\n"
    "-Creating SelectComboBoxRun Class,Statefull Due To Select value Change\n\n"
    "-We Need To Create Its State\n\n"
    "-Create Class State _CBState That Extend Its State From Main Class SelectComboBoxRun\n\n"
    "-Defining Letters Into A List\n\n"
    "-Defining Selected Letter Varible\n\n"
    "-As Flutter Is Based On Widgets We Need To Create One\n\n"
    "-Creating Material App That Grant Title,Light Theme\n\n"
    "-Taking As An Home Scaffold That Allow Us To Set AppBar And Body\n\n"
    "-As An AppBar Taking An Title\n\n"
    "-As An Body Taking Cenetred Row Aligned Horizontally To The Center\n\n"
    "-Take As Column 1 text\n\n"
    "-Take As Column 2 DropDownButton Having Its Hint Showable Before Selection,Value Setting The Selectable Value,OnChanged To Update The New Selected Value\n\n"
    "-Items Loaded From List Of Letter That We Have Created\n\n";


List SelectCombo_list =[
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
              CmpTitle(Title:"Getting Into The Code:",),
              Divider(),
              CmpSubTitle(SubTitle:"1)Creating List Of Items:\n",),
              CmpCode(CodeTxt:"List<String> _VarList = ['A','B'];\n\n",),
              CmpSubTitle(SubTitle:"2)Creating Variable To Set Selected Item:\n",),
              CmpCode(CodeTxt:"String _selectedLetter;",)
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
                    "Row(\n"
                    " children: <Widget>[\n"
                    "  Text('Select Letter:'),\n"
                    "  DropdownButton(\n"
                    "  hint:Text('Select Letter'),\n"
                    "  value: _selectedLetter,\n"
                    "  onChanged: (newValue) {\n"
                    "   setState(() {\n"
                    "    selectedLetter=newValue;\n"
                    "   });\n"
                    "  },\n"
                    " items:_VarList.map((ltr){\n"
                    "  return DropdownMenuItem(\n"
                    "   child:new Text(ltr),\n"
                    "   value: ltr,\n"
                    "  );\n"
                    " }).toList(),\n"
                    " ),\n"
                    "],\n"
                    "),",
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

