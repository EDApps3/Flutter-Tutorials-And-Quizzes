import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


var WebView_Intro_CompList =[
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
              CmpTitle(Title:"What Is WebView Plugin?",),
              Divider(),
              CmpSubTitle(SubTitle:"Plugin That Allow Flutter To Communicate With A Native WebView.",),
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
              Image.asset("Images/WebView.PNG"),
              CmpSubTitle(SubTitle:"\nTo Use We Need  To Import:\nimport 'package:flutter_webview_plugin/flutter_webview_plugin.dart';\n",),
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



String WebView_Simple_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(SimpleWebView) To Be Runned\n\n"
    "-This Class Is Statefull Widget To Detect Web Loaded Page And Display It\n\n"
    "-First Creating Main Class SimpleWebView And Set Its Main State\n\n"
    "-Secondly Creating Class _SimpleWebViewState That Extend Its State From Its Main SimpleWebView\n\n"
    "-When Page Is Opened We're Initializing Its State\n\n"
    "-When Page Is Closed Or Disposed We're Disposing Its State\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Allow Us To Use Scaffold\n\n"
    "-Scaffold Allow Us To Use AppBar And Body\n\n"
    "-The AppBar Have Simple Title\n\n"
    "-Body Contain Centered Layout Taking Column Centered To The Center Horizontally And Vertically\n\n"
    "-Column Elements Display Each On Row\n\n"
    "-First Row Take An Icon Having Size Set To 150(Width & Heihgt)\n\n"
    "-Second Row Taking A Raised Button Having As Value Go Now Text Set By Child,One Pressed Navigating The Navigator To Class Google page That Will Be Used To Set The WebView\n\n"
    "-Third Row Taking A Simple Text\n\n\n"
    "-Now Creating Class GooglePage Used To Fetch Url Into WebView,Stateless As State Will Be Detected In SimpleWebView Class\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Allow Us To Use Scaffold\n\n"
    "-Scaffold Allow Us To Use AppBar And Body\n\n"
    "-The AppBar Have Simple Title\n\n"
    "-Body Contain WebviewScaffold That Take:\n"
    " url:Link To Be Loaded\n"
    " withZoom: Allow Used To Zoom The Page Or No\n"
    " withLocalStorage:Previous Loaded page Will Load Faster\n\n"
    " hidden:Used To Show The Web When Fully Loaded\n\n"
    " initialChild:Used With hidden Set To True,While Web Being Loaded Show Loading Widget Par Example\n\n";


List WebView_Simple_list =[
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
                "WebviewScaffold(\n"
                " url:'https://google.com',\n"
                " withZoom: false,\n"
                " withLocalStorage: true,\n"
                " hidden:true,\n"
                " initialChild:Center(\n"
                "  child:Column(\n"
                "   children: <Widget>[\n"
                "    SizedBox(height:250,),\n"
                "    CircularProgressIndicator(),\n"
                "    SizedBox(height:5,),\n"
                "    Text('Loading...'),\n"
                "   ],\n"
                "  ),\n"
                " ),\n"
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

