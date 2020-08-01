import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';




List Production_AppName_CompList =[
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
              CmpTitle(Title:"Getting Started",),
              Divider(),
              CmpSubTitle(SubTitle:"\n1-Open AndroidManifest\nHead To Your Root Of Your Project > android > app > src > main > AndroidManifest.xml\n",),
              Image.asset("Images/AppName1.PNG"),
              CmpSubTitle(SubTitle:"\n2-Change The Name At label\n",),
              Image.asset("Images/AppName2.PNG"),
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


List Production_AppIcon_CompList =[
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
              CmpTitle(Title:"Getting Started",),
              Divider(),
              CmpSubTitle(SubTitle:"\n1-Head To https://appicon.co/",),
              CmpSubTitle(SubTitle:"\n2-Select The Image Then Press Generate\n",),
              Image.asset("Images/AppIcon1.PNG"),
              CmpSubTitle(SubTitle:"\n3-Assets Will be Downloaded\n",),
              Image.asset("Images/AppIcon2.PNG"),
              CmpSubTitle(SubTitle:"\n4-Needed Assets From RAR\n",),
              Image.asset("Images/AppIcon3.PNG"),
              CmpSubTitle(SubTitle:"\n5-Copy Them To Root Of Project > android > app > src > main > res  \n",),
              Image.asset("Images/AppIcon4.PNG"),
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


List Production_AppSign_CompList =[
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
              CmpTitle(Title:"Why Sign App?",),
              Divider(),
              CmpSubTitle(SubTitle:"\nTo publish on the Play Store, you need to give your app a digital signature.Even Updating The App Will Require The Key Sign So Make Sure To Keep The Key With You,If Lost You Can Still Contact Google...\n",),
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
              CmpTitle(Title:"Getting Started",),
              Divider(),
              CmpSubTitle(SubTitle:"\n1-Make Sure Java Installed Before Starting\n",),
              CmpSubTitle(SubTitle:"\n2-Creating A Folder To Store Key Whithin,Create A Folder KeyStore At C:",),
              Image.asset("Images/AppSign1.PNG"),
              CmpSubTitle(SubTitle:"\n3-Open Your Cmd And Head To Your Java jre bin And Run The Following Command And Use Your Own information (Image Scrollable)\n",),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child:
                  Image.asset(
                      "Images/AppSign2.PNG",
                    width:450,
                    height:450,
                  ),
              ),
              CmpSubTitle(SubTitle:"\n4-Here Is the Created key\n",),
              Image.asset("Images/AppSign3.PNG"),
              CmpSubTitle(SubTitle:"\n5-In Android Create new File key.properties\n",),
              Image.asset("Images/AppSign5.PNG"),
              CmpSubTitle(SubTitle:"\n6-Open This File And Set Your Information Appearing In Green As Set In Keytool",),
              Image.asset("Images/AppSign6.PNG"),
              CmpSubTitle(SubTitle:"\n7-Head To Build.gradle root > android > app > build.gradle\n",),
              Image.asset("Images/AppSign7.PNG"),
              CmpSubTitle(SubTitle:"\n8-Add The Following Before android {...} (Image Scrollable)\n",),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child:
                  Image.asset(
                      "Images/AppSign8.PNG",
                    width:450,
                    height:450,
                  ),
              ),
              CmpSubTitle(SubTitle:"\n9-Add signingConfigs{..} Before buildTypes And Change buildTypes From .debug To .release (Image Scrollable)\n",),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child:
                  Image.asset(
                      "Images/AppSign9.PNG",
                    width:450,
                    height:450,
                  ),
              ),

            ]
        ),
      ),
    ),
  ),
];




List Production_AppBuild_CompList =[
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
              CmpTitle(Title:"Building The Apk",),
              Divider(),
              CmpSubTitle(SubTitle:"\n1-Run flutter build apk \n(Image Scrollable)\n",),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child:
                  Image.asset(
                      "Images/AppBuild.PNG",
                    width:450,
                    height:200,
                  ),
              ),
            ]
        ),
      ),
    ),
  ),
];


