import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


String GrafPix_Icons_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(GrafPixIcon) To Be Runned\n\n"
    "-This Class Is Stateless Widget As There Is No State Change Just Showing Icons\n\n"
    "-Before Creating GrafPixIcon Class To Avoid Duplication A Class Will IconWithCode Will Be Created And Variable Passed Into Constructor Parameters\n\n"
    "-Creating IconWithCode Class Stateless Due To Just Showing Icon\n\n"
    "-Needed Variable IconWidget That Display Passed PixIcon,IconName To Display It As A Text\n\n"
    "-Those Varible Initialized Into Constructor That Must Have The Same Name Of The Class IconWithCode And Required\n\n"
    "-As Flutter Is Based On Widget A Widget Must Be Builded\n\n"
    "-Element Will be Placed Into SingleChildScrollView Scrolled Horizontally Due To The Big Text Code\n\n"
    "-Pix Icon And Text Passed Displayed Into Layouts(Row,Columns) Taking Passed Parameters From Main Class GrafPixIcon\n\n"
    "-Now Classs GrafPixIcon\n\n"
    "-Creating Matrial App That Allow Us To Set App Title Taking Scaffold As An Home\n\n"
    "-Scaffold Allow Us to Set AppBar And Body Of The Page\n\n"
    "-As An AppBar It Simple Title\n\n"
    "-As An Body It Take List View That Allow Scrolling And Avoid OverFlow Where It Element To Be Returned (SinglechildView With Layouts Containing Icons) Called By Constructor IconWithCode Passing Elements To Be Shown!\n\n\n\n ";


List GrafPix_Icons_List =[
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
              CmpTitle(Title:"What Is GrafPix?",),
              Divider(),
              CmpSubTitle(SubTitle:"Huge Collection Of Rectified Icons And Utilities.",),
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
              Image.asset("Images/GrafPixYaml.PNG"),
              CmpSubTitle(SubTitle:"\nTo Use We Need  To Import:\nimport 'package:grafpix/icons.dart';\n",),
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
              CmpCode(CodeTxt:"Icon(PixIcon.airplane)\n\n",),
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


String GrafPix_Loaders_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(GrafPixLoaders) To Be Runned\n\n"
    "-This Class Is Stateless Widget As There Is No State Change Just Showing Loaders\n\n"
    "-Before Creating GrafPixLoaders Class To Avoid Duplication A Class Will IconWithCode Will Be Created And Variable Passed Into Constructor Parameters\n\n"
    "-Creating IconWithCode Class Stateless Due To Just Showing Loaders\n\n"
    "-Needed Variable PixLoaderWidget That Display Passed PixLoader,PixLoaderName To Display It As A Text\n\n"
    "-Those Varible Initialized Into Constructor That Must Have The Same Name Of The Class IconWithCode And Required\n\n"
    "-As Flutter Is Based On Widget A Widget Must Be Builded\n\n"
    "-Element Will be Placed Into SingleChildScrollView Scrolled Horizontally Due To The Big Text Code\n\n"
    "-Pix Icon And Text Passed Displayed Into Layouts(Row,Columns) Taking Passed Parameters From Main Class GrafPixIcon\n\n"
    "-Now Classs GrafPixLoaders\n\n"
    "-Creating Matrial App That Allow Us To Set App Title Taking Scaffold As An Home\n\n"
    "-Scaffold Allow Us to Set AppBar And Body Of The Page\n\n"
    "-As An AppBar It Simple Title\n\n"
    "-As An Body It Take List View That Allow Scrolling And Avoid OverFlow Where It Element To Be Returned (SinglechildView With Layouts Containing Loaders) Called By Constructor IconWithCode Passing Elements To Be Shown!\n\n\n\n ";


List GrafPix_Loaders_List =[
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
              CmpTitle(Title:"What Is GrafPix?",),
              Divider(),
              CmpSubTitle(SubTitle:"Huge Collection Of Rectified Icons And Utilities.",),
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
              Image.asset("Images/GrafPixYaml.PNG"),
              CmpSubTitle(SubTitle:"\nTo Use We Need  To Import:\nimport 'package:grafpix/pixloaders/pix_loader.dart';\n",),
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
                "PixLoader(\n"
                " loaderType:LoaderType.Flashing,\n"
                " faceColor:Colors.deepPurple\n"
                "),\n"
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


String GrafPix_Buttons_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(GrafPixButtons) To Be Runned\n\n"
    "-This Class Is Stateless Widget As There Is No State Change Just Showing Button\n\n"
    "-Creating Class GrafPixButtons\n\n"
    "-As Flutter Is Based On Widget A Widget Must Be Builded\n\n"
    "-Creating Material App That Allow Us To Set App Title Taking Scaffold As An Home\n\n"
    "-Scaffold Allow Us to Set AppBar And Body Of The Page\n\n"
    "-As An AppBar It Simple Title\n\n"
    "-As An Body It Take Centered PixButton\n\n"
    "-PixButton Take Radius:Length Og The Line From The Center,Icon To Be Displayed,IconColor,Button Background Color,Twinkles That Allow Shine You Can Turn It Off By Setting It To False,And Shutter Line Covering Button Value\n\n"
    "-When Button Is Pressed Show A Dialog\n\n";


List GrafPix_Buttons_List =[
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
              CmpTitle(Title:"What Is GrafPix?",),
              Divider(),
              CmpSubTitle(SubTitle:"Huge Collection Of Rectified Icons And Utilities.",),
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
              Image.asset("Images/GrafPixYaml.PNG"),
              CmpSubTitle(SubTitle:"\nTo Use We Need  To Import:\n'package:grafpix/pixbuttons/radial.dart';\n",),
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
                  "PixButton(\n"
                  " radius:70.0,\n"
                  " icon:Icons.android,\n"
                  " iconColor:Colors.white,\n"
                  " backgroundColor:Colors.green,\n"
                  " shutter:0.6,\n"
                  " twinkles:true,\n"
                  " onPress:(){\n"
                  "  //Do\n"
                  " },\n"
                  ")\n"
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


String GrafPix_Medals_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(GrafPixMedals) To Be Runned\n\n"
    "-This Class Is Stateless Widget As There Is No State Change Just Showing Medals\n\n"
    "-Before Creating GrafPixMedals Class To Avoid Duplication A Class Will IconWithCode Will Be Created And Variable Passed Into Constructor Parameters\n\n"
    "-Creating IconWithCode Class Stateless Due To Just Showing Medals\n\n"
    "-Needed Variable PixMedalWidget That Display Passed Medal,PixMedalName To Display It As A Text\n\n"
    "-Those Varible Initialized Into Constructor That Must Have The Same Name Of The Class IconWithCode And Required\n\n"
    "-As Flutter Is Based On Widget A Widget Must Be Builded\n\n"
    "-Element Will be Placed Into SingleChildScrollView Scrolled Horizontally Due To The Big Text Code\n\n"
    "-Pix Medal And Text Passed Displayed Into Layouts(Row,Columns) Taking Passed Parameters From Main Class GrafPixMedals\n\n"
    "-Now Classs GrafPixMedals\n\n"
    "-Creating Matrial App That Allow Us To Set App Title Taking Scaffold As An Home\n\n"
    "-Scaffold Allow Us to Set AppBar And Body Of The Page\n\n"
    "-As An AppBar It Simple Title\n\n"
    "-As An Body It Take List View That Allow Scrolling And Avoid OverFlow Where It Element To Be Returned (SinglechildView With Layouts Containing Medals) Called By Constructor IconWithCode Passing Elements To Be Shown!\n\n\n\n ";



List GrafPix_Medals_List =[
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
              CmpTitle(Title:"What Is GrafPix?",),
              Divider(),
              CmpSubTitle(SubTitle:"Huge Collection Of Rectified Icons And Utilities.",),
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
              Image.asset("Images/GrafPixYaml.PNG"),
              CmpSubTitle(SubTitle:"\nTo Use We Need  To Import:\nimport 'package:grafpix/pixbuttons/medal.dart';\n",),
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
                  "PixMedal(\n"
                  " medalType:MedalType.Silver,\n"
                  " radius:70.0,\n"
                  " iconSize:60.0,\n"
                  " icon:Icons.wb_iridescent,\n"
                  "),\n"
              ),
            ]
        ),
      ),
    ),
  ),
];




