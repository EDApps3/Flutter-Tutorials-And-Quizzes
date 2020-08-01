import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';
import 'package:get/get.dart';
import '../AppSoundPlay.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Courses/CmpWebView.dart';

var AnimatedBackgroundGlobal =ListTile(
    leading:Image.asset("Images/Dart_Logo.png"),
    title:Text("Animated Background",),
    subtitle:Text("Tap Here To See The Official Documentation Provided On This Widget!",),
    onTap:(){
      PlayTapSound();
      Get.to(
      CmpWebViewPage(
        Title:"Animated Background",
        GoUrl:"https://pub.dev/packages/animated_background",
      )
      );
    },
);

List AnimatedBackground_OffDoc=[
  SizedBox(height:10),
  AnimatedBackgroundGlobal,
];




String AnimatedBackground_1_Explanation=
    "-main Is The Principal Method Used To Run AnimatedBackground1 Class On Start\n\n"
    "-Creating Class AnimatedBackground1,Statefull Widget , Create State Needed\n\n"
    "-Creating State Class AnimatedBackground1State That Extend Its Main State From The Main Class AnimatedBackground1\n\n"
    "-initState Loaded Once Page Loaded And Initialize Page State\n\n"
    "-Creating ParticlesOption Variable Particles With Options Given...\n\n"
    "-As Flutter Is Based On Widgets We Need To Create One\n\n"
    "-Returning Material App That Take As Home Scaffold That Allow Using Body And AppBar\n\n"
    "-As An AppBar Taking Simple Text\n\n"
    "-As An Body Taking AnimatedBackground That Take Behavior The Particle That We Have Created ,VSync To Play Animation And Taking As A Child ListView Where It Have Srollable Elements...\n\n";

List AnimatedBackground_1_list =[
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
              CmpTitle(Title:"What Is AnimatedBackground?",),
              Divider(),
              CmpSubTitle(SubTitle:"Animated Backgrounds for Flutter. Easily extended to paint whatever you want on the canvas.\n",),
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
              Image.asset("Images/AnimatedBackground.PNG",),
              CmpSubTitle(SubTitle:"\n\nDon't Forget To Get Packages!",),
              CmpSubTitle(SubTitle:"\n\nWe Need To Import:\nimport 'package:animated_background/animated_background.dart';",),
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

              CmpSubTitle(SubTitle:"1-Creating ParticleOptions:\n",),
              CmpCode(
                CodeTxt:
                 "ParticleOptions Particles = ParticleOptions(\n"
                 " baseColor: Colors.blueGrey,\n"
                 " spawnOpacity: 0.0,\n"
                 " opacityChangeRate: 0.25,\n"
                 " minOpacity: 0.1,\n"
                 " maxOpacity: 0.4,\n"
                 " spawnMinSpeed: 30.0,\n"
                 " spawnMaxSpeed: 70.0,\n"
                 " spawnMinRadius: 7.0,\n"
                 " spawnMaxRadius: 15.0,\n"
                 " particleCount: 50,\n"
                 ");\n",
              ),

              CmpSubTitle(SubTitle:"2-Adding Widget To Body:\n",),
              CmpCode(
                CodeTxt:
                 "AnimatedBackground(\n"
                 " behaviour: RandomParticleBehaviour(\n"
                 "  options: Particles\n"
                 " ),\n"
                 " vsync: this,\n"
                 " child://Widget\n"
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





String AnimatedBackground_2_Explanation=
    "-main Is The Principal Method Used To Run AnimatedBackground2 Class On Start\n\n"
    "-Creating Class AnimatedBackground2,Statefull Widget , Create State Needed\n\n"
    "-Creating State Class AnimatedBackground2State That Extend Its Main State From The Main Class AnimatedBackground2\n\n"
    "-initState Loaded Once Page Loaded And Initialize Page State\n\n"
    "-Creating ParticlesOption Variable BubbleParticles With Options Given...And Where Image Is Provided\n\n"
    "-As Flutter Is Based On Widgets We Need To Create One\n\n"
    "-Returning Material App That Take As Home Scaffold That Allow Using Body And AppBar\n\n"
    "-As An AppBar Taking Simple Text\n\n"
    "-As An Body Taking AnimatedBackground That Take Behavior The Particle That We Have Created ,VSync To Play Animation And Taking As A Child ListView Where It Have Srollable Elements...\n\n";

List AnimatedBackground_2_list =[
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
              CmpTitle(Title:"What Is AnimatedBackground?",),
              Divider(),
              CmpSubTitle(SubTitle:"Animated Backgrounds for Flutter. Easily extended to paint whatever you want on the canvas.\n",),
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
              Image.asset("Images/AnimatedBackground.PNG",),
              CmpSubTitle(SubTitle:"\n\nDon't Forget To Get Packages!",),
              CmpSubTitle(SubTitle:"\n\nWe Need To Import:\nimport 'package:animated_background/animated_background.dart';",),
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

              CmpSubTitle(SubTitle:"1-Creating ParticleOptions:\n",),
              CmpCode(
                CodeTxt:
                 "ParticleOptions Particles = ParticleOptions(\n"
                 " image:Image.asset('Images/Bubble.gif'),"
                 " baseColor: Colors.blueGrey,\n"
                 " spawnOpacity: 0.0,\n"
                 " opacityChangeRate: 0.25,\n"
                 " minOpacity: 0.1,\n"
                 " maxOpacity: 0.4,\n"
                 " spawnMinSpeed: 30.0,\n"
                 " spawnMaxSpeed: 70.0,\n"
                 " spawnMinRadius: 7.0,\n"
                 " spawnMaxRadius: 15.0,\n"
                 " particleCount: 50,\n"
                 ");\n",
              ),

              CmpSubTitle(SubTitle:"2-Adding Widget To Body:\n",),
              CmpCode(
                CodeTxt:
                 "AnimatedBackground(\n"
                 " behaviour: RandomParticleBehaviour(\n"
                 "  options: Particles\n"
                 " ),\n"
                 " vsync: this,\n"
                 " child://Widget\n"
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

