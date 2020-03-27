import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


String BottomSheet_Simple_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(BottomSheetRun) To Be Runned\n\n"
    "-This Class Is Statefull Widget To Detect BottomSheet State\n\n"
    "-First Creating Main Class BottomSheetRun And Set Its Main State\n\n"
    "-Secondly Creating Class _BottomSheetState That Extend Its State From Its Main BottomSheetRun\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Allow Us To Use Scaffold\n\n"
    "-Scaffold Allow Us To Use AppBar And floatingActionButton\n\n"
    "-The AppBar Have Simple Title\n\n"
    "-floatingActionButton Having An Icon Add When Pressed It Show The Bottom Sheet That Need Context As He Is An Material Design And Content Builded Using Builder That Have 2 List Tile\n\n";


var BottomSheet_Simple_CompList =[
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
              CmpTitle(Title:"What Is Bottom Sheet?",),
              Divider(),
              CmpSubTitle(SubTitle: "Material Design Displayed At The Bottom Of The Page\n",
              ),
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
              CmpCode(
                CodeTxt:
                    "showModalBottomSheet(\n"
                    " context: context,\n"
                    " builder:(BuildContext bc){\n"
                    "  return WantedWidget(\n"
                    "    //...\n"
                    "  );\n"
                    " }\n"
                    ");\n",
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
//-------------------------------------------------------------