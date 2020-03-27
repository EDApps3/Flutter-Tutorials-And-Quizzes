import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


String Radio_Simple_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(SimpleRadio) To Be Runned\n\n"
    "-This Class Is Stateful Widget As There Are 3 Radios And Each State Will be Changed Into Checked(true) Or Not Checked(flase)\n\n"
    "-Creating Its Main State\n\n"
    "-Creating Another Class State SimpleRadioState That Extend Its Main State From SimpleRadio\n\n"
    "-Declaring private(_)Variable radioValue That Is Used To Store Checked Radio\n\n"
    "-Declaring String Result Used To Store Within It The Result (Wrong | Correct Answer)\n\n"
    "-Declaring Color Variable Used To Set String To Red When Wrong,Green When Correct\n\n"
    "-Now Creating A Procedure ShowDialog Used To Pop A Custumized Dialog That Show Results\n\n"
    "-Creating Dialog Variable AD That Take As A Content A Container Having Height 100,Its Widgets Displayed On Columns(Each On A Row)\n\n"
    "-First Row Take Text Having ResultVariable (Correct | Wrong Answer) Value With ResultColor Variable Color (Red | Green)\n\n"
    "-Second Row Take A Divider\n\n"
    "-Third Row Take The Answer\n\n"
    "-Finally Showing The Dialog\n\n"
    "-Now Setting The Radio Change Checked Procedure Take With It The Checked Radio By A Int Value\n\n"
    "-If radioValue is Set to 3 Then Set Color To Red,Result To Wrong And Finally Pop The Dialog\n\n"
    "-If radioValue is Set to 4 Then Set Color To Green,Result To Correct And Finally Pop The Dialog\n\n"
    "-If radioValue is Set to 5 Then Set Color To Red,Result To Wrong And Finally Pop The Dialog\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home Contain The Scaffold \n\n"
    "-Scaffold Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As AppBar It Has An Title\n\n"
    "-As An Body It Has A Container That Take A ListView That Take A Column(Widgets Displayes On Rows)\n\n"
    "-First Row Take Text That Contain The Question\n\n"
    "-Remaining Rows Take Radios Each Contain Its Own Value,Grouped As We Can Have 2 Questions Example:\n"
    "1)Favorite Color:\n"
    "  -Red\n"
    "  -Green\n\n"
    "2)Favorite Desert:\n"
    "  -Donuts\n"
    "  -Eclaire\n\n"
    "-Finally The On Change That Call The Procedure That We Created To Apply The Change";


List Radio_Simple_list =[
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
                    "This Class Is A Stateful Widget Due To Radio State Change:\n"
                    "-true  -> Checked\n"
                    "-false -> Not Checked\n\n"
                    "Noting That Just One Radio Will Be Checked!",
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
              CmpTitle(Title:"Knowing Checked Value:",),
              Divider(),
              CmpTitle(Title: "We Need To Declare A Variable That Set The Selected Or Checked Radio,Example:\n"),
              CmpCode(CodeTxt:"int radioValue=0\n",)
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
              CmpTitle(Title:"When User Check Radio:",),
              Divider(),
              CmpTitle(Title:"User Can Switch And Change Checked Radio,So When Radio Is Changed An Action Must Be Done.Code:\n\n"),
              CmpCode(
                CodeTxt:
                    "void _handleRadioValueChange(int value){\n"
                    " setState(() {\n"
                    "  _radioValue = value;\n\n"
                    "  switch (_radioValue) {\n"
                    "   case 0:\n"
                    "    //Do Actions\n"
                    "   break;\n\n"
                    "   case 1:\n"
                    "    //Do Actions\n"
                    "   break;\n\n"
                    " }\n"
                    "});\n"
                    "}\n",
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
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------



String Radio_App_BackgroundColorChanger_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Declaring Enumaration Clr That Take Options To Be PLaced Into Radio\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(RadioAppBarChangerRun) To Be Runned\n\n"
    "-This Class Is Stateful Widget As There Are Is Radio State Change , Checked(true) Or Not Checked(flase)\n\n"
    "-Creating Its Main State\n\n"
    "-Creating Another Class State _RadioAppBarChangerRunState That Extend Its Main State From RadioAppBarChangerRun\n\n"
    "-Declaring private(_)Variable ClrVal Initialized To Teal (On Start Clr Is Set To Teal )\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home Contain The Scaffold \n\n"
    "-Scaffold Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As AppBar It Has An Title\n\n"
    "-As An Body It Has A Column (Elements Placed Into Rows) Aligned From Start Horizontally\n\n"
    "-First Row Taking An Sized Box Having Height Set To 30\n\n"
    "-Second Row Taking A Text Representing The Question\n\n"
    "-Remaining Rows Take RadioListTile Having Each Title,Own Value,Group Value Set By Enumaration,And Changable State\n\n"
    "-When Teal Is Selected Then The Slected Radio Will Be Teal Stored In _character Variable,Clr Will Change To Teal\n\n"
    "-When Grey Is Selected Then The Slected Radio Will Be Grey Stored In _character Variable,Clr Will Change To Grey\n\n";


List Radio_App_BackgroundColorChanger_list =[
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
                "This Class Is A Stateful Widget Due To Radio State Change:\n"
                    "-true  -> Checked\n"
                    "-false -> Not Checked\n\n"
                    "Noting That Just One Radio Will Be Checked!",
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
              CmpTitle(Title:"Knowing Checked Value:",),
              Divider(),
              CmpTitle(Title:"\nDeclaring Enumeration That Gonna Contain Each ListTile Value:\n"),
              CmpCode(
                CodeTxt:
                    "enum ClrVal {\n"
                    "  Teal,\n"
                    "  Grey\n"
                    "}\n\n\n"
              ),
              CmpTitle(Title: "We Need To Declare A Variable That Set The Selected Or Checked Radio,Example:\n"),
              CmpCode(CodeTxt:"ClrVal _character = ClrVal.Teal;\n",)
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
              CmpTitle(Title:"Setting Radio With Its Change:",),
              Divider(),
              CmpTitle(Title:"RadioListTile Take The Enumeration Varible,Take Its Title To Be Shown,Its Value From Enumeration And Its Group(Multiple ListTileRadioGroup) And Finally Action To Be Done On Change,Code:\n"),
              CmpCode(
                CodeTxt:
                    "RadioListTile<ClrVal>(\n"
                    " title:\n"
                    "  const Text('Teal'),\n"
                    " value:ClrVal.Teal,\n"
                    " groupValue:_character,\n"
                    " onChanged:(ClrVal value){\n"
                    " setState(() {\n"
                    "  _character = value;\n"
                    "  //Do\n"
                    " });\n"
                    " },\n"
                    " )\n"
                    "}\n",
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





String Radio_ThemeChanger_Explanation=
    "-Declaring Color Clr Initialized To Orange Used To Change Background Image\n\n"
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(RadioTilesRun) To Be Runned\n\n"
    "-This Class Is Stateful Widget As There Are Is Radio State Change , Checked(true) Or Not Checked(flase)\n\n"
    "-Creating Its Main State\n\n"
    "-Creating Another Class State _State That Extend Its Main State From RadioTilesRun\n\n"
    "-Declaring private(_)Variable _Radvalue Initialized To 0(First RadioTile Will Be Checked)\n\n"
    "-Creating Method _Radsetvalue Used To Detect RadioTile Select If The First Tile Is Selected Clr Var Will Change To Orange Else Will Change Yellow\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating A Widget makeRadioTiles Method  To Place RadioListTiles,Titles Stored In A list Of Items,Subtitles Stored In List SubItems\n\n"
    "-Now Were Entering Loop To Place The Radio Tiles Each Getting Its Value(0 or 1 Here),Group,And On Change State,Active Color Of The Selected Radio,And Trail To Set Radio To Right,SubTiltes And Titles\n\n"
    "-List Returned Into A Column (Each On A Row)\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home Contain The Scaffold \n\n"
    "-Scaffold Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As AppBar It Has An Title\n\n"
    "-As An Body It Has A Container Background Color Set By Var Clr That Change Between Orange And Yellow Due To User Selecting Radios\n\n"
    "-Taking A Centered Column That Take Widget Of RadioTiles Returned By makeRadioTiles Method\n\n";



List Radio_ThemeChanger_list =[
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
                "This Class Is A Stateful Widget Due To Radio State Change:\n"
                    "-true  -> Checked\n"
                    "-false -> Not Checked\n\n"
                    "Noting That Just One Radio Will Be Checked!",
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
              CmpTitle(Title:"Knowing Checked Value:",),
              Divider(),
              CmpTitle(Title:"\nDeclaring Method To Detect Radio State:\n"),
              CmpCode(
                  CodeTxt:
                  "int _Radvalue = 0;\n\n"
                  "void _Radsetvalue(int value){\n"
                  " setState(()=>_Radvalue=value);\n"
                  "  if(_Radvalue==0){\n"
                  "   Clr=Colors.orange;\n"
                  "  }\n"
                  "  else{\n"
                  "   Clr=Colors.yellow;\n"
                  "  }\n"
                  "}\n"
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
              CmpTitle(Title:"Setting Radio With Its Change:",),
              Divider(),
              CmpTitle(Title:"RadioListTile Take The Enumeration Varible,Take Its Title To Be Shown,Its Value From Enumeration And Its Group(Multiple ListTileRadioGroup) And Finally Action To Be Done On Change,Code:\n"),
              CmpCode(
                CodeTxt:
                "RadioListTile(\n"
                " value://Use Number Or Enum,\n"
                " groupValue: _Radvalue,\n"
                " onChanged: _Radsetvalue,\n"
                " activeColor: Colors.red,\n"
                " controlAffinity:\n"
                "  ListTileControlAffinity.trailing,\n"
                " subtitle:Text('Txt')\n"
                " title: Text('Txt'),\n"
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












