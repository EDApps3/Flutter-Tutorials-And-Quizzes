import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


String PimpMyButton_DemoParticle_Explanation=
    "-Main Is The Principal Method Used To Run DemoParticleRun Class When The Page Is Loaded\n\n"
    "-Creating Class DemoParticleRun,Stateless As There Is No Data Change After The Page Is Loaded(No State Change)\n\n"
    "-As Flutter Is Based On Widgets,We Need To Create One\n\n"
    "-Creating A Material App That Take Scaffold Allowing Us To Use AppBar And Body\n\n"
    "-As An AppBar It Has An Simple Title\n\n"
    "-As An Body It Take A Centered Pimpedbutton Playing DemoParticle particle On A Floating Action Button,Once Pressed Controller Will Start Playing The Animation!\n\n";

List PimpMyButton_DemoParticle_list =[
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
              CmpTitle(Title:"What Is PimpMyButton",),
              Divider(),
              CmpSubTitle(SubTitle:"Provide Practicles Once Given Widget Is Pressed!\n",),
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
              Image.asset("Images/PimpMyButton.PNG",),
              CmpSubTitle(SubTitle:"\n\nDon't Forget To Get Packages!",),
              CmpSubTitle(SubTitle:"\n\nWe Need To Import:\nimport 'package:pimp_my_button/pimp_my_button.dart';\n",),
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
                 "PimpedButton(\n"
                 " particle:DemoParticle(),\n"
                 " pimpedWidgetBuilder: (context, controller) {\n"
                 "  return FloatingActionButton(\n"
                 "   child:Icon(Icons.android),\n"
                 "   onPressed: () {\n"
                 "    controller.forward(from: 0.0);\n"
                 "   },\n"
                 "  );\n"
                 " },\n"
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


String PimpMyButton_RectangleDemoParticle_Explanation=
    "-Main Is The Principal Method Used To Run RectangleDemoParticleRun Class When The Page Is Loaded\n\n"
    "-Creating Class RectangleDemoParticleRun,Stateless As There Is No Data Change After The Page Is Loaded(No State Change)\n\n"
    "-As Flutter Is Based On Widgets,We Need To Create One\n\n"
    "-Creating A Material App That Take Scaffold Allowing Us To Use AppBar And Body\n\n"
    "-As An AppBar It Has An Simple Title\n\n"
    "-As An Body It Take A Centered Pimpedbutton Playing RectangleDemoParticle particle On A Raised Button,Once Pressed Controller Will Start Playing The Animation!\n\n";

List PimpMyButton_RectangleDemoParticle_list =[
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
              CmpTitle(Title:"What Is PimpMyButton",),
              Divider(),
              CmpSubTitle(SubTitle:"Provide Practicles Once Given Widget Is Pressed!\n",),
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
              Image.asset("Images/PimpMyButton.PNG",),
              CmpSubTitle(SubTitle:"\n\nDon't Forget To Get Packages!",),
              CmpSubTitle(SubTitle:"\n\nWe Need To Import:\nimport 'package:pimp_my_button/pimp_my_button.dart';\n",),
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
                 "PimpedButton(\n"
                 " particle:RectangleDemoParticle(),\n"
                 " pimpedWidgetBuilder: (context, controller) {\n"
                 "  return FloatingActionButton(\n"
                 "   child:Icon(Icons.android),\n"
                 "   onPressed: () {\n"
                 "    controller.forward(from: 0.0);\n"
                 "   },\n"
                 "  );\n"
                 " },\n"
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



String PimpMyButton_RectangleDemo2Particle_Explanation=
    "-Main Is The Principal Method Used To Run RectangleDemo2ParticleRun Class When The Page Is Loaded\n\n"
    "-Creating Class RectangleDemo2ParticleRun,Stateless As There Is No Data Change After The Page Is Loaded(No State Change)\n\n"
    "-As Flutter Is Based On Widgets,We Need To Create One\n\n"
    "-Creating A Material App That Take Scaffold Allowing Us To Use AppBar And Body\n\n"
    "-As An AppBar It Has An Simple Title\n\n"
    "-As An Body It Take A Centered Pimpedbutton Playing RectangleDemo2Particle particle On A Raised Button,Once Pressed Controller Will Start Playing The Animation!\n\n";

List PimpMyButton_RectangleDemo2Particle_list =[
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
              CmpTitle(Title:"What Is PimpMyButton",),
              Divider(),
              CmpSubTitle(SubTitle:"Provide Practicles Once Given Widget Is Pressed!\n",),
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
              Image.asset("Images/PimpMyButton.PNG",),
              CmpSubTitle(SubTitle:"\n\nDon't Forget To Get Packages!",),
              CmpSubTitle(SubTitle:"\n\nWe Need To Import:\nimport 'package:pimp_my_button/pimp_my_button.dart';\n",),
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
                 "PimpedButton(\n"
                 " particle:RectangleDemo2Particle(),\n"
                 " pimpedWidgetBuilder: (context, controller) {\n"
                 "  return FloatingActionButton(\n"
                 "   child:Icon(Icons.android),\n"
                 "   onPressed: () {\n"
                 "    controller.forward(from: 0.0);\n"
                 "   },\n"
                 "  );\n"
                 " },\n"
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




String PimpMyButton_RectangleDemo3Particle_Explanation=
    "-Main Is The Principal Method Used To Run RectangleDemo3ParticleRun Class When The Page Is Loaded\n\n"
    "-Creating Class RectangleDemo3ParticleRun,Stateless As There Is No Data Change After The Page Is Loaded(No State Change)\n\n"
    "-As Flutter Is Based On Widgets,We Need To Create One\n\n"
    "-Creating A Material App That Take Scaffold Allowing Us To Use AppBar And Body\n\n"
    "-As An AppBar It Has An Simple Title\n\n"
    "-As An Body It Take A Centered Pimpedbutton Playing RectangleDemo3Particle particle On A Raised Button,Once Pressed Controller Will Start Playing The Animation!\n\n";



List PimpMyButton_RectangleDemo3Particle_list =[
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
              CmpTitle(Title:"What Is PimpMyButton",),
              Divider(),
              CmpSubTitle(SubTitle:"Provide Practicles Once Given Widget Is Pressed!\n",),
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
              Image.asset("Images/PimpMyButton.PNG",),
              CmpSubTitle(SubTitle:"\n\nDon't Forget To Get Packages!",),
              CmpSubTitle(SubTitle:"\n\nWe Need To Import:\nimport 'package:pimp_my_button/pimp_my_button.dart';\n",),
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
                 "PimpedButton(\n"
                 " particle:RectangleDemo3Particle(),\n"
                 " pimpedWidgetBuilder: (context, controller) {\n"
                 "  return FloatingActionButton(\n"
                 "   child:Icon(Icons.android),\n"
                 "   onPressed: () {\n"
                 "    controller.forward(from: 0.0);\n"
                 "   },\n"
                 "  );\n"
                 " },\n"
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