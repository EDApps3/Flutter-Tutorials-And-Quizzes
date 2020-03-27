import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';

String TextField_Simple_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(SimpleTFRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Show TextField (No State Change)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating TextEditingConttroller Variable TF To Control Text Input\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It And Having Light Theme\n\n"
    "-As An Home It Has Scaffold That Allow Us To Use AppBar And Set Body\n\n"
    "-As An AppBar It Has A Title\n\n"
    "-As An Body It Take An Centered Layout That Hold A TextField\n\n"
    "-The TextField Have Controller TF (Defined As A Variable And Used To Control TextField Data Text) \n\n";



List TextField_Simple_list =[
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
              CmpTitle(Title:"Creating Controller:",),
              Divider(),
              CmpSubTitle(SubTitle:"A Controller Must Be Created To Control TextField Input",),
              CmpCode(CodeTxt:"var TF=new TextEditingController();",)
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
                    "TextField(\n"
                    " controller:TF,\n"
                    ")\n"
              )
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
//---------------------------------------------------------
//---------------------------------------------------------


String TextField_NoBorder_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(TFNoBordRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Show TextField (No State Change)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating TextEditingController TF Variable To Control Text Input\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It And Having Light Theme\n\n"
    "-As An Home It Has Scaffold That Allow Us To Use AppBar And Set Body\n\n"
    "-As An AppBar It Has A Title\n\n"
    "-As An Body It Has Centered Layout That Hold A TextField\n\n"
    "-The TextField Border Set Inside Input Decoration In decoration and Set By Border\n\n"
    "-InputBorder.none Will Disable the Borders To Appear\n\n"
    "-HintText Also Considered As Decoration, Display Text When The TextField Is Empty(No Text)\n\n"
    "-The TextField Have Controller TF (Defined As A Variable And Used To Control TextField Data Text) \n\n";


List TextField_NoBorder_list =[
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
              CmpTitle(Title:"Creating Controller:",),
              Divider(),
              CmpSubTitle(SubTitle:"A Controller Must Be Created To Control TextField Input",),
              CmpCode(CodeTxt:"var TF=new TextEditingController();",)
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
                      "TextField(\n"
                      " decoration:InputDecoration(\n"
                      "  border:InputBorder.none,\n"
                      "  hintText:\n"
                      "  'TextField No Border!',\n"
                      "  ),\n"
                      "  controller: TF,\n"
                      ")\n"
              )
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
//---------------------------------------------------------
//---------------------------------------------------------


String TextField_MultiLine_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(MultiTFRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Show TextField (No State Change)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating TextEditingController TF Variable To Control Text Input\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It And Having Light Theme\n\n"
    "-As An Home It Has Scaffold That Allow Us To Use AppBar And Set Body\n\n"
    "-As An AppBar It Has A Title\n\n"
    "-As An Body It Take An Centered Layout That Hold A TextField\n\n"
    "-HintText Considered As Decoration, Display Text When The TextField Is Empty(No Text)\n\n"
    "-The TextField Have Controller TF (Defined As A Variable And Used To Control TextField Data Text) \n\n"
    "-Line Set By maxLines(Expanded To 6 Lines)";


List TextField_MultiLine_list =[
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
              CmpTitle(Title:"Creating Controller:",),
              Divider(),
              CmpSubTitle(SubTitle:"A Controller Must Be Created To Control TextField Input",),
              CmpCode(CodeTxt:"var TF=new TextEditingController();",)
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
                      "TextField(\n"
                      "  controller: TF,\n"
                      "  maxLines: 6,\n"
                      ")\n",
              )
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
//---------------------------------------------------------
//---------------------------------------------------------



String TextField_Icon_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(IconTFRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Show TextField (No State Change)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating TextEditingController TF Variable To Control Text Input\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It And Having Light Theme\n\n"
    "-As An Home It Has Scaffold That Allow Us To Use AppBar And Set Body\n\n"
    "-As An AppBar It Has A Title\n\n"
    "-As An Body It Take An Centered Layout That Hold A TextField\n\n"
    "-HintText Considered As Decoration, Display Text When The TextField Is Empty(No Text)\n\n"
    "-Icon Considered Also As Decoration, Set By icon And Icon.Name\n\n"
    "-The TextField Have Controller TF (Defined As A Variable And Used To Control TextField Data Text) \n\n";


List TextField_Icon_list =[
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
              CmpTitle(Title:"Creating Controller:",),
              Divider(),
              CmpSubTitle(SubTitle:"A Controller Must Be Created To Control TextField Input",),
              CmpCode(CodeTxt:"var TF=new TextEditingController();",)
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
                    "TextField(\n"
                    " decoration:InputDecoration(\n"
                    "  icon:\n"
                    "   new Icon(Icons.person),\n"
                    "  ),\n"
                    "  controller: TF,\n"
                    ")\n"
              )
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
//---------------------------------------------------------
//---------------------------------------------------------

String TextField_Style_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(TFStyleRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Show TextField (No State Change)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating TextEditingController TF Variable To Control Text Input\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It And Having Light Theme\n\n"
    "-As An Home It Has Scaffold That Allow Us To Use AppBar And Set Body\n\n"
    "-As An AppBar It Has A Title\n\n"
    "-As An Body It Has Centered Layout That Hold A TextField\n\n"
    "-HintText Considered As Decoration, Display Text When The TextField Is Empty(No Text)\n\n"
    "-Hint Styled To Dsiplay In Red Color By Hint Style\n\n"
    "-The TextField Have Controller TF (Defined As A Variable And Used To Control TextField Data Text) \n\n"
    "-Input TextField Color Displayed in Blue By TextStyle By Setting The Color\n\n";


List TextField_Style_list =[
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
              CmpTitle(Title:"Creating Controller:",),
              Divider(),
              CmpSubTitle(SubTitle:"A Controller Must Be Created To Control TextField Input",),
              CmpCode(CodeTxt:"var TF=new TextEditingController();",)
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
                      "TextField(\n"
                      " decoration: InputDecoration(\n"
                      "  hintText:\n"
                      "   'Red Hint Text, Blue Text Input',\n"
                      "  hintStyle: TextStyle(\n"
                      "    color: Colors.red,\n"
                      "  ),\n"
                      " ),\n"
                      " controller: TF,\n"
                      " style: TextStyle(\n"
                      "  color: Colors.blue,\n"
                      " ),\n"
                      ")\n"
              )
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
//---------------------------------------------------------
//---------------------------------------------------------

String TextField_Pass_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(PassTFRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Show TextField (No State Change)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating TextEditingController TF Variable To Control Text Input\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It And Having Light Theme\n\n"
    "-As An Home It Has Scaffold That Allow Us To Use AppBar And Set Body\n\n"
    "-As An AppBar It Has A Title\n\n"
    "-As An Body It Has Centered Layout That Has Hold A TextField\n\n"
    "-TextField has Hint Text Set By hintText By decoration\n\n"
    "-TextField Has Icon Set Icons.name Inside the decoration\n\n"
    "-TextField Controlled By TF(Variable Defined To Set TextField Data Text)\n\n"
    "-TextField Set To Pasword By obscureText->true";


List TextField_Pass_list =[
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
              CmpTitle(Title:"Creating Controller:",),
              Divider(),
              CmpSubTitle(SubTitle:"A Controller Must Be Created To Control TextField Input",),
              CmpCode(CodeTxt:"var TF=new TextEditingController();",)
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
                      "TextField(\n"
                      "  controller: TF,\n"
                      "  obscureText: true,\n"
                      ")\n"
              )
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
//---------------------------------------------------------
//---------------------------------------------------------

String TextField_LoginForm_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(LoginForm) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Show LoginForm (No State Change)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating TextEditingController _user Variable To Control UserName Input Text Data\n\n"
    "-Creating TextEditingController _pass Variable To Control Password Input Text Data\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It And Having Light Theme\n\n"
    "-As An Home It Has Scaffold That Allow Us To Use AppBar And Set Body\n\n"
    "-As An AppBar It Has A Title\n\n"
    "-As An Body It Take ListView To Avoid OverFlow When Keyborad Went Up To Type Characters\n\n"
    "-ListView Take An Container Padded 32px From All Sides(Left,Right,Up,Down)\n\n"
    "-Taking A Centered Layout That Take A Column Where Its Element Starting From Top Vertically\n\n"
    "-Taking As A First Row A Text Please Login\n\n"
    "-Taking As Second Row A Row(Elements Displayed In Columns) Where Column1 Take Text UserName And Column2 Take A Expanded TextField Controlled By _user Controller,Expanded used To Set TextField Max Width And Height Of Its Parent\n\n"
    "-Taking As Thirs Row A Row(Elements Displayed In Columns) Where Column1 Take Text Password And Column2 Take A Expanded TextField Controlled By _pass Controller Set Obscure To Hide Characters,Expanded used To Set TextField Max Width And Height Of Its Parent\n\n"
    "-Last Row Taking A Button Expanded To Match Full Width,Height Size\n\n";



List TextField_LoginForm_list =[
  SizedBox(height:5,),
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
//---------------------------------------------------------
//---------------------------------------------------------

String TextField_FormValidation_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(ValidTFRun) To Be Runned\n\n"
    "-As There Is 2 TextFields(UserName,Pass) 2 Controller Must Defined\n\n"
    "-ValidTFRun Is Statless (No State Change) As It Gonna Just Hold AppBar And Body\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It And Having Light Theme\n\n"
    "-As An Home It Has Scaffold That Allow Us To Use AppBar And Set Body\n\n"
    "-As An AppBar It Has A Title\n\n"
    "-As An Body It Call The Main Class Of State MyCustomForm\n\n"
    "-Inside The Main State Class We Create The State Of The Class(Changable)\n\n"
    "-Now Creating State Class That Extends Its State From The Main\n\n"
    "-defining a Key For The Form With _formKey Variable,Private Due to _\n\n"
    "-Now Creating The Form And Defining Its Key\n\n"
    "-Elments Inside The Form Are padding 12 (Space Arround Them)\n\n"
    "-Elements Displayed Into Column (Each On A Row)\n\n"
    "-First Row Take A TextField For UserName\n\n"
    "-Second Row Take A TextField For Password\n\n"
    "-noting That Each TextField Has a Validator That Check If Text is Empty Or Not With The Error Message returned!\n\n"
    "-Third Row Take a Button,On Pressed It Check If The FormKey Is Validated Or Not\n\n"
    "-If Validated A Green Snackbar is Displayed\n\n"
    "-If Not,Red SnackBar\n\n";


List TextField_FormValidation_list =[
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
                  "Class Must Extends Stateful Widget Because There Is State Change Inside The Form(Checking Form If Doesn't Have Empty Fields...)\n\n"
                  "-Satateful Widget Require 2 Classes (Main Class,Class State)\n",
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
              CmpTitle(Title:"Main Class Code:",),
              Divider(),
              CmpCode(
                  CodeTxt:
                      "class ClassName extends StatefulWidget {\n"
                      " @override\n"
                      " ClassName createState() {\n"
                      "   return ClassNameState();\n"
                      " }\n"
                      "}\n",
              )
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
              CmpTitle(Title:"State Class Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                "class ClassNameState extends State<ClassName> {\n"
                    " final _formKey = GlobalKey<FormState>();\n"
                    " var TF=TextEditingController();\n\n"
                    " @override"
                    " Widget build(BuildContext context){\n"
                    "  return Form(\n"
                    "   key: _formKey,\n"
                    "   child: Column(\n"
                    "    crossAxisAlignment:\n"
                    "     CrossAxisAlignment.start,\n"
                    "    children: <Widget>[\n"
                    "     TextFormField(\n"
                    "      controller:TF,\n"
                    "      validator:(value){\n"
                    "        if(value.isEmpty){\n"
                    "         return 'Error Message!';\n"
                    "        }\n"
                    "      },\n"
                    "     ),\n"
                    "    //You Can Add More\n"
                    "    Container(\n"
                    "     width: double.infinity,\n"
                    "     child:RaisedButton(\n"
                    "      onPressed:(){\n"
                    "       if (_formKey.currentState.validate()){\n"
                    "        //Do\n"
                    "       }\n"
                    "       else{\n"
                    "        //Do\n"
                    "       }\n"
                    "      },\n"
                    "      child:Text('Submit'),\n"
                    "      ),\n"
                    "     ),\n"
                    "    ],\n"
                    "   ),\n"
                    "  );\n"
                    " }\n"
                    "}\n",
              )
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
//---------------------------------------------------------
//---------------------------------------------------------