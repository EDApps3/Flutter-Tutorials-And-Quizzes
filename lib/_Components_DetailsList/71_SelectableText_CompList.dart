import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';

String SelectableText_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(SelectableTextRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Show Selectable Text(No Data Change)\n\n"
    "-As Flutter Is Based On Widget A Widget Must Be Builded\n\n"
    "-Creating Matrial App That Allow Us To Set App Title Taking Scaffold As An Home\n\n"
    "-Scaffold Allow Us to Set AppBar And Body Of The Page\n\n"
    "-As An AppBar It Simple Title\n\n"
    "-As An Body It Take Centered SelectableText That Take\n"
    "  Its Value To Be Shown\n\n"
    "  You Can Style The Text(Optional)\n\n"
    "  You Can Show The Cursor When Selecting\n\n"
    "  toolbarOptions Editable (Copy,Cut...)\n\n";


List SelectableText_List =[
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
              CmpTitle(Title:"What Is Selectable Text?",),
              Divider(),
              CmpSubTitle(SubTitle:"Display A String Of Text That Can Take Actions Like Cursors Or Copy...",),
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
            "SelectableText(\n"
            " 'Text_To_Show',\n"
            " style:TextStyle(\n"
            "  color: Colors.blue,\n"
            " ),\n"
            " showCursor:true,\n"
            " toolbarOptions:ToolbarOptions(\n"
            "  copy:true,\n"
            "  cut:true,\n"
            "  paste:true,\n"
            "  selectAll:true,\n"
            " ),\n"
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
