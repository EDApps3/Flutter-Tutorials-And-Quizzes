import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


String Switch_Simple_Explanation=
    "-Declaring String Variable (SetText) Initialized To Off,Will Be Used To Be Putted Into A Text That Show Switch State\n\n"
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(SimpleSwitch) To Be Runned\n\n"
    "-This Class Is Statefull As The Switch Value Will Change Into true And false,After That We Create Class State\n\n"
    "-Now We Need To Create A New Class 'State' That Extend Its State From The Main Class Simple Switch\n\n"
    "-Creating Bool Variable SWvalue Initialized to false,Used To Set The Value Of The Switch (Selected Or Not)\n\n"
    "-Creating Method onSWChanged that Take The Boolean Value (true | false) As Parameter,Used To Check The Switch State And What Gonna Happen As Actions\n\n"
    "-SWvalue Variable Take Switch Value (true|false)\n\n"
    "-If The Switch Value Stored In SWvalue Is false(Not Selected) Then Text Variable Will Change To Off\n\n"
    "-If true Then The Text Variable Will Change To On\n\n"
    "-Now Creating A Widget As Flutter Is Based On Widgets To Hold The Page\n\n"
    "-Creating An Material App That Allow Us To Use Scaffold\n\n"
    "-As An Home It Contain A Scaffold That Allow Us To Create The Body Of The Page (All Widgets That Appear)\n\n"
    "-Now Body Contain A Centered Layout Covered By A Column As A Child => Column Centered\n\n"
    "-Elements Represented Into One Columns Each On A Row\n\n"
    "-First Row Take A Text That Hold The Value Of The Variable SetText (Changed In Method Up)\n\n"
    "-Second Row Take The Switch\n\n"
    "-The Switch Active Color Set To Green (State On)\n\n"
    "-The Switch Inactive Color Set To Red (State Off)\n\n"
    "-As A Value It Take The Boolean Variable That We Have Declared At The Top\n\n"
    "-Finnaly Calling The Method That Do The Changed When The Switch Change its State\n\n";



List Switch_Simple_list =[
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
              CmpSubTitle(
                SubTitle:
                    "Class Must Be Stateful Widget As Switch Change Its State:\n"
                    "true  -> Selected\n"
                    "false -> Not Selected\n\n",
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
              CmpTitle(Title:"Switch Value:",),
              Divider(),
              CmpSubTitle(SubTitle: "As We Said Switch Value Go Between true And False We Must Declare A Boolean Value,With It We Can Check If The Switch Is Selected(true) Or Not Selected(false),Example:\n",),
              CmpCode(CodeTxt:"bool SWvalue=false;",),
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
              CmpTitle(Title:"Switch Detect Change State Method:",),
              Divider(),
              CmpSubTitle(
                SubTitle:
                    "Called Once The Value Of Switch has Been Changed From:\n"
                    "-true -> false\n"
                    "-false ->true\n"
                    "And It Take The Actions,What Gonna Happen When Switch Is On State:\n"
                    "-true (Selected)\n"
                    "-false (Not Selected)\n"
              ),
              CmpCode(
                CodeTxt:
                    "\nbool _SWvalue = false;\n\n"
                    "void _onSWChanged(bool value) {\n"
                    " setState (() {\n"
                    "  _SWvalue = value;\n\n"
                    "  if(_SWvalue==false){\n"
                    "   //Do If Switch Is Off\n"
                    "  }\n"
                    "  else{\n"
                    "   //Do If Switch Is On\n"
                    "  }\n"
                    " });\n"
                    "}\n",
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
              CmpTitle(Title:"Finally Set The Switch Widget:",),
              Divider(),
              CmpSubTitle(
                  SubTitle:
                  "activeColor:\nTake A Color,And Set The Background Color Of The Switch To The Selected Color When The Switch is In True State (Selected)\n\n"
                      "inactiveThumbColor:\nTake A Color,And Set The Background Color Of The Switch To The Selected Color When The Switch is In false State (Not Selected)\n\n"
                      "value:\nTake Its Bool State Value (true | false ) ,Selected Or Not\n\n"
                      "onChanged:\nWhen The User Press On It It Change Its State,Example In true State We Need To Activate Sometging and in the false We Need To Stop It\n\n",
              ),
              CmpCode(
                CodeTxt:
                    "\nSwitch(\n\n"
                    " activeColor:\n"
                    "  Colors.green,\n\n"
                    " inactiveThumbColor:\n"
                    "  Colors.red,\n\n"
                    " value: _SWvalue,\n\n"
                    " onChanged:_onSWChanged,\n\n"
                    ")\n"
              ),
            ]
        ),
      ),
    ),
  ),
];


//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------


String Switch_AppBarTheme_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Declaring Color Variable (Bg) Initialized To blue \n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(AppBarThemeSwitchRun) To Be Runned\n\n"
    "-This Class Is Statefull As The Switch Value Will Change Into true And false,After That We Create Class State\n\n"
    "-Now We Need To Create A New Class 'State' That Extend Its State From The Main Class AppBarThemeSwitchRun\n\n"
    "-Creating Bool Variable SWvalue Initialized to false,Used To Set The Value Of The Switch (Selected Or Not)\n\n"
    "-Creating Method onSWChanged that Take The Boolean Value (true | false) As Parameter,Used To Check The Switch State And What Gonna Happen As Actions\n\n"
    "-SWvalue Variable Take Switch Value (true|false)\n\n"
    "-If The Switch Value Stored In SWvalue Is false(Not Selected) Then The Color Bg Set To Blue\n\n"
    "-If true Then The Color Bg Set To Red\n\n"
    "-Now Creating A Widget As Flutter Is Based On Widgets To Hold The Page\n\n"
    "-Creating An Material App That Allow Us To Use Scaffold\n\n"
    "-As An Home It Contain A Scaffold That Allow Us To Create AppBar And The Body Of The Page (All Widgets That Appear)\n\n"
    "-AppBar Has A Title, And His Background Color Set To Bg(Red If Switch On,Blue If Switch Off) Noting That State Will Be Auto Detected As Class Is Stateful\n\n"
    "-Now Body Contain A Container That Have A Centered Column(Elements Placed On Rows)\n\n"
    "-First Row Take A SwitchListTile\n\n"
    "-As A Value It Take The Boolean Variable That We Have Declared At The Top\n\n"
    "-Finnaly Calling The Method That Do The Changed When The Switch Change its State\n\n"
    "-And Has A Text 'Red Theme?'";



List Switch_AppBarTheme_list =[
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
              CmpSubTitle(
                SubTitle:
                "Class Must Be Stateful Widget As Switch Change Its State:\n"
                    "true  -> Selected\n"
                    "false -> Not Selected\n\n",
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
              CmpTitle(Title:"Switch Value:",),
              Divider(),
              CmpSubTitle(SubTitle: "As We Said Switch Value Go Between true And False We Must Declare A Boolean Value,With It We Can Check If The Switch Is Selected(true) Or Not Selected(false),Example:\n",),
              CmpCode(CodeTxt:"bool SWvalue=false;",),
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
              CmpTitle(Title:"Switch Detect Change State Method:",),
              Divider(),
              CmpSubTitle(
                  SubTitle:
                  "Called Once The Value Of Switch has Been Changed From:\n"
                      "-true -> false\n"
                      "-false ->true\n"
                      "And It Take The Actions,What Gonna Happen When Switch Is On State:\n"
                      "-true (Selected)\n"
                      "-false (Not Selected)\n"
              ),
              CmpCode(
                CodeTxt:
                "\nbool _SWvalue = false;\n\n"
                    "void _onSWChanged(bool value) {\n"
                    " setState (() {\n"
                    "  _SWvalue = value;\n\n"
                    "  if(_SWvalue==false){\n"
                    "   //Do If Switch Is Off\n"
                    "  }\n"
                    "  else{\n"
                    "   //Do If Switch Is On\n"
                    "  }\n"
                    " });\n"
                    "}\n",
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
              CmpTitle(Title:"Finally Set The Switch Widget:",),
              Divider(),
              CmpSubTitle(
                SubTitle:
                    "value:\nTake Its Bool State Value (true | false ) ,Selected Or Not\n\n"
                    "onChanged:\nWhen The User Press On It It Change Its State,Example In true State We Need To Activate Sometging and in the false We Need To Stop It\n\n",
              ),
              CmpCode(
                  CodeTxt:
                      "\SwitchListTile(\n\n"
                      " value: _SWvalue,\n\n"
                      " onChanged:_onSWChanged,\n\n"
                      " title:Text('Txt'),\n\n"
                      ")\n",
              ),
            ]
        ),
      ),
    ),
  ),
];


//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------



String Switch_ThemeMode_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(LightDarkModeRun) To Be Runned\n\n"
    "-Declaring Theme Data Variable (DT) Set To Light\n\n"
    "-Declaring String Variable (ThemeTxt) Set To LightTheme\n\n"
    "-This Class Is Statefull As The Switch Value Will Change Into true And false,After That We Create Class State\n\n"
    "-Now We Need To Create A New Class 'State' That Extend Its State From The Main Class Simple Switch\n\n"
    "-Creating Bool Variable SWvalue Initialized to false,Used To Set The Value Of The Switch (Selected Or Not)\n\n"
    "-Creating Method onSWChanged that Take The Boolean Value (true | false) As Parameter,Used To Check The Switch State And What Gonna Happen As Actions\n\n"
    "-SWvalue Variable Take Switch Value (true|false)\n\n"
    "-If The Switch Value Stored In SWvalue Is false(Not Selected) then We Set The DT (DataTheme) To Light And The ThemeTxt To LightTheme\n\n"
    "-If true Then We Set The DT (DataTheme) To Dark And The ThemeTxt To DarkTheme\n\n"
    "-Now Creating A Widget As Flutter Is Based On Widgets To Hold The Page\n\n"
    "-Creating An Material App That Allow Us To Use Scaffold\n\n"
    "-Material App Theme Detected From Variable DT,Set To Light If Switch Is On,Dark If Off...Noting That Whole Page Will Auto Detect Its State As The Class Is Stateful\n\n"
    "-As An Home It Contain A Scaffold That Allow Us To Create AppBar And The Body Of The Page (All Widgets That Appear)\n\n"
    "-AppBar Has A Title That is Detected From ThemeTxt String Variable,If Switch Is On Its Value Is Light Theme, iF Switch Is Off Its Value Is Dark Theme...\n\n"
    "-Now Body Contain A Centered Row(Elements Placed In Center in Columns)\n\n"
    "-First Column Take A Text Light Padded 40 From All Sides\n\n"
    "-Second Column Take A Switch That is Bigger 3 time from default Size,Images Placed In activeThumbImage If Switch Is On,inactiveThumbImage If Off,Take Its Value(true | false) And On Change State Do An Action\n\n"
    "-Third Column Take A Text Dark Padded 40 From All Sides\n\n";



List Switch_ThemeMode_list =[
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
              CmpSubTitle(
                SubTitle:
                "Class Must Be Stateful Widget As Switch Change Its State:\n"
                    "true  -> Selected\n"
                    "false -> Not Selected\n\n",
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
              CmpTitle(Title:"Switch Value:",),
              Divider(),
              CmpSubTitle(SubTitle: "As We Said Switch Value Go Between true And False We Must Declare A Boolean Value,With It We Can Check If The Switch Is Selected(true) Or Not Selected(false),Example:\n",),
              CmpCode(CodeTxt:"bool SWvalue=false;",),
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
              CmpTitle(Title:"Switch Detect Change State Method:",),
              Divider(),
              CmpSubTitle(
                  SubTitle:
                  "Called Once The Value Of Switch has Been Changed From:\n"
                      "-true -> false\n"
                      "-false ->true\n"
                      "And It Take The Actions,What Gonna Happen When Switch Is On State:\n"
                      "-true (Selected)\n"
                      "-false (Not Selected)\n"
              ),
              CmpCode(
                CodeTxt:
                "\nbool _SWvalue = false;\n\n"
                    "void _onSWChanged(bool value) {\n"
                    " setState (() {\n"
                    "  _SWvalue = value;\n\n"
                    "  if(_SWvalue==false){\n"
                    "   //Do If Switch Is Off\n"
                    "  }\n"
                    "  else{\n"
                    "   //Do If Switch Is On\n"
                    "  }\n"
                    " });\n"
                    "}\n",
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
              CmpTitle(Title:"Finally Set The Switch Widget:",),
              Divider(),
              CmpSubTitle(
                SubTitle:
                    "activeColor:\nTake A Color,And Set The Background Color Of The Switch To The Selected Color When The Switch is In True State (Selected)\n\n"
                    "value:\nTake Its Bool State Value (true | false ) ,Selected Or Not\n\n"
                    "onChanged:\nWhen The User Press On It It Change Its State,Example In true State We Need To Activate Sometging and in the false We Need To Stop It\n\n"
                    "activeThumbImage:Set The Image To the Switch When On\n\n"
                    "inactiveThumbImage:Set The Image To the Switch When Off\n\n", ),
              CmpCode(
                CodeTxt:
                    "\nSwitch(\n\n"
                    " activeColor:\n"
                    "  Colors.black,\n\n"
                    " activeThumbImage:\n"
                    "  ExactAssetImage('ImageLocation.png')\n\n"
                    " inactiveThumbImage:\n"
                    "  ExactAssetImage('ImageLocation.png')\n\n"
                    " value: _SWvalue,\n\n"
                    " onChanged:_onSWChanged,\n\n"
                    ")\n",
              ),
            ]
        ),
      ),
    ),
  ),
];


//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------