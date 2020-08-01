import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


String Dialogs_Simple_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(SimpleDialogRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Centered Raised Button Showing Dialog That Will Not Change (No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Take An Scaffold That Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As AppBar It Has An Title\n\n"
    "-As An Body It Has Centered Layout\n\n"
    "-Centered Layout Contain The Raised Button\n\n"
    "-When The Raised Button Is Pressed An Dialog Is Popped Up\n\n"
    "-Dialog Defined in  Variable Dialog Of Type AlertDialog And Have An Content Just A Text\n\n"
    "-Finally Showing The Dialog\n\n";


List Dialogs_Simple_list =[
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
                    "AlertDialog dialog = new AlertDialog(\n"
                    " content:new Text(\n"
                    "  'Message_Text'\n"
                    " )\n"
                    ");\n"
                    "showDialog(\n"
                    "  context:context,\n"
                    "  child:dialog\n"
                    ");\n"
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


String Dialogs_Customized_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(SimpleCustomizedDialogRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Centered Raised Button Showing An Dialog That Will Not Change (No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Take An Scaffold Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As AppBar It Has An Title\n\n"
    "-As An Body It Has Centered Layout\n\n"
    "-Centered Layout Contain The Raised Button\n\n"
    "-When The Raised Button Is Pressed An Dialog Is Popped Up\n\n"
    "-Dialog Defined in  Variable Dialog Of Type AlertDialog(Known Automaticly By Var) And Have:\n\n"
    "-Title Set By title\n"
    "-Contents Globbed By Container Due To 3 Elements ( You Can Add 2+)\n\n"
    "-The Container Height Is 180 That Hold Column Layout Thats Mean All Children Will Display On A Row)\n"
    "-First Row Contain The Text\n"
    "-Second Row Contain A Divider(line)\n"
    "-Third Contain Raised Rounded Button With Red Background Color Once This Button Is Pressed It Will Get Rid Of The Dialog\n"
    "-Finally Showing The Dialog\n\n"
    "You Can Check:\n"
    "-Buttons -> Raised Rounded Section\n"
    "-Keywords -> Navigator -> Pop\n"
    "For More Info\n\n"
    "Column Layout Will Be Explained In Layout Sections!";


List Dialogs_Customized_list =[
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
                  "AlertDialog dialog = new AlertDialog(\n"
                      " content:\n"
                      "  //Any LayoutWidget(\n"
                      "  ' //Children Widgets\n"
                      " )\n"
                      ");\n"
                      "showDialog(\n"
                      "  context:context,\n"
                      "  child:dialog\n"
                      ");\n"
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


String Dialogs_BarrierDissmissble_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(DialogBarrierDismissibleRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Centered Raised Button Showing Dialog That Will Not Change (No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Take An Scaffold That Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As AppBar It Has An Title\n\n"
    "-As An Body It Has Centered Layout\n\n"
    "-Centered Layout Contain The Raised Button\n\n"
    "-When The Raised Button Is Pressed An Dialog Is Popped Up\n\n"
    "-Dialog Defined in  Variable Dialog Of Type AlertDialog And Have As Title A Simple Text And As Content Column As We're Placing Alot Of Widgets Placed Into Rows\n\n"
    "-Row 1 Taking Divider With Black Color\n\n"
    "-Row 2 Taking Simple Text\n\n"
    "-Row 3 Taking Flat Button Where Color Set To Red Once Pressed Will Pop The Dialog\n\n"
    "-Finally Showing The Dialog Where barrierDismissible Set To false!\n\n";


List Dialogs_BarrierDissmissble_list =[
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
              CmpTitle(Title:"barrierDismissble:",),
              Divider(),
              CmpSubTitle(SubTitle:"Allow Closing Dialog When Clicking Outside!",)
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
                    "AlertDialog dialog = new AlertDialog(\n"
                    " content:new Text(\n"
                    "  'Message_Text'\n"
                    " )\n"
                    ");\n\n"
                    "showDialog(\n"
                    "  barrierDismissible:false,\n"
                    "  context:context,\n"
                    "  child:dialog\n"
                    ");\n"
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



String Dialogs_WillPopScope_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(DialogWillPopRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Centered Raised Button Showing Dialog That Will Not Change (No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Take An Scaffold That Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As AppBar It Has An Title\n\n"
    "-As An Body It Has Centered Layout\n\n"
    "-Centered Layout Contain The Raised Button\n\n"
    "-When The Raised Button Is Pressed An Dialog Is Popped Up\n\n"
    "-Dialog Defined in  Variable Dialog Of Type AlertDialog And Have As Title A Simple Text And As Content Column As We're Placing Alot Of Widgets Placed Into Rows\n\n"
    "-Row 1 Taking Divider With Black Color\n\n"
    "-Row 2 Taking Simple Text\n\n"
    "-Row 3 Taking Flat Button Where Color Set To Red Once Pressed Will Pop The Dialog\n\n"
    "-Finally Showing The Dialog Where barrierDismissible Set To false And Also Disabling Back To false by willPopScope Set To false!\n\n";


List Dialogs_WillPopScope_list =[
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
              CmpTitle(Title:"WillPopScope:",),
              Divider(),
              CmpSubTitle(SubTitle:"Control Back Button When Pressed!",)
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
                    "AlertDialog dialog = new AlertDialog(\n"
                    " content:new Text(\n"
                    "  'Message_Text'\n"
                    " )\n"
                    ");\n\n"
                    "showDialog(\n"
                    "  barrierDismissible:false,\n"
                    "  context:context,\n"
                    "   builder: (BuildContext context) {\n"
                    "    return WillPopScope(\n"
                    "     child:dialog,\n"
                    "     onWillPop:() async => false,\n"
                    "    );\n"
                    "   }\n"
                    ");\n"
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