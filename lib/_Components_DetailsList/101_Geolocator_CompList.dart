import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';
import 'package:get/get.dart';
import '../AppSoundPlay.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Courses/CmpWebView.dart';

var GeolocatorGlobal =ListTile(
    leading:Image.asset("Images/Dart_Logo.png"),
    title:Text("Geolocator",),
    subtitle:Text("Tap Here To See The Official Documentation Provided On This Widget!",),
    onTap:(){
      PlayTapSound();
      Get.to(
      CmpWebViewPage(
        Title:"Geolocator",
        GoUrl:"https://pub.dev/packages/geolocator",
      )
      );
    },
);

List Geolocator_OffDoc=[
  SizedBox(height:10),
  GeolocatorGlobal,
];




String Geolocator_Explanation=
    "-main Is The Principal Method Used To Run AnimatedBackground1 Class On Start\n\n"
    "-Creating Class AnimatedBackground1,Statefull Widget , Create State Needed\n\n"
    "-Creating State Class AnimatedBackground1State That Extend Its Main State From The Main Class AnimatedBackground1\n\n"
    "-initState Loaded Once Page Loaded And Initialize Page State\n\n"
    "-Creating ParticlesOption Variable Particles With Options Given...\n\n"
    "-As Flutter Is Based On Widgets We Need To Create One\n\n"
    "-Returning Material App That Take As Home Scaffold That Allow Using Body And AppBar\n\n"
    "-As An AppBar Taking Simple Text\n\n"
    "-As An Body Taking AnimatedBackground That Take Behavior The Particle That We Have Created ,VSync To Play Animation And Taking As A Child ListView Where It Have Srollable Elements...\n\n";

List Geolocator_list =[
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
              CmpTitle(Title:"What Is Geolocator?",),
              Divider(),
              CmpSubTitle(
                SubTitle:
                 "A Flutter geolocation plugin which provides easy access to platform specific location services\n"
                 "Features\n"
                 "-Get the current location of the device\n"
                 "-Get the last known location\n"
                 "-Get continuous location updates\n"
                 "-Check if location services are enabled on the device\n"
                 "-Calculate the distance (in meters) between two geocoordinates\n"
                ),
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
              Image.asset("Images/Geolocator.PNG",),
              CmpSubTitle(SubTitle:"\n\nDon't Forget To Get Packages!",),
              CmpSubTitle(SubTitle:"\n\nWe Need To Import:\nimport 'package:geolocator/geolocator.dart';",),
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
              CmpTitle(Title:"Defining Variables To Store Value Within:",),
              Divider(),
              CmpCode(
                CodeTxt:
                 "String CurLat;\n"
                 "String CurLon;\n"
                 "String LKPLat;\n"
                 "String LKPLon;\n"
                 "String PosChangeLon;\n"
                 "String PosChangeLat;\n"
                 "double distanceInMetersCurLKP;\n",
              ),
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
              CmpTitle(Title:"Getting Current Position:",),
              Divider(),
              CmpCode(
                CodeTxt:
                 "GetCurrentPos() async{\n"
                 " Position position = await Geolocator().getCurrentPosition(\n"
                 "  desiredAccuracy: LocationAccuracy.high\n"
                 " );\n"
                 " CurLat=position.latitude.toString();\n"
                 " CurLon=position.longitude.toString();\n"
                 "}\n",
              ),
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
              CmpTitle(Title:"Getting Last Known Position:",),
              Divider(),
              CmpCode(
                CodeTxt:
                 "GetLastKnownPos() async{\n"
                 " Position position = await Geolocator().getLastKnownPosition(\n"
                 "  desiredAccuracy: LocationAccuracy.high\n"
                 " );\n"
                 " LKPLat=position.latitude.toString();\n"
                 " LKPLon=position.longitude.toString();\n"
                 "}\n",
              ),
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
              CmpTitle(Title:"Getting Change Position:",),
              Divider(),
              CmpCode(
                CodeTxt:
                 "GetChangePos() async{\n"
                 " var geolocator = Geolocator();\n"
                 " var locationOptions = LocationOptions(\n"
                 "  accuracy: LocationAccuracy.high,\n"
                 "  distanceFilter: 10\n"
                 " );\n"
                 " StreamSubscription<Position> positionStream = geolocator.getPositionStream(locationOptions).listen(\n"
                 "  (Position position) {\n"
                 "   if(position!=null){\n"
                 "    PosChangeLat= position.latitude.toString();\n"
                 "    PosChangeLon= position.longitude.toString();\n"
                 "   }\n"
                 " });\n"
                 "}\n",
              ),
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
              CmpTitle(Title:"Getting Change Position:",),
              Divider(),
              CmpCode(
                CodeTxt:
                 "Future<void> DistanceBtw() async {\n"
                 " distanceInMetersCurLKP = await Geolocator().distanceBetween(\n"
                 "  double.parse(CurLat),\n"
                 "  double.parse(LKPLat),\n"
                 "  double.parse(CurLat),\n"
                 "  double.parse(LKPLon),\n"
                 " );\n"
                 "}\n",
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




