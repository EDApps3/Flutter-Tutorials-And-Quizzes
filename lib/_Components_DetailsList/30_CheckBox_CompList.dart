import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


String CheckBox_Simple_Explanation=
    "-main Is The Principal Method Runned Once Program Is Running And Calling SimpleCheckBox Class\n"
    "-SimpleCheckBox Class Is Statefull As There Is CheckBox State Change Going From Selected(true) And Not Selected(False)\n\n"
    "-Creating SimpleCheckBox State\n\n"
    "-Now Creating Class State _SimpleCheckBoxState That Extends His State From The Main Class SimpleCheckBox\n\n"
    "-Creating 3 bool Variables Each For A CheckBox To Detect If Checked true,In Not False.\n\n"
    "-Those Bool Vars Initialized To False (On Start None CheckBox Is Checked)\n\n"
    "-As Fluttter Is Based On Widgets We Have To Create One\n\n"
    "-Creating A Material App That Grant Theme,Title When We Want To Close The App\n\n"
    "-Allow Us To Use Scaffold As Home Taking AppBar And Body\n\n"
    "-As An AppBar Taking An Title\n\n"
    "-As An Body Taking A Padded Column By 18px (Elements Display On Rows)\n\n"
    "-First Row Taking Text\n\n"
    "-Remaining Rows Taking CheckBox Taking Value(Checked Or No),On Changed Set Value To Its Variable(true|false),Followed By A Text Desplaying Its ValueText\n\n"
    "-Last Row Taking A Button Once Clicked Showing Dialog Showing Selected Checkboxes Conbined Into A Text Variable Txt";


List CheckBox_Simple_list =[
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
              CmpTitle(
                Title:
                "This Class Is A Stateful Widget Due To CheckBox State Change:\n"
                    "-true  -> Checked\n"
                    "-false -> Not Checked\n\n"
                    "Noting That One Or More CheckBox Can Be Checked!",
              )

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
              CmpTitle(Title:"Variables:",),
              Divider(),
              CmpTitle(Title:"\nDeclaring Variables That Initialize CheckBox State:\n"),
              CmpCode(
                  CodeTxt:
                  "bool CheckBox1Val = false;\n"
                  "bool CheckBox2Val = false;\n"
                  "//You Can Add More\n"
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
              CmpTitle(Title:"Setting CheckBox With Its Change:",),
              Divider(),
              CmpCode(
                CodeTxt:
                "Checkbox(\n"
                " value: CheckBox1Val,\n"
                " onChanged:(bool value){\n"
                "  setState((){\n"
                "   CheckBox1Val = value;\n"
                "  });\n"
                " },\n"
                "),\n",
              )
            ]
        ),
      ),
    ),
  ),
];

//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------

String CheckBox_Tile_Explanation=
    "-Creating TextField NumTxt That Take A Number From The User\n\n"
    "-Creating String Variable Result Used To Show Result\n\n"
    "-main Is The Principal Method Runned Once Program Is Running And Calling CBTilesRun Class\n"
    "-CBTilesRun Class Is Statefull As There Is CheckBox State Change Going From Selected(true) And Not Selected(False)\n\n"
    "-Creating CBTilesRun State\n\n"
    "-Now Creating Class State _CBTilesState That Extends His State From The Main Class CBTilesRun\n\n"
    "-Creating 2 bool Variables Each For A CheckBox To Detect If Checked true,In Not False.\n\n"
    "-Those Bool Vars Initialized To False (On Start None CheckBox Is Checked)\n\n"
    "-Creating PopDialog That Show Dialog Showing result Stored Into Txt Variable Called When Button Is Clicked\n\n"
    "-As Fluttter Is Based On Widgets We Have To Create One\n\n"
    "-Creating A Material App That Grant Theme,Title When We Want To Close The App\n\n"
    "-Allow Us To Use Scaffold As Home Taking AppBar And Body\n\n"
    "-As An AppBar Taking An Title\n\n"
    "-As An Body Taking ListView Taking A Padded Column By 32px (Elements Display On Rows)\n\n"
    "-First Row Taking TextField Controlled By Its Controller NumTxt And Set To Take Numbers\n\n"
    "-Remaining Rows Taking CheckboxListTile Taking Value(Checked Or No),On Changed Set Value To Its Variable(true|false),Title And Subtitle And Checkboxs Set The Lead(Starting From Left)\n\n"
    "-Last Row Taking A Button Once Clicked Calculate And Show Dialog Showing Result\n\n";



List CheckBox_Tile_list =[
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
              CmpTitle(
                Title:
                "This Class Is A Stateful Widget Due To CheckBox State Change:\n"
                    "-true  -> Checked\n"
                    "-false -> Not Checked\n\n"
                    "Noting That One Or More CheckBox Can Be Checked!",
              )

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
              CmpTitle(Title:"Variables:",),
              Divider(),
              CmpTitle(Title:"\nDeclaring Variables That Initialize CheckBox State:\n"),
              CmpCode(
                  CodeTxt:
                  "bool CheckBox1Val = false;\n"
                      "bool CheckBox2Val = false;\n"
                      "//You Can Add More\n"
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
              CmpTitle(Title:"Setting CheckBox With Its Change:",),
              Divider(),
              CmpCode(
                CodeTxt:
                "CheckboxListTile(\n"
                " controlAffinity:\n"
                "  ListTileControlAffinity.leading,\n"
                " title:Text('Txt'),\n"
                " subtitle:Text('Txt',),\n"
                " value:CheckBox1Val,\n"
                " onChanged:(bool value){\n"
                "  setState((){\n"
                "   CheckBox1Val = value;\n"
                "  });\n"
                " },\n"
                ")\n",
              )
            ]
        ),
      ),
    ),
  ),
];

//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
