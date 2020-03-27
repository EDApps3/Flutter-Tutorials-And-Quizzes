import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


var FireBase_Admob_Intro_CompList =[
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
              CmpSubTitle(SubTitle: "We Need To Add Plugin Into Yaml Dependencies\n",),
              Image.asset("Images/FireBaseAdmob.PNG"),
              CmpSubTitle(SubTitle: "\nDont Forget To Get Packages!\n"
                  "\n\nNow Finally We Have To Import In Our Code:\n"
                  "import 'package:firebase_admob/firebase_admob.dart';\n",),

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
              CmpTitle(Title:"Link To FireBase:",),
              Divider(),
              CmpSubTitle(SubTitle: "Head To Project Settings And Select Integration Then Link To Admob \n",),
              Image.asset("Images/FBAds1.PNG"),
              Image.asset("Images/FBAds2.PNG"),
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
              CmpTitle(Title:"Add Member(Optional):",),
              Divider(),
              CmpSubTitle(SubTitle: "If Your Account Is Disabled Or Another Admob Account Need To Join You Head To Users And Permissions Then Add Member Email\n",),
              Image.asset("Images/FBAds3.PNG"),
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

String FireBase_Admob_Banner_Explanation=
    "-Creating testDevice Used To Show Banner In Debugging Mode,Without The Banner Will Not Show In Debug\n\n"
    "-Creating Banner Variable bannerAdTutorial Representing The Banner That Will Be Shown\n\n"
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(FireBaseAdmob_Banner) To Be Runned\n\n"
    "-This Class Is Statefull Widget As Banner Will Keep Reloading Ads And Detect That Loaded\n\n"
    "-First Creating Main Class FireBaseAdmob_Banner And Set Its Main State\n\n"
    "-Secondly Creating Class _FireBaseAdmob_Banner_State That Extend Its State From Its Main FireBaseAdmob_Banner\n\n"
    "-Creating targetingInfo Variable That Initialize Ads To Be Shown And The TestID Mobile\n\n"
    "-Creating Method createBannerAd Used To Create A Banner That Take UnitID,Options Initialized In targetingInfo And The Size And Finally Listener That Indicate If Banner Loaded Or Failed\n\n"
    "-When The App Is Runned It Will Initialize Its State And Initialize Its Admob Using Its App Is So Ads Can Run And It Create An Ad That Will Be Shown When Page Is Loaded And Ad Loaded Too\n\n"
    "-When The Page Is Disposed(Closed) We Dispose The BannerAd\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Allow Us To Use Scaffold And Set The Theme To Light\n\n"
    "-Scaffold Allow Us To Use AppBar And Body\n\n"
    "-The AppBar Have Simple Title\n\n"
    "-Body Contain 2 Buttons Each Call Its Method!\n\n"
    "-bannerAdTutorial?.dispose(); Used To Remove The Banner Noting That bannerAdTutorial Is The Variable Of The BannerAd\n\n ";


List FireBase_Admob_Banner_list =[
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
                "The Class Is Statefull Widget As The Banner Will Keep Changing So We Need To Check Its State\n\n"
                    "In App Initalize State We Need To Initialize Our Admob App Id,And Load The Interstitial So We Can Show It Whenever We Want!\n"
                    "Note:Place AppIdNumbers In AppID\n",
              ),
              CmpCode(
                CodeTxt:
                "\n@override\n"
                "void initState() {\n"
                " super.initState();\n"
                " FirebaseAdMob.instance.initialize(\n"
                "  appId:'ca-app-pub-2929818402070328~9361292964'\n"
                " );\n"
                " bannerAdTutorial = createBannerAd()..load();"
                "}\n\n",
              ),
              CmpSubTitle(
                SubTitle:
                "\n\nNoting That bannerAdTutorial Is A Variable Of An BannerAd \n\n",
              ),
              CmpCode( CodeTxt: "\n BannerAd bannerAdTutorial;\n",),

              CmpSubTitle(SubTitle: "\n\nSet Banner Options:\n\n",),
              CmpCode(CodeTxt:
              "\nstatic const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(\n"
              " testDevices: testDevice != null ? <String>[testDevice] : null,\n"
              " keywords: <String>['foo', 'bar'],\n"
              " contentUrl: 'http://foo.com/bar.html',\n"
              " childDirected: true,\n"
              " nonPersonalizedAds: true,\n"
              ");\n",
              ),



              CmpSubTitle(
                  SubTitle:
                  "\n\nNoting That Also createBannerAd Used To Create An BannerAd\n\n",
              ),
              CmpCode( CodeTxt:
              "\nBannerAd createBannerAd() {\n"
              " return BannerAd(\n"
              "  adUnitId:'ca-app-pub-3940256099942544/6300978111',\n"
              "  size: AdSize.banner,\n"
              "  targetingInfo: targetingInfo,\n"
              "  listener: (MobileAdEvent event) {\n"
              "   print('BannerAd event \$event');\n"
              "  },\n"
              " );\n"
              "}\n",
              ),
              CmpSubTitle(
                SubTitle:
                "\n\nTo Load The Banner: \n\n",
              ),
              CmpCode( CodeTxt:
              "\n bannerAdTutorial..load();\n",
              ),
              CmpSubTitle(
                SubTitle:
                "\n\nTo Show The Banner: \n\n",
              ),
              CmpCode( CodeTxt:
              "\n bannerAdTutorial..show();\n",
              ),
              CmpSubTitle(
                SubTitle:
                "\n\nTo Load And Show The Banner: \n\n",
              ),
              CmpCode( CodeTxt:
              "\n bannerAdTutorial..load()..show();\n",
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


String FireBase_Admob_Interstitial_Explanation=
    "-Creating testDevice Used To Show Interstitial In Debugging Mode\n\n"
    "-Creating Banner Variable FireBaseAdmob_Interstitial Representing The Interstitial That Will Be Shown\n\n"
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(FireBaseAdmob_Interstitial) To Be Runned\n\n"
    "-This Class Is Statefull Widget As Interstitial Will Keep Reloading Ads And Detect That Loaded\n\n"
    "-First Creating Main Class FireBaseAdmob_Interstitial And Set Its Main State\n\n"
    "-Secondly Creating Class _FireBaseAdmob_InterstitialState That Extend Its State From Its Main FireBaseAdmob_Interstitial\n\n"
    "-Creating targetingInfo Variable That Initialize Ads To Be Shown And The TestID Mobile\n\n"
    "-Creating Method createInterstitialAd Used To Create A Interstitial That Take UnitID,Options Initialized In targetingInfo And Finally Listener That Indicate If Banner Loaded Or Failed\n\n"
    "-When The App Is Runned It Will Initialize Its State And Initialize Its Admob Using Its App Is So Ads Can Run And It Create An Ad That Will Be Shown When Page Is Loaded And Ad Loaded Too\n\n"
    "-When The Page Is Disposed(Closed) We Dispose The InterstitialAd\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Allow Us To Use Scaffold And Set The Theme To Light\n\n"
    "-Scaffold Allow Us To Use AppBar And Body\n\n"
    "-The AppBar Have Simple Title\n\n"
    "-Body Contain Text And Button Each Call Create AdMethod With Show Method!\n\n";


List FireBase_Admob_Interstitial_list =[
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
                "The Class Is Statefull Widget As The Intertitial Will Keep Changing So We Need To Check Its State\n\n"
                    "In App Initalize State We Need To Initialize Our Admob App Id,And Load The Interstitial So We Can Show It Whenever We Want!\n"
                    "Note:Place AppIdNumbers In AppID\n",
              ),
              CmpCode(
                CodeTxt:
                "\n@override\n"
                    "void initState() {\n"
                    " super.initState();\n"
                    " FirebaseAdMob.instance.initialize(\n"
                    "  appId:'ca-app-pub-2929818402070328~9361292964'\n"
                    " );\n"
                    "}\n\n",
              ),
              CmpSubTitle(
                SubTitle:
                "\n\nNoting That _interstitialAdTutorial Is A Variable Of An InterstitialAd \n\n",
              ),
              CmpCode( CodeTxt: "\n InterstitialAd _interstitialAdTutorial;\n",),

              CmpSubTitle(SubTitle: "\n\nSet Interstitial Options:\n\n",),
              CmpCode(CodeTxt:
              "\nstatic const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(\n"
                  " testDevices: testDevice != null ? <String>[testDevice] : null,\n"
                  " keywords: <String>['foo', 'bar'],\n"
                  " contentUrl: 'http://foo.com/bar.html',\n"
                  " childDirected: true,\n"
                  " nonPersonalizedAds: true,\n"
                  ");\n",
              ),



              CmpSubTitle(
                SubTitle:
                "\n\nNoting That Also createInterstitialAd Used To Create An BannerAd\n\n",
              ),
              CmpCode( CodeTxt:
              "\nBannerAd createInterstitialAd() {\n"
                  "return InterstitialAd(\n"
                  " adUnitId:'ca-app-pub-3940256099942544/1033173712',\n"
                  " targetingInfo: targetingInfo,\n"
                  " listener: (MobileAdEvent event) {\n"
                  "  print('InterstitialAd event \$event');\n"
                  " },\n"
                  ");"
                  "}\n",
              ),
              CmpSubTitle(
                SubTitle:
                "\n\nTo Load The Interstitial: \n\n",
              ),
              CmpCode( CodeTxt:
              "\n createInterstitialAd()..load();\n",
              ),
              CmpSubTitle(
                SubTitle:
                "\n\nTo Show The Interstitial: \n\n",
              ),
              CmpCode( CodeTxt:
              "\n createInterstitialAd()..show();\n",
              ),
              CmpSubTitle(
                SubTitle:
                "\n\nTo Load And Show The Interstitial: \n\n",
              ),
              CmpCode( CodeTxt:
              "\n createInterstitialAd()..load()..show();\n",
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
