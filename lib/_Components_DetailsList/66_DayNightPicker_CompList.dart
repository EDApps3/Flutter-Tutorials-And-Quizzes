import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


String Day_Night_Picker_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(DayNightPicker) To Be Runned\n\n"
    "-This Class Is Statefull Widget Due To Changes Applied To Time And Changing Animation From Moon To Sun,Create State Needed\n\n"
    "-Creating State Class _DayNightPickerState That Extend Its Main State From Its Main Class DayNightPicker\n\n"
    "-Creating Variable _time Of Type TimeOfDay Initialized To The Current Time\n\n"
    "-Creating Method onTimeChanged That Take Changed Time in a Variable newTime And Store It Into Our Variable _time (Once User Change Time New Value Stored In newTime Then _time)\n\n "
    "-As Flutter Is Based On Widget A Widget Must Be Builded\n\n"
    "-Creating Matrial Add That Allow Us To Set App Title Taking Scaffold As An Home\n\n"
    "-Scaffold Allow Us to Set AppBar And Body Of The Page\n\n"
    "-As An AppBar It Simple Title\n\n"
    "-As An Body It Take A Centered Column (Elements Placed Into Rows)\n\n"
    "-First Row Take A Text Having Current Time Value Storred In Variable _time\n\n"
    "-Second Row Take A Sized Box With Height 10\n\n"
    "-Third Row Take A FlatButton With Blue Them Once Pressed It Show The Day Time Picker Dialog Taking Context As We Have To Build Context,Its Initialized Value Before Any Change And onChange To Get The New Value Set By The User,Format And Images!\n\n ";


List Day_Night_Picker_List =[
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
              CmpTitle(Title:"What Is Day Night Picker?",),
              Divider(),
              CmpSubTitle(SubTitle:"A day night time picker for Flutter. Beautiful day and night animation with Sun and Moon assets.",),
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
              CmpSubTitle(SubTitle:"Adding Plugin Into Yaml Dependency:\n",),
              Image.asset("Images/DayNightPicker.PNG"),
              CmpSubTitle(SubTitle:"\nTo Use We Need  To Import:\nimport 'package:day_night_time_picker/day_night_time_picker.dart';\n",),
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
              CmpTitle(Title:"Working With Images:",),
              Divider(),
              CmpSubTitle(SubTitle:"Create Folder Assets Then Put Images In With Sun Moon Name\n",),
              Image.asset("Images/DNP1.PNG"),
              CmpSubTitle(SubTitle:"Head To Yaml And Link Images:\n",),
              Image.asset("Images/DNP2.PNG"),
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

              CmpTitle(Title:"1-Creating Time Variable:\n"),
              CmpCode(CodeTxt:"TimeOfDay _time = TimeOfDay.now();\n\n",),

              CmpTitle(Title:"2-Update Time Variable On Change:\n"),
              CmpCode(CodeTxt:
                "void onTimeChanged(TimeOfDay newTime) {\n"
                "  setState(() {\n"
                "    _time = newTime;\n"
                "  });\n"
                "}\n\n",
              ),

              CmpTitle(Title:"3-Show Picker:\n"),
              CmpCode(
                CodeTxt:
                "Navigator.of(context).push(\n"
                " showPicker(\n"
                "  context: context,\n"
                "  value: _time,\n"
                "  onChange: onTimeChanged,\n"
                "  is24HrFormat: false,\n"
                " ),\n"
                ");\n\n",
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


