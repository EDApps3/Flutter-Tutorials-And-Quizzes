import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


String AnimatedTextKit_TyperWriter_Explanation=
    "Soon!\n\n";


List AnimatedTextKit_TyperWriter_list =[
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
              CmpTitle(Title:"What Is Animated TextKit?",),
              Divider(),
              CmpSubTitle(SubTitle:"A flutter package which contains a collection of some cool and awesome text animations.",),
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
              CmpTitle(Title:"Getting Started:",),
              Divider(),
              CmpSubTitle(SubTitle:"We Need To Import Into The Yaml The Plugin:",),
              SizedBox(height: 16,),
              Image.asset("Images/AnimatedTextKit.PNG",),
              CmpSubTitle(SubTitle:"\n\nDon't Forget To Get Packages!",),
              CmpSubTitle(SubTitle:"\n\nWe Need To Import:\nimport 'package:animated_text_kit/animated_text_kit.dart';\n",),
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
                "SizedBox(\n"
                " width: MediaQuery.of(context).size.width,\n"
                " child: TypewriterAnimatedTextKit(\n"
                "  pause:Duration(seconds:1),\n"
                "  displayFullTextOnTap:true,\n"
                "  stopPauseOnTap:true,\n"  
                "  totalRepeatCount:3,\n"  
                "  onTap: () {\n"  
                "   //Do\n"  
                "  },\n"  
                "  text: [\n"
                "   'TyperWriter Animated',\n"
                "   'Text Kit Demo',\n"
                "   'Will Repeat 3 Times',\n"
                "   //You Can Add More\n"    
                "  ],\n"    
                "  textStyle: TextStyle("  
                "   fontSize: 20.0,\n"  
                "  ),\n"      
                "  textAlign: TextAlign.start,\n"  
                "  alignment: AlignmentDirectional.topStart\n"  
                " ),\n"  
                ")\n",
              ),
            ]
        ),
      ),
    ),
  ),
];

//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------


String AnimatedTextKit_Rotate_Explanation=
    "Soon!\n\n";


List AnimatedTextKit_Rotate_list =[
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
              CmpTitle(Title:"What Is Animated TextKit?",),
              Divider(),
              CmpSubTitle(SubTitle:"A flutter package which contains a collection of some cool and awesome text animations.",),
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
              CmpTitle(Title:"Getting Started:",),
              Divider(),
              CmpSubTitle(SubTitle:"We Need To Import Into The Yaml The Plugin:",),
              SizedBox(height: 16,),
              Image.asset("Images/AnimatedTextKit.PNG",),
              CmpSubTitle(SubTitle:"\n\nDon't Forget To Get Packages!",),
              CmpSubTitle(SubTitle:"\n\nWe Need To Import:\nimport 'package:animated_text_kit/animated_text_kit.dart';\n",),
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
                "Row(\n"
                " mainAxisAlignment:MainAxisAlignment.center,\n"
                " children: <Widget>[\n"
                "  Text(\n"
                "   'Flutter Is : ',\n"
                "   style: TextStyle(fontSize:25.0),\n"
                "  ),\n"  
                "  RotateAnimatedTextKit(\n"  
                "   isRepeatingAnimation:true,\n"
                "   duration:Duration(seconds:2),\n"
                "   onTap: () {\n"    
                "     //Do\n"    
                "   },\n"    
                "   text: [\n"
                "    'AWESOME',\n"
                "    'OPTIMISTIC',\n"
                "    'DIFFERENT'\n"
                "   ],\n"    
                "   textStyle: TextStyle(\n"
                "    fontSize: 25.0,\n"
                "    fontFamily: 'Horizon'\n"
                "   ),\n"    
                "   textAlign: TextAlign.start,\n"    
                "   alignment: AlignmentDirectional.topStart\n"    
                "  ),\n"    
                " ],\n"
                ")\n"
              ),
            ]
        ),
      ),
    ),
  ),
];


//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------


String AnimatedTextKit_Fade_Explanation=
    "Soon!\n\n";


List AnimatedTextKit_Fade_list =[
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
              CmpTitle(Title:"What Is Animated TextKit?",),
              Divider(),
              CmpSubTitle(SubTitle:"A flutter package which contains a collection of some cool and awesome text animations.",),
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
              CmpTitle(Title:"Getting Started:",),
              Divider(),
              CmpSubTitle(SubTitle:"We Need To Import Into The Yaml The Plugin:",),
              SizedBox(height: 16,),
              Image.asset("Images/AnimatedTextKit.PNG",),
              CmpSubTitle(SubTitle:"\n\nDon't Forget To Get Packages!",),
              CmpSubTitle(SubTitle:"\n\nWe Need To Import:\nimport 'package:animated_text_kit/animated_text_kit.dart';\n",),
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
                "SizedBox(\n"
                " width:MediaQuery.of(context).size.width,\n"
                " child: FadeAnimatedTextKit(\n"
                "  isRepeatingAnimation:true,\n"
                "  duration:Duration(seconds:3),\n"
                "  onTap: () {\n"  
                "   //Do\n"  
                "  },\n"  
                "  text: [\n"  
                "   'Fade 1...',\n"  
                "   'Fade 2...',\n"
                "   'Fade 3...',\n"    
                "   //You Can Add More\n"    
                "  ],\n"
                "  textStyle: TextStyle(\n"
                "   fontSize: 20.0,\n"  
                "   fontWeight: FontWeight.bold\n"      
                "  ),\n"      
                "  textAlign: TextAlign.center,\n"  
                "  alignment: AlignmentDirectional.center\n"  
                " ),\n"  
                ")\n"
              ),
            ]
        ),
      ),
    ),
  ),
];



//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------


String AnimatedTextKit_Scale_Explanation=
    "Soon!\n\n";


List AnimatedTextKit_Scale_list =[
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
              CmpTitle(Title:"What Is Animated TextKit?",),
              Divider(),
              CmpSubTitle(SubTitle:"A flutter package which contains a collection of some cool and awesome text animations.",),
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
              CmpTitle(Title:"Getting Started:",),
              Divider(),
              CmpSubTitle(SubTitle:"We Need To Import Into The Yaml The Plugin:",),
              SizedBox(height: 16,),
              Image.asset("Images/AnimatedTextKit.PNG",),
              CmpSubTitle(SubTitle:"\n\nDon't Forget To Get Packages!",),
              CmpSubTitle(SubTitle:"\n\nWe Need To Import:\nimport 'package:animated_text_kit/animated_text_kit.dart';\n",),
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
                "SizedBox(\n"
                " width:MediaQuery.of(context).size.width,\n"
                " child: ScaleAnimatedTextKit(\n"
                "  isRepeatingAnimation:true,\n"
                "   duration:Duration(seconds:3),\n"  
                "   onTap: () {\n"  
                "     //Do\n"  
                "   },\n"
                "   text: [\n"   
                "    'Flutter',\n"  
                "    'Dart',\n"    
                "    //You Can Add More\n"  
                "   ],\n"  
                "   textStyle: TextStyle(\n"  
                "    fontSize: 70.0,\n"  
                "    fontFamily: 'Canterbury'\n"
                "   ),\n"      
                "   textAlign: TextAlign.center,\n"  
                "   alignment: AlignmentDirectional.center\n"  
                "  ),\n"  
                ")\n"
              ),
            ]
        ),
      ),
    ),
  ),
];



//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------


String AnimatedTextKit_Colorize_Explanation=
    "Soon!\n\n";


List AnimatedTextKit_Colorize_list =[
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
              CmpTitle(Title:"What Is Animated TextKit?",),
              Divider(),
              CmpSubTitle(SubTitle:"A flutter package which contains a collection of some cool and awesome text animations.",),
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
              CmpTitle(Title:"Getting Started:",),
              Divider(),
              CmpSubTitle(SubTitle:"We Need To Import Into The Yaml The Plugin:",),
              SizedBox(height: 16,),
              Image.asset("Images/AnimatedTextKit.PNG",),
              CmpSubTitle(SubTitle:"\n\nDon't Forget To Get Packages!",),
              CmpSubTitle(SubTitle:"\n\nWe Need To Import:\nimport 'package:animated_text_kit/animated_text_kit.dart';\n",),
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
                "SizedBox(\n"
                " width: MediaQuery.of(context).size.width,\n"
                " child: ColorizeAnimatedTextKit(\n"
                "  isRepeatingAnimation:true,\n"
                "  onTap: () {\n"  
                "   //Do\n"
                "  },\n"  
                "  text: [\n"  
                "   'Flutter ',\n"  
                "   'Is Awesome',\n"    
                "   'And Very Easy',\n"    
                "  ],\n"    
                "  textStyle: TextStyle(\n"  
                "   color:Colors.blueAccent,\n"  
                "   fontSize: 30.0,\n"      
                "  ),\n"      
                "  colors: [\n"  
                "   Colors.teal,\n"  
                "   Colors.blue,\n"    
                "   Colors.deepPurpleAccent\n"    
                "  ],\n"    
                "  textAlign: TextAlign.center,\n"  
                "  alignment: AlignmentDirectional.center\n"  
                " ),\n"  
                ")\n"
              ),
            ]
        ),
      ),
    ),
  ),
];





//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------


String AnimatedTextKit_TextLiquidFill_Explanation=
    "Soon!\n\n";


List AnimatedTextKit_TextLiquidFill_list =[
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
              CmpTitle(Title:"What Is Animated TextKit?",),
              Divider(),
              CmpSubTitle(SubTitle:"A flutter package which contains a collection of some cool and awesome text animations.",),
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
              CmpTitle(Title:"Getting Started:",),
              Divider(),
              CmpSubTitle(SubTitle:"We Need To Import Into The Yaml The Plugin:",),
              SizedBox(height: 16,),
              Image.asset("Images/AnimatedTextKit.PNG",),
              CmpSubTitle(SubTitle:"\n\nDon't Forget To Get Packages!",),
              CmpSubTitle(SubTitle:"\n\nWe Need To Import:\nimport 'package:animated_text_kit/animated_text_kit.dart';\n",),
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
                "SizedBox(\n"
                " width:MediaQuery.of(context).size.width,\n"
                " child:TextLiquidFill(\n"
                "  text: 'LIQUID',\n"
                "  waveColor: Colors.white,\n"
                "  boxBackgroundColor: Colors.blue,\n"
                "  textStyle: TextStyle(\n"
                "   fontSize: 30.0,\n"
                "   fontWeight: FontWeight.bold,\n"  
                "  ),\n"  
                "  boxHeight:200.0,\n"
                " ),\n"
                ")\n"
              ),
            ]
        ),
      ),
    ),
  ),
];






//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------


String AnimatedTextKit_Typer_Explanation=
    "Soon!\n\n";


List AnimatedTextKit_Typer_list =[
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
              CmpTitle(Title:"What Is Animated TextKit?",),
              Divider(),
              CmpSubTitle(SubTitle:"A flutter package which contains a collection of some cool and awesome text animations.",),
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
              CmpTitle(Title:"Getting Started:",),
              Divider(),
              CmpSubTitle(SubTitle:"We Need To Import Into The Yaml The Plugin:",),
              SizedBox(height: 16,),
              Image.asset("Images/AnimatedTextKit.PNG",),
              CmpSubTitle(SubTitle:"\n\nDon't Forget To Get Packages!",),
              CmpSubTitle(SubTitle:"\n\nWe Need To Import:\nimport 'package:animated_text_kit/animated_text_kit.dart';\n",),
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
                "SizedBox(\n"
                " width: MediaQuery.of(context).size.width,\n"
                "  child: TyperAnimatedTextKit(\n"
                "   onTap: () {\n"
                "    //Do\n"
                "   },\n"
                "   text: [\n"
                "    'This Is An',\n"  
                "    'Writer Animated',\n"    
                "    'TextKit...',\n"    
                "   ],\n"    
                "   textStyle: TextStyle(\n"  
                "    fontSize: 30.0,\n"  
                "   ),\n"      
                "   textAlign: TextAlign.center,\n"  
                "   alignment: AlignmentDirectional.center\n"  
                "  ),\n"  
                ")\n"
              ),
            ]
        ),
      ),
    ),
  ),
];


