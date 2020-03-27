import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


var DartSyntaxeHighlight_Intro_CompList =[
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
              CmpTitle(Title:"What Is Flutter Syntaxe?",),
              Divider(),
              CmpSubTitle(SubTitle:"Widget With Side By Side Source Code View.",),
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
              CmpSubTitle(SubTitle:"We Need To Import Into The Yaml The Plugin:",),
              SizedBox(height: 16,),
              Image.asset("Images/WidgetWithCodeView.PNG",),
              CmpSubTitle(SubTitle:"\n\nDon't Forget To Get Packages!",),
              CmpSubTitle(SubTitle:"\n\nWe Need To Import:\nimport 'package:widget_with_codeview/source_code_view.dart';\n",),
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
              CmpTitle(Title:"Link The Code:",),
              Divider(),
              CmpSubTitle(SubTitle:"Heading To Yaml And Link The Code Into The Assets:",),
              SizedBox(height: 16,),
              Image.asset("Images/WidgetWithCodeView2.PNG",),
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


String FlutterSyntaxe_CodeView_Explanation=
    "-Main Is The Principal Method Used To Run FlutterSyntaxeCodeView Class When The Page Is Loaded\n\n"
    "-Creating Class FlutterSyntaxeCodeView,Stateless Widget As We Just Need To Show The Code ( No State Change )\n\n"
    "-As Flutter Is Based On Widgets,We Need To Create One\n\n"
    "-Creating A Material App That Allow Us To Use AppBar And Body\n\n"
    "-As An AppBar It Has An Simple Title\n\n"
    "-As An Body It Take The Source Code View Used To get Its Source From The Path Given\n\n";


List FlutterSyntaxe_CodeView_list =[
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
              CmpTitle(Title:"Load Code From Assets:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "SourceCodeView(\n"
                    " filePath:\n"
                    "  'Source.txt|dart...',\n"
                    ")\n",
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
              CmpTitle(Title:"Load Code From Url:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "SourceCodeView(\n"
                    " codeLinkPrefix:\n"
                    "  'https://...dart|txt...',\n"
                    ")",
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


String FlutterSyntaxe_CodeAndSourceView_Explanation=
    "-Main Is The Principal Method Used To Run FlutterSyntaxeCodeAndSourceView Class When The Page Is Loaded\n\n"
    "-Creating Class FlutterSyntaxeCodeAndSourceView,Stateless Widget As We Just Need To Show Code Run And The Code  ( No State Change )\n\n"
    "-As Flutter Is Based On Widgets,We Need To Create One\n\n"
    "-Creating A Material App That Allow Us To Use AppBar And Body\n\n"
    "-As An AppBar It Has An Simple Title\n\n"
    "-As An Body It Take The WidgetWithCodeView\n\n"
    "-child Used To Load The Class Given Result\n\n"
    "-sourceFilePath Used To Get The Code Text,You Can Still Load It By Url Using CodeLinkPrefix\n\n";


List FlutterSyntaxe_CodeAndSourceView_list =[
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
              CmpTitle(Title:"Load From Assets:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "WidgetWithCodeView(\n"
                    " child:ClassRun(),\n"
                    " filePath:\n"
                    "  'Source.txt|dart...',\n"
                    ")\n",
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
              CmpTitle(Title:"Load From Url:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "WidgetWithCodeView(\n"
                    " child:ClassRun(),\n"
                    " codeLinkPrefix:\n"
                    "  'https://...txt|dart...',\n"
                    ")\n",
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