import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


String AdvancePdfViewer_Asset_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(AdvancePdfViewerAsset) To Be Runned\n\n"
    "-This Class Is Statefull Widget To Detect When PDF Is Loaded\n\n"
    "-First Creating Main Class AdvancePdfViewerAsset And Set Its Main State\n\n"
    "-Secondly Creating Class _AdvancePdfViewerAssetState That Extend Its State From Its Main AdvancePdfViewerAsset\n\n"
    "-Creating Variable _isLoading And Set To True,Describe That PDF Still Loading,When False PDF is Loaded\n\n"
    "-Creating Variable document Describing PDF Document That We Need To Load\n\n"
    "-Method initState Initialize State Of The Page When Loaded And Call loadDocument Method\n\n"
    "-Creating loadDocument Method That Load PDF File From Given Asset Once Loaded isLoading Set To False\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating A Material App Taking  Scaffold Allowing Us To Use AppBar And The Body Of The Page\n\n"
    "-As An AppBar It Take A Simple Text As Title And Floating action FlatButton That Call Select Images Method\n\n"
    "-As An Body It Take Circular Loading If Pdf Still Not Loaded ,If Pdf Loaded PDFViewer Show Loaded PDF document File\n\n";

List AdvancePdfViewer_Asset_List =[
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
              CmpTitle(Title:"What Is Advance Pdf Viewer?",),
              Divider(),
              CmpSubTitle(SubTitle:"A Flutter Plugin For Handling PDF Files.",),
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
              Image.asset("Images/AdvancePdfViewer.PNG"),
              CmpSubTitle(SubTitle:"\nTo Use We Need  To Import:\nimport 'package:advance_pdf_viewer/advance_pdf_viewer.dart';\n",),
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
              CmpTitle(Title:"Add PDF To Asset:",),
              Divider(),
              CmpSubTitle(SubTitle:"Head To Yaml And Add:\n",),
              Image.asset("Images/PdfTestAsset.PNG"),
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

              CmpSubTitle(SubTitle:"1-Declaring Document Variable:\n",),
              CmpCode(CodeTxt:"PDFDocument document;\n\n",),

              CmpSubTitle(SubTitle:"2-Declaring Loading Variable(Optional):\n",),
              CmpCode(CodeTxt:"bool _isLoading = true;\n\n",),

              CmpSubTitle(SubTitle:"3-Method To Load Document:\n",),
              CmpCode(
                CodeTxt:
                "loadDocument() async {\n"
                " document = await PDFDocument.fromAsset('assets/PdfTest.pdf');\n"
                " setState(() => _isLoading = false);\n"
                "}\n\n",
              ),

              CmpSubTitle(SubTitle:"4-Widget At Body:\n",),
              CmpCode(
                CodeTxt:
                "_isLoading ?\n"
                " Center(child: CircularProgressIndicator())\n"
                " :PDFViewer(document: document,)\n\n",
              ),

              CmpSubTitle(SubTitle:"5-Call Method loadDocument When You Need To Show PDF:\n",),
              CmpCode(
                CodeTxt:
                "@override\n"
                " void initState() {\n"
                " super.initState();\n"
                " loadDocument();\n"
                "}\n\n",
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



String AdvancePdfViewer_Url_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(AdvancePdfViewerUrl) To Be Runned\n\n"
    "-This Class Is Statefull Widget To Detect When PDF Is Loaded\n\n"
    "-First Creating Main Class AdvancePdfViewerUrl And Set Its Main State\n\n"
    "-Secondly Creating Class _AdvancePdfViewerUrlState That Extend Its State From Its Main AdvancePdfViewerUrl\n\n"
    "-Creating Variable _isLoading And Set To True,Describe That PDF Still Loading,When False PDF is Loaded\n\n"
    "-Creating Variable document Describing PDF Document That We Need To Load\n\n"
    "-Method initState Initialize State Of The Page When Loaded And Call loadDocument Method\n\n"
    "-Creating loadDocument Method That Load PDF File From Given Url Once Loaded isLoading Set To False\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating A Material App Taking  Scaffold Allowing Us To Use AppBar And The Body Of The Page\n\n"
    "-As An AppBar It Take A Simple Text As Title And Floating action FlatButton That Call Select Images Method\n\n"
    "-As An Body It Take Circular Loading If Pdf Still Not Loaded ,If Pdf Loaded PDFViewer Show Loaded PDF document File\n\n";

List AdvancePdfViewer_Url_List =[
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
              CmpTitle(Title:"What Is Advance Pdf Viewer?",),
              Divider(),
              CmpSubTitle(SubTitle:"A Flutter Plugin For Handling PDF Files.",),
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
              Image.asset("Images/AdvancePdfViewer.PNG"),
              CmpSubTitle(SubTitle:"\nTo Use We Need  To Import:\nimport 'package:advance_pdf_viewer/advance_pdf_viewer.dart';\n",),
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

              CmpSubTitle(SubTitle:"1-Declaring Document Variable:\n",),
              CmpCode(CodeTxt:"PDFDocument document;\n\n",),

              CmpSubTitle(SubTitle:"2-Declaring Loading Variable(Optional):\n",),
              CmpCode(CodeTxt:"bool _isLoading = true;\n\n",),

              CmpSubTitle(SubTitle:"3-Method To Load Document:\n",),
              CmpCode(
                CodeTxt:
                "loadDocument() async {\n"
                    " document = await PDFDocument.fromURL('https://...pdf');\n"
                    " setState(() => _isLoading = false);\n"
                    "}\n\n",
              ),

              CmpSubTitle(SubTitle:"4-Widget At Body:\n",),
              CmpCode(
                CodeTxt:
                "_isLoading ?\n"
                    " Center(child: CircularProgressIndicator())\n"
                    " :PDFViewer(document: document,)\n\n",
              ),

              CmpSubTitle(SubTitle:"5-Call Method loadDocument When You Need To Show PDF:\n",),
              CmpCode(
                CodeTxt:
                "@override\n"
                    " void initState() {\n"
                    " super.initState();\n"
                    " loadDocument();\n"
                    "}\n\n",
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


