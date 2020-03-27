import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';



String Flex_Image_Explanation=
    "-main Is Principal Method Used To Run Class ImageFlexRun Once Program Runned\n\n"
    "-Creating ImageFlexRun Class,Stateless Because We Just Need To Flex No State Change\n\n"
    "-As Flutter Is Based On Widgets We Need To Create One\n\n"
    "-Creating A Material App That Grant Light Theme,Title\n\n"
    "-Taking As An Home Scafold That Allow Us To Set AppBar And Body\n\n"
    "-As An AppBar Taking A Title\n\n"
    "-As An Body Taking A Scrollable ListView To Avoid OverFlow\n\n"
    "-ListView Taking A Row(Elements Placed Into Columns) Aligned Horizontaly To The Center\n\n"
    "-Column 1 Taking Expanded Image\n\n"
    "-Column 2 Taking Rxpanded Image Flexed By 2\n\n"
    "-Column 3 Taking Expanded Image\n\n";


List Flex_Image_list =[
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
                    "Expanded(\n"
                    " flex: 2,\n"
                    " child:\n"
                    "  //Widget\n"
                    ")\n",
              ),

            ]
        ),
      ),
    ),
  ),
];

//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------



String Flex_Button_Explanation=
    "-main Is Principal Method Used To Run Class RaisedButtonFlexRun Once Program Runned\n\n"
    "-Creating ImageFlexRun Class,Stateless Because We Just Need To Flex No State Change\n\n"
    "-As Flutter Is Based On Widgets We Need To Create One\n\n"
    "-Creating A Material App That Grant Light Theme,Title\n\n"
    "-Taking As An Home Scafold That Allow Us To Set AppBar And Body\n\n"
    "-As An AppBar Taking A Title\n\n"
    "-As An Body Taking A Scrollable ListView To Avoid OverFlow\n\n"
    "-ListView Taking A Row(Elements Placed Into Columns) Aligned Horizontaly To The Center\n\n"
    "-Column 1 Taking Expanded RaisedButton\n\n"
    "-Column 2 Taking Rxpanded RaisedButton Flexed By 2 Having Lime Background Color\n\n"
    "-Column 3 Taking Expanded RaisedButton\n\n";


List Flex_Button_list =[
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
                "Expanded(\n"
                    " flex: 2,\n"
                    " child:\n"
                    "  //Widget\n"
                    ")\n",
              ),

            ]
        ),
      ),
    ),
  ),
];

//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------



String Flex_Advanced_Explanation=
    "-main Is Principal Method Used To Run Class AdvancedFlexRun Once Program Runned\n\n"
    "-Creating AdvancedFlexRun Class,Statefull Because Flex Will Change(Increasing + ),And Creating Its State\n\n"
    "-Creating State Class _AdvancedFlexRunState That Extends its Main Class From AdvancedFlexRun\n\n"
    "-Creating 3 Variable Each Represent Flex Start Value\n\n"
    "-When Page Is Initialized All Flex Var Set To 1\n\n"
    "-As Flutter Is Based On Widgets We Need To Create One\n\n"
    "-Creating A Material App That Grant Light Theme,Title\n\n"
    "-Taking As An Home Scafold That Allow Us To Set AppBar And Body\n\n"
    "-As An AppBar Taking A Title\n\n"
    "-As An Body Taking A Scrollable ListView To Avoid OverFlow\n\n"
    "-ListView Taking 2Rows(Elements Placed Into Columns) Aligned Horizontaly To The Center\n\n"
    "-Row 1 Take A Text\n\n"
    "-Row2 Take 3 Expanded Fitted Box,Each take Its FlexVariable When Taped Using GestureDetector Flex Will Increase\n\n";


List Flex_Advanced_list =[
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
                   "Expanded(\n"
                    " flex: 2,\n"
                    " child:\n"
                    "  //Widget\n"
                    ")\n",
              ),

            ]
        ),
      ),
    ),
  ),
];

//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------


