import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


var ContainerWaves_Intro_CompList =[
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
              CmpTitle(Title:"What Is Wave?",),
              Divider(),
              CmpSubTitle(SubTitle:"Widget For Displaying Waves With Custom Color,Duration,Floating And Blur Effect",),
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
              Image.asset("Images/Waves.PNG",),
              CmpSubTitle(SubTitle:"\n\nDon't Forget To Get Packages!",),
              CmpSubTitle(SubTitle:"\n\nWe Need To Import:\nimport 'package:wave/config.dart';\nimport 'package:wave/wave.dart';\n",),
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



String ContainerWaves_Explanation=
    "-Main Is The Principal Method Runned Once The Program Runned And Calling ContainerWaveRun Class\n\n"
    "-Creating ContainerWaveRun Class And Creating Its Main State\n\n"
    "-Creating State Class ContainerWaveState Extending The Main Class ContainerWaveRun\n\n"
    "-Creating MaskFilter Blur That Take Type And Radius,4 Parameter As Working On 4 Waves\n\n"
    "-Creating Widget As Flutter Is Based On Widgets That Take Scaffold\n\n"
    "-Scaffold Allow Us To Set AppBar And Body\n\n"
    "-As An AppBar It Take An Title\n\n"
    "-The Body Take A Container Having Max Width And Height 230 Taking Card\n\n"
    "-Card Divided Into 3 Rows To Set Text And Waves\n\n"
    "-First Row Taking Sized Box With Height 20\n\n"
    "-Second Row Taking A Text\n\n"
    "-Last Row Taking The Wave Expanded To Fill The Space Left\n\n"
    "-Custom Config Allow Us To Set Colors In gradiants,Duration,Start And End Point\n\n";


List ContainerWaves_list =[
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
              CmpTitle(Title:"Creating MaskFilter:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "MaskFilter _blur;\n"
                    " final List<MaskFilter> _blurs = [\n"
                    "  null,\n"
                    "  MaskFilter.blur(BlurStyle.normal,10.0),\n"
                    "  MaskFilter.blur(BlurStyle.inner,10.0),\n"
                    "  MaskFilter.blur(BlurStyle.outer,10.0),\n"
                    "  MaskFilter.blur(BlurStyle.solid,16.0),"
                    "];",
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
              CmpTitle(Title:"Wave Widget:",),
              Divider(),
              CmpCode(
                CodeTxt:
                "WaveWidget(\n"
                " config:CustomConfig(\n\n"

                "  gradients: [\n"
                "   [Colors.red,Color(0xEEF44336)],\n"
                "   [Colors.red[800],Color(0x77E57373)],\n"
                "   //More Needed Colors\n"
                "  ],\n\n"

                "  durations:[35000, 19440,],\n\n"

                "  heightPercentages: [0.20, 0.23,],\n\n"

                "  blur: _blur,\n"

                "  gradientBegin:\n"
                "   Alignment.bottomLeft,\n\n"

                "  gradientEnd:Alignment.topRight,\n\n"

                " ),\n\n"

                " backgroundColor:\n"
                "  Colors.deepPurpleAccent,\n\n"

                " size: Size(\n"
                "  double.infinity,\n"
                "  double.infinity,\n"
                " ),\n\n"

                " waveAmplitude: 0,\n\n"

                "),\n",
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
