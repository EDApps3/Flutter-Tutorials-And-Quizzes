import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


var Admob_Intro_CompList =[
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
              CmpTitle(Title:"What Is Admob?",),
              Divider(),
              CmpSubTitle(SubTitle:"Global Ad Network Used To Monetize Applications.",),
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
              CmpSubTitle(
                SubTitle:
                "1-Heading To https://apps.admob.com/\n"
                "2-Login If You Already Have An Account,Register If You Don't\n"
                "3-Now Creating App\n",
              ),
              Image.asset("Images/Ad1.PNG"),
              CmpSubTitle(SubTitle: "\n4-If Your App Published Then Press Yes,If No Press No And Fill The Name And The Platform\n",),
              Image.asset("Images/Ad2.PNG"),
              CmpSubTitle(SubTitle:"\n5-App Created,App ID Is Very Important\n",),
              Image.asset("Images/Ad3.PNG"),
              CmpSubTitle(SubTitle:"\n6-Heading To Manifest\n",),
              Image.asset("Images/Ad10.PNG"),
              CmpSubTitle(SubTitle:"\n7-Add Meta Data To Manifest\nNote:Put Your App Id Into The Value\n",),
              Image.asset("Images/Ad11.PNG"),
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
              CmpTitle(Title:"Load Plugin:",),
              Divider(),
              CmpSubTitle(SubTitle: "We Need To Add Plugin Into Yaml Dependecies\n",),
              Image.asset("Images/Ad12.PNG"),
              CmpSubTitle(SubTitle: "\nDont Forget To Get Packages!\n"
                  "\n\nNow Finally We Have To Import In Our Code:\n"
                  "import 'package:admob_flutter/admob_flutter.dart';\n",),

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

String Admob_Banner_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(AdmobBannerRun) To Be Runned\n\n"
    "-This Class Is Statefull Widget As Banner Will Keep Reloading Ads\n\n"
    "-First Creating Main Class AdmobBannerRun And Set Its Main State\n\n"
    "-Secondly Creating Class _AdmobBannerRunState That Extend Its State From Its Main AdmobBannerRun\n\n"
    "-When The App Is Runned It Will Initialize Its State And Initialize Its Admob Using Its App Is So Ads Can Run\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Allow Us To Use Scaffold And Set The Theme To Light\n\n"
    "-Scaffold Allow Us To Use AppBar And Bottom AppBar And Body\n\n"
    "-The AppBar Have Simple Title\n\n"
    "-The Bottom AppBar Having An Container Its Color Set To White And Hold A Banner Initialized By Its BannerID,Its Size And Finally The Listener To See If The Banner Loaded Or There Is A Fail\n\n"
    "-Body Contain A Simple Centered Text\n\n";

List Admob_Banner_list =[
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
              CmpTitle(Title:"Creating Banner Ad Unit:",),
              Divider(),
              CmpSubTitle(SubTitle:"Enter the App And Press Ad Unit Then Select Banner\n",),
              Image.asset("Images/Ad4.PNG"),
              CmpSubTitle(SubTitle:"Setting Banner Name\n",),
              Image.asset("Images/Ad6.PNG"),
              CmpSubTitle(SubTitle:"\nNow Banner Created:\n1.Represent AppID\n2.Represent BannerID\n",),
              Image.asset("Images/Ad7.PNG"),
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
              CmpSubTitle(
                SubTitle:
                      "The Class Is Statefull Widget As The Banner Will Keep Changing So We Need To Check Its State\n\n"
                      "In App Initalize State We Need To Initialize Our Admob App Id:\n"
                      "Note:Place AppIdNumbers In AppID\n",
              ),
              CmpCode(
                CodeTxt:
                    "\n@override\n"
                    "void initState() {\n"
                    "  super.initState();\n\n"
                    "  Admob.initialize('AppID');\n"
                    "}\n\n",
              ),
              CmpSubTitle(
                SubTitle:
                "\n\nNow We Are Ready To Deploy The Banner Whenever We Want!\n\n",
              ),
              CmpCode(
                CodeTxt:
                    "\nAdmobBanner(\n"
                    " adUnitId:'BannerID',\n"
                    " adSize:AdmobBannerSize.BANNER,\n"
                    " listener:\n"
                    " (AdmobAdEvent event,Map<String,dynamic> args){\n"
                    "  if(event==AdmobAdEvent.loaded){\n"
                    "   print('Banner Loaded');\n"
                    "  }\n"
                    "  else if(event==AdmobAdEvent.failedToLoad){\n"
                    "   print('Banner Failed To Load');\n"
                    "  }\n"
                    " }\n"
                    ")\n",
              )

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


String Admob_Interstitial_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(AdmobInterstitialRun) To Be Runned\n\n"
    "-This Class Is Statefull Widget As Interstitial Will Keep Reloading Ads\n\n"
    "-First Creating Main Class AdmobInterstitialRun And Set Its Main State\n\n"
    "-Secondly Creating Class _AdmobInterstitialState That Extend Its State From Its Main AdmobInterstitialRun\n\n"
    "-Creating Instance Variable Of AdmobInterstitial That Will Represent The Ad\n\n"
    "-Creating Method That Will Load The Ad createAdvert That Take InterstitialId,And The Listener To Check The Loading Progress,When Loaded We are Showing The Ad To The User,When Failed We are Trying To Reload An Ad,If Closed We Clean The Ad\n\n"
    "-When The App Is Runned It Will Initialize Its State And Initialize Its Admob Using Its App Is So Ads Can Run And It Create An Ad That Will Be Shown When Page Is Loaded And Ad Loaded Too\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Allow Us To Use Scaffold And Set The Theme To Light\n\n"
    "-Scaffold Allow Us To Use AppBar And Body\n\n"
    "-The AppBar Have Simple Title\n\n"
    "-Body Contain A Simple Centered RaisedButton When Clicked It load An Ad,And As We Said in CreateAdvert When Ad Loaded Will Be Shown!\n\n";


List Admob_Interstitial_list =[
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
              CmpTitle(Title:"Creating Interstitial Ad Unit:",),
              Divider(),
              CmpSubTitle(SubTitle:"Enter the App And Press Ad Unit Then Select Interstitial\n",),
              Image.asset("Images/Ad5.PNG"),
              CmpSubTitle(SubTitle:"Setting Interstitial Name\n",),
              Image.asset("Images/Ad8.PNG"),
              CmpSubTitle(SubTitle:"\nNow Interstitial Created:\n1.Represent AppID\n2.Represent InterstitialID\n",),
              Image.asset("Images/Ad9.PNG"),
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
              CmpSubTitle(
                SubTitle:
                "The Class Is Statefull Widget As The Interstitial Will Keep Changing So We Need To Check Its State\n\n"
                    "In App Initalize State We Need To Initialize Our Admob App Id,And Load The Interstitial So We Can Show It Whenever We Want!\n"
                    "Note:Place AppIdNumbers In AppID\n",
              ),
              CmpCode(
                CodeTxt:
                "\n@override\n"
                    "void initState() {\n"
                    "  super.initState();\n\n"
                    "  Admob.initialize('AppID');\n"
                    "  _admobInterstitial=createAdvert();\n"
                    "  _admobInterstitial.load();\n"
                    "}\n\n",
              ),
              CmpSubTitle(
                SubTitle:
                "\n\nNoting That _admobInterstitial Is A Variable Of An AdmobInterstitial That We Need To Create In Class That Extend The Main State!\n\n",
              ),
              CmpCode( CodeTxt: "\n AdmobInterstitial _admobInterstitial;\n",),
              CmpSubTitle(
                  SubTitle:
                  "\n\nNoting That Also createAdvert Used To Create An Interstital And Show It When Loaded!\n\n",
              ),
              CmpCode( CodeTxt:
              "\nAdmobInterstitial createAdvert(){\n"
                  " return AdmobInterstitial(\n"
                  "  adUnitId:'InterstitialID',\n"
                  "  listener:\n"
                  "   (AdmobAdEvent event ,Map<String,dynamic>args){\n"
                  "   if(event==AdmobAdEvent.loaded){\n"
                  "    print('Interstitial Loaded');\n"
                  "     _admobInterstitial.show();\n"
                  "   }\n"
                  "   else  if(event==AdmobAdEvent.closed){\n"
                  "    _admobInterstitial.dispose();\n"
                  "   }\n"
                  "   else  if(event==AdmobAdEvent.failedToLoad){\n"
                  "    print('Interstitial Failed');\n"
                  "    _admobInterstitial.load();\n"
                  "   }\n"
                  "  },\n"
                  " );\n"
                  "}\n",
              ),
              CmpSubTitle(
                SubTitle:
                "\n\nFinally To Show The Interstitial: \n\n",
              ),
              CmpCode( CodeTxt:
              "\n _admobInterstitial.load();\n",
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
