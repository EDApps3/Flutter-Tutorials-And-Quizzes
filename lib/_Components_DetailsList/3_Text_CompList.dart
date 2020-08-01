

import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Courses/CmpWebView.dart';
import '../AppLang.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';
import 'package:get/get.dart';
import '../AppSoundPlay.dart';


var TextOffGlobal =ListTile(
    leading:Icon(Icons.title,size:65,),
    title:Text("Text Class",),
    subtitle:Text("Tap Here To See The Official Documentation Provided By Flutter Team On Text Widget!",),
    onTap:(){
      PlayTapSound();
      Get.to(
      CmpWebViewPage(
        Title:"Text Class",
        GoUrl:"https://api.flutter.dev/flutter/widgets/Text-class.html",
      )
      );
    },
  );


var TextOffDirection =ListTile(
    leading:Icon(Icons.title,size:65,),
    title:Text("Text Class",),
    subtitle:Text("Tap Here To See The Official Documentation Provided By Flutter Team On Text Widget!",),
    onTap:(){
      PlayTapSound();
      Get.to(
      CmpWebViewPage(
        Title:"Text Direction",
        GoUrl:"https://api.flutter.dev/flutter/widgets/Text/textDirection.html",
      )
      );
    },
  );


List Text_OffDoc_TextDirection=[
  SizedBox(height:10),
  TextOffGlobal,
  SizedBox(height:10),
  TextOffDirection,
];



var ToDoText1="We Need To Write A Simple Text That Flows From Left To Right And Appear in The Center Of The Body";
var ToDoText2="We Need To Write A Simple Text That Flows From Right To Left And Appear in The Center Of The Body";

/*
var TText1,TText2,TText3,TText4,TText5,TText6,TText7,TText8,TText9,TText10;

void TranslateTextCompList() async{
  TText1="Text Flows From Left To Right Example:English,French...";
  await TranslateWord(TText1).then((value){ TText1 =value; });
  await TranslateWord(TextDirection_ltr_Explanation).then((value){ TextDirection_ltr_Explanation =value; });


  TText2="Text Flows From Right To Left Example:Arabic,Hebrew...";
  await TranslateWord(TText2).then((value){ TText2 =value; });
  await TranslateWord(TextDirection_rtl_Explanation).then((value){ TextDirection_rtl_Explanation =value; });

  await TranslateWord(ToDoText1).then((value){ ToDoText1 =value; });
  await TranslateWord(ToDoText2).then((value){ ToDoText2 =value; });

}

*/


String TextDirection_ltr_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(TextDirection_ltr_Run) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Print A Text (No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Contain A Scaffold That Allow Us To Create The Body Of The Page (All Widgets That Appear)\n\n"
    "-As We Need The Text Centered We Put Center Layout\n\n"
    "-Now We Need To Create Text That Take As a First Parameter Value To Be Shown And He is An Child Of His Parent Center\n\n"
    "-Finaly Setting His Direction\n\n";


List TextDirection_ltr_list =[
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
              CmpTitle(Title:"TextDirection ltr",),
              Divider(),
              CmpSubTitle(SubTitle:"Text Flows From Left To Right Example:English,French...",),
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
                    "Text(\n"
                    " 'Text_Needed_To_Show',\n"
                    " textDirection:\n"
                    "   TextDirection.ltr,\n"
                    ")\n",
              ),
            ]
        ),
      ),
    ),
  ),
];


//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------

String TextDirection_rtl_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(TextDirection_rtl_Run) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Print A Text (No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Contain A Scaffold That Allow Us To Create The Body Of The Page (All Widgets That Appear)\n\n"
    "-As We Need The Text Centered We Put Center Layout\n\n"
    "-Now We Need To Create Text That Take As a First Parameter Value To Be Shown And He is An Child Of His Parent Center\n\n"
    "-Finaly Setting His Direction\n\n";


List TextDirection_rtl_list =[
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
              CmpTitle(Title:"TextDirection rtl",),
              Divider(),
              CmpSubTitle(SubTitle:"Text Flows From Right To Left Example:Arabic,Hebrew...",),
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
                "Text(\n"
                    " 'Text_Needed_To_Show',\n"
                    " textDirection:\n"
                    "   TextDirection.rtl,\n"
                    ")\n",
              ),
            ]
        ),
      ),
    ),
  ),
];


//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------

String TextColor_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(TextColorRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Print A Red Text (No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Contain A Scaffold That Allow Us To Create The Body Of The Page (All Widgets That Appear)\n\n"
    "-As We Need The Text Centered We Put Center Layout\n\n"
    "-Now We Need To Create Text That Take As a First Parameter Value To Be Shown And He is An Child Of His Parent Center\n\n"
    "-Now To Set His Color We Have To Create An TextStyle\n\n"
    "-Inside The Text Style We can Style The Text And One Of Them Is The Color!\n\n";


List TextColor_list =[
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
              CmpTitle(Title:"Text Color",),
              Divider(),
              CmpSubTitle(SubTitle:"Change Text Color ( red , orange , yellow ... )",),
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
                    "Text(\n"
                    " 'Text_Needed_To_Show',\n"
                    "  style:TextStyle(\n"
                    "    color:Colors.teal,\n"
                    "  ),\n"
                    ")\n"
              ),
            ]
        ),
      ),
    ),
  ),
];


//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------

String TextBold_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(TextBoldRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Print A Bold Text (No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Contain A Scaffold That Allow Us To Create The Body Of The Page (All Widgets That Appear)\n\n"
    "-As We Need The Text Centered We Put Center Layout\n\n"
    "-Now We Need To Create Text That Take As a First Parameter Value To Be Shown And He is An Child Of His Parent Center\n\n"
    "-Now To Make Text Bold We Have To Create An TextStyle\n\n"
    "-Inside The Text Style We can Set Text To Bold fontWeight(Bold)!";


List TextBold_list =[
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
              CmpTitle(Title:"Text Bold",),
              Divider(),
              CmpSubTitle(SubTitle:"Turn Text To Bold",),
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
                      "Text(\n"
                      " 'Text_Needed_To_Show',\n"
                      " style: TextStyle (\n"
                      "  fontWeight:FontWeight.bold,\n"
                      " ),\n"
                      ")\n",
              ),
            ]
        ),
      ),
    ),
  ),
];


//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------

String TextItalic_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(TextItalicRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Print An Italic Text (No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Contain A Scaffold That Allow Us To Create The Body Of The Page (All Widgets That Appear)\n\n"
    "-As We Need The Text Centered We Put Center Layout\n\n"
    "-Now We Need To Create Text That Take As a First Parameter Value To Be Shown And He is An Child Of His Parent Center\n\n"
    "-Now To Set text Ti Italic We Have To Create An TextStyle\n\n"
    "-Inside The Text Style We can Set Text To Italic fontStyle(italic)";


List TextItalic_list =[
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
              CmpTitle(Title:"Text Italic",),
              Divider(),
              CmpSubTitle(SubTitle:"Turn Text To Italic",),
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
                    "Text(\n"
                    " 'Text_Needed_To_Show',\n"
                    " style:TextStyle(\n"
                    "   fontStyle: FontStyle.italic,\n"
                    " ),\n"
                    ")\n"
              ),
            ]
        ),
      ),
    ),
  ),
];


//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------

String TextUnderline_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(TextUnderlineRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Print An Underline Text (No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Contain A Scaffold That Allow Us To Create The Body Of The Page (All Widgets That Appear)\n\n"
    "-As We Need The Text Centered We Put Center Layout\n\n"
    "-Now We Need To Create Text That Take As a First Parameter Value To Be Shown And He is An Child Of His Parent Center\n\n"
    "-Now To Set Text Underlined  We Have To Create An TextStyle\n\n"
    "-Inside The Text Style We can Set The Text To Underlined TextDecoration(underline)!\n\n";



List TextUnderline_list =[
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
              CmpTitle(Title:"Underline Text",),
              Divider(),
              CmpSubTitle(SubTitle:"Turn Text Underlined",),
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
                      "Text(\n"
                      " 'Text_Needed_To_Show',\n"
                      " style: TextStyle (\n"
                      "  decoration:TextDecoration.underline,\n"
                      " ),\n"
                      ")"
              ),
            ]
        ),
      ),
    ),
  ),
];


//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------


String TextLineThrough_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(TextThroughRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Print An Line Through Text (No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Contain A Scaffold That Allow Us To Create The Body Of The Page (All Widgets That Appear)\n\n"
    "-As We Need The Text Centered We Put Center Layout\n\n"
    "-Now We Need To Create Text That Take As a First Parameter Value To Be Shown And He is An Child Of His Parent Center\n\n"
    "-Now To Set Text Line Through We Have To Create An TextStyle\n\n"
    "-Inside The Text Style We can Set The Line Through TextDecoration(lineThrough)";



List TextLineThrough_list =[
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
              CmpTitle(Title:"Text Line Through",),
              Divider(),
              CmpSubTitle(SubTitle:"Turn Text Into Line Through",),
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
                      "Text(\n"
                      " 'Text_Needed_To_Show',\n"
                      "  style: TextStyle (\n"
                      "   decoration:TextDecoration.lineThrough,\n"
                      "  ),\n"
                      ")",
              ),
            ]
        ),
      ),
    ),
  ),
];


//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------



String TextOverLine_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(TextOverlineRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Print An overline Text (No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Contain A Scaffold That Allow Us To Create The Body Of The Page (All Widgets That Appear)\n\n"
    "-As We Need The Text Centered We Put Center Layout\n\n"
    "-Now We Need To Create Text That Take As a First Parameter Value To Be Shown And He is An Child Of His Parent Center\n\n"
    "-Now To Set Text OverLined We Have To Create An TextStyle\n\n"
    "-Inside The Text Style We can Set The Text To OverLine TextDecoration(overline)";



List TextOverLine_list =[
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
              CmpTitle(Title:"Text OverLine",),
              Divider(),
              CmpSubTitle(SubTitle:"Turn Text Into OverLine",),
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
                    "Text(\n"
                    " 'Text_Needed_To_Show',\n"
                    "  style:TextStyle (\n"
                    "   decoration:TextDecoration.overline,\n"
                    "  ),\n"
                    ")\n"
              ),
            ]
        ),
      ),
    ),
  ),
];


//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------


String TextFontSize_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(TextFontSizeRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Print A Text With Size 20 (No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Contain A Scaffold That Allow Us To Create The Body Of The Page (All Widgets That Appear)\n\n"
    "-As We Need The Text Centered We Put Center Layout\n\n"
    "-Now We Need To Create Text That Take As a First Parameter Value To Be Shown And He is An Child Of His Parent Center\n\n"
    "-Now To Set His Font Size We Have To Create An TextStyle\n\n"
    "-Inside The Text Style We can Set The Font Size fontSize:ValueNeeded";



List TextFontSize_list =[
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
              CmpTitle(Title:"Text Font Size",),
              Divider(),
              CmpSubTitle(SubTitle:"Change Text Font Size",),
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
                      "Text(\n"
                      " 'Text_Needed_To_Show',\n"
                      " style: TextStyle (\n"
                      "   fontSize: 20,\n"
                      " ),\n"
                      ")\n",
              ),
            ]
        ),
      ),
    ),
  ),
];


//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------


String TextShadow_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(TextShadowRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Print An Shadow Text (No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Contain A Scaffold That Allow Us To Create The Body Of The Page (All Widgets That Appear)\n\n"
    "-As We Need The Text Centered We Put Center Layout\n\n"
    "-Now We Need To Create Text That Take As a First Parameter Value To Be Shown And He is An Child Of His Parent Center\n\n"
    "-Now To Set His Shadow We Have To Create An TextStyle\n\n"
    "-Inside The Text Style We can Set Shadow\n\n"
    "-Text Can Have Multiple Shadows\n\n"
    "-Shadow Take Options : blurRadius , color , offset\n\n"
    "-blurRadius Set The Size Of The Blur\n\n"
    "-color Set The Color Of The Blur (Black Text With Red Blur)\n\n"
    "-offset Set The Blur Coordinaye X,Y Starting From The Center of The Text";



List TextShadow_list =[
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
              CmpTitle(Title:"Text Shadow",),
              Divider(),
              CmpSubTitle(SubTitle:"Set Shadow To A Text",),
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
                    "Text(\n"
                    " 'Text_Needed_To_Show',\n"
                    " style:TextStyle (\n"
                    "  shadows: [\n"
                    "   Shadow(\n"
                    "     blurRadius:10.0,\n"
                    "     color: Colors.orange,\n"
                    "     offset: Offset(2.0,2.0),\n"
                    "   ),\n"
                    "  ],\n"
                    " ),\n"
                    ")\n",
              ),
            ]
        ),
      ),
    ),
  ),
];


//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------


String TextFontFamily_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(TextFontFamilyRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Change Text Font Family (No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Contain A Scaffold That Allow Us To Create The Body Of The Page (All Widgets That Appear)\n\n"
    "-As We Need The Text Centered We Put Center Layout\n\n"
    "-Now We Need To Create Text That Take As a First Parameter Value To Be Shown And He is An Child Of His Parent Center\n\n"
    "-Now To Set His Font Family, fontFanily:'Font_Name' \n\n";


List TextFontFamily_list =[
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
              CmpSubTitle(SubTitle:"1-Heading To https://fonts.google.com/\n\n2-Search For Wanted Font Then Hit Search,Once Font Found Click On +\n\n",),
              Image.asset("Images/Font1.png"),
              CmpSubTitle(SubTitle:"\n3-Download The Font,Once The Download Is Done Choose The Wanted Style(regular , Bold , Italic ...)\n\n",),
              Image.asset("Images/Font2.png"),
              CmpSubTitle(SubTitle:"\n4-Now Adding New Directory(Folder) Called fonts Into Main Flutter Project\n\n",),
              Image.asset("Images/Font3.png"),
              CmpSubTitle(SubTitle:"\n5-Once Folder Added Drag And Drop Downloaded Font\n\n",),
              Image.asset("Images/Font4.png"),
              CmpSubTitle(SubTitle:"\n6-Finally Heading To yaml To Link The Font\n\n",),
              Image.asset("Images/Font5.png"),
              CmpSubTitle(SubTitle:"\n\nDon't Forget To Get Packages!\n\n",),
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
                      "Text(\n"
                      " 'Text_Needed_To_Show',\n"
                      " style:TextStyle(\n"
                      "   fontFamily: 'Raleway',\n"
                      "  ),\n"
                      ")\n"
              ),
            ]
        ),
      ),
    ),
  ),
];


//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------


String TextBgColor_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(TextBgColorRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Set Blue Background Color To The Text (No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Contain A Scaffold That Allow Us To Create The Body Of The Page (All Widgets That Appear)\n\n"
    "-As We Need The Text Centered We Put Center Layout\n\n"
    "-Now We Need To Create Text That Take As a First Parameter Value To Be Shown And He is An Child Of His Parent Center\n\n"
    "-Now To Set His Background Color We Have To Create An TextStyle\n\n"
    "-Inside The Text Style We can Set The Background Color Of  The Text backgroundColor:Colors.Color_Name";



List TextBgColor_list =[
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
              CmpTitle(Title:"Text Background Color:",),
              Divider(),
              CmpSubTitle(SubTitle:"Change Text Background Color",),
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
                    "Text(\n"
                    " 'Text_Needed_To_Show',\n"
                    "  style: TextStyle (\n"
                    "   backgroundColor:Colors.red,\n"
                    "  ),\n"
                    ")\n",
              ),
            ]
        ),
      ),
    ),
  ),
];

//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------


String TextRich_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(RichTextRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Print MultiStyle Text (No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Contain A Scaffold That Allow Us To Create The Body Of The Page (All Widgets That Appear)\n\n"
    "-As We Need The Text Centered We Put Center Layout\n\n"
    "-Rich Text is An Child Of Center So Its Position is In The Center\n\n"
    "-Now We Need To Create RichText That Take A Text\n\n"
    "-Text Take A TextSpan That Considered As A Line And In This Line We Will Create Multi Styled textSpan\n\n"
    "-Now Children We Can Divide Each Part (Word , More Than Word Inside one TextSpan)\n\n"
    "-Each TextSpan Is Consided a Part And Each Part Can Be Styled";



List TextRich_list =[
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
              CmpTitle(Title:"Rich Text:",),
              Divider(),
              CmpSubTitle(SubTitle:
                  "Widget Used To Display Text That Use Multiple Different Style on Same Line\nExample:\n"
                  "Hello World\n\n"
                  "1-Hello ->Font Size 20\n"
                  "  World ->Font Size 40\n\n"
                  "2-Hello ->Red Color\n"
                  "  World ->Blue Color\n",
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
              CmpTitle(Title:"TextSpan:",),
              Divider(),
              CmpSubTitle(SubTitle:
                  "Text Object That Can Be Created Inside RichText\nExample:\n"
                  "Hello World\n\n"
                  "Noting That We Need To Do:\n"
                  "Hello ->Font Size 20\n"
                  "World ->Font Size 40\n"
                  "Due To The Different Style We Have To Divide Words So:\n"
                  "Hello Is a TextSpan\n"
                  "World Is Another TextSpan\n"
                  "\n\nNow After Dividing We Can Set Each TextSpan Style!",
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
              CmpTitle(Title:"Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "RichText(\n"
                    " text:TextSpan(\n"
                    "  children:[\n"
                    "   TextSpan(\n"
                    "    text:'Text_To_Show'\n"
                    "    style:TextStyle(\n"
                    "      //Style Needed\n"
                    "    ),\n"
                    "   ),\n"
                    "   //You Can Keep Going And Insert More TextSpan\n"
                    "  ],\n"
                    " ),\n"
                    ")\n",
              ),
            ]
        ),
      ),
    ),
  ),
];


//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------

String TextAlignCenter_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(TextAlignCenterRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Center The Text (No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Contain A Scaffold That Allow Us To Create The Body Of The Page (All Widgets That Appear)\n\n"
    "-Now Creating A Container And Setting His Width To Match The Screen Width Having Text As His Child\n\n"
    "-Finaly Setting Align By TextAlign(center)";



List TextAlignCenter_list =[
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
              CmpTitle(Title:"Text Align Center",),
              Divider(),
              CmpSubTitle(SubTitle:"Align Text To The Center",),
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
                    "Text(\n"
                    " 'Text_Needed_To_Show',\n"
                    " textAlign:TextAlign.center,\n"
                    ")\n",
              ),
            ]
        ),
      ),
    ),
  ),
];

//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------


String TextAlignLeft_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(TextAlignLeftRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Left Side The Text (No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Contain A Scaffold That Allow Us To Create The Body Of The Page (All Widgets That Appear)\n\n"
    "-Now Creating A Container And Setting His Width To Match The Screen Width Having Text As His Child\n\n"
    "-Finaly Setting Align By TextAlign(left)";



List TextAlignLeft_list =[
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
              CmpTitle(Title:"Text Align Left",),
              Divider(),
              CmpSubTitle(SubTitle:"Align Text To The Left",),
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
                    "Text(\n"
                    " 'Text_Needed_To_Show',\n"
                    " textAlign:TextAlign.left,\n"
                    ")\n",
              ),
            ]
        ),
      ),
    ),
  ),
];

//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------


String TextAlignRight_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(TextAlignRightRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Right Side The Text (No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Contain A Scaffold That Allow Us To Create The Body Of The Page (All Widgets That Appear)\n\n"
    "-Now Creating A Container And Setting His Width To Match The Screen Width Having Text As His Child\n\n"
    "-Finaly Setting Align By TextAlign(right)";



List TextAlignRight_list =[
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
              CmpTitle(Title:"Text Align Right",),
              Divider(),
              CmpSubTitle(SubTitle:"Align Text To The Right",),
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
                "Text(\n"
                    " 'Text_Needed_To_Show',\n"
                    " textAlign:TextAlign.right,\n"
                    ")\n",
              ),
            ]
        ),
      ),
    ),
  ),
];

//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------


