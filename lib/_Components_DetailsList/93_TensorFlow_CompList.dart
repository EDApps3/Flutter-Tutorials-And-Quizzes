import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


String TensorFlow_Phone_Laptop_Explanation=
    "-Main Is The Principal Method Used To Run TensorFlowPhoneLaptop Class When The Page Is Loaded\n\n"
    "-Creating Class TensorFlowPhoneLaptop,Statefull Widget Due To Image Change Detection Change\n\n"
    "-Creating Variable ImageURI Representing Image File\n\n"
    "-Creating Variable result Json Returned From TFLIte\n\n"
    "-Creating String Variable Representing Image Path\n\n"
    "-And Finally Creating Label And Confidence Where There Value Takken From JSon Result\n\n"
    "-Creating Method That get Image From Camera getImageFromCamera Once Image Takken And Not Null(No Image Selected) Image Stored Into ImageURI With Its Path And The Method Will Classify The Image\n\n"
    "-Creating Method That get Image From Camera getImageFromGallery Once Image Takken And Not Null(No Image Selected) Image Stored Into ImageURI With Its Path And The Method Will Classify The Image\n\n"
    "-Creating Method ClassifyImage That use TFlite Loaded From Asset And Store Result In Variable output\n\n"
    "-As Flutter Is Based On Widgets,We Need To Create One\n\n"
    "-Creating A Material App That Take Scaffold Allowing Us To Use AppBar And Body\n\n"
    "-As An AppBar It Has An Simple Title\n\n"
    "-As An Body It Take A ListView That Take Texts And Image And Buttons!\n\n";


List TensorFlow_Phone_Laptop_list =[
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
              CmpTitle(Title:"What Is TensorFlow Lite",),
              Divider(),
              CmpSubTitle(SubTitle:"A Flutter plugin for accessing TensorFlow Lite API. Supports image classification, object detection (SSD and YOLO), Pix2Pix and Deeplab and PoseNet on both iOS and Android.\n",),
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
              Image.asset("Images/TFLite.PNG",),
              CmpSubTitle(SubTitle:"\n\nDon't Forget To Get Packages!",),
              CmpSubTitle(SubTitle:"\n\nWe Need To Import:\nimport 'package:tflite/tflite.dart';\n",),
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
              CmpTitle(Title:"Steps:",),
              Divider(),

              CmpSubTitle(SubTitle:"1-Head To Root > android > app > build.gradle And Add the Following:",),
              CmpCode(
                CodeTxt:
                 "aaptOptions {\n"
                 "  noCompress 'tflite'\n"
                 "  noCompress 'lite'\n"
                 "}\n"
              ),
              SizedBox(height:4,),
              Image.asset("Images/TF_1.PNG",),
              SizedBox(height:4,),
              Image.asset("Images/TF_2.PNG",),
              SizedBox(height:4,),

              CmpSubTitle(SubTitle:"1-Head To This Link And Press GetStarted",),
              CmpCode(CodeTxt:"https://teachablemachine.withgoogle.com/\n"),
              SizedBox(height:4,),
              Image.asset("Images/TF1.PNG",),

              CmpSubTitle(SubTitle:"2-Start Image Project:",),
              SizedBox(height:4,),
              Image.asset("Images/TF2.PNG",),

              CmpSubTitle(SubTitle:"3-Set Wanted Classes Name:",),
              SizedBox(height:4,),
              Image.asset("Images/TF3.PNG",),

              CmpSubTitle(SubTitle:"4-Get Laptop Class Image Ready And Upload Them:",),
              SizedBox(height:4,),
              Image.asset("Images/TF4.PNG",),
              SizedBox(height:4,),
              Image.asset("Images/TF5.PNG",),
              SizedBox(height:4,),

              CmpSubTitle(SubTitle:"5-Get Phone Class Image Ready And Upload Them:",),
              SizedBox(height:4,),
              Image.asset("Images/TF6.PNG",),
              SizedBox(height:4,),
              Image.asset("Images/TF7.PNG",),
              SizedBox(height:4,),

              CmpSubTitle(SubTitle:"6-Train Model:",),
              SizedBox(height:4,),
              Image.asset("Images/TF8.PNG",),

              CmpSubTitle(SubTitle:"7-Wait Train Model To Finish:",),
              SizedBox(height:4,),
              Image.asset("Images/TF9.PNG",),

              CmpSubTitle(SubTitle:"8-You Can Test Image Before Downloading It:",),
              SizedBox(height:4,),
              Image.asset("Images/TF10.PNG",),

              CmpSubTitle(SubTitle:"9-Downloading It As TensorFlow Lite:",),
              SizedBox(height:4,),
              Image.asset("Images/TF11.PNG",),

              CmpSubTitle(SubTitle:"10-Here Is The Downloaded Asset:",),
              SizedBox(height:4,),
              Image.asset("Images/TF12.PNG",),

              CmpSubTitle(SubTitle:"11-Create A Folder Asset > TensorFlow And Move Them:",),
              SizedBox(height:4,),
              Image.asset("Images/TF13.PNG",),

              CmpSubTitle(SubTitle:"12-Finally Linking Them To Yaml:",),
              SizedBox(height:4,),
              Image.asset("Images/TF14.PNG",),

            
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
              CmpCode(CodeTxt:"SystemNavigator.pop();\n"),
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
