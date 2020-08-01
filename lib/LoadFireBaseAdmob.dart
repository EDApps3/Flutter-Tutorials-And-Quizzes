import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter_tutorials_and_quizzes/main.dart';
import 'package:admob_flutter/admob_flutter.dart';
import 'UserDataInfo.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

InterstitialAd MyinterstitialAd;
AdmobBanner    MyBanner;

const String testDevice = 'C0824EEB8BC13759DD074F008FB94448';

String AddAppID="ca-app-pub-1650436277039127~3083637146";
String AddBanID="NoAds",AddIntID="NoAds";
String  InterstitialCounter="16";


class AdmobData {
  String BannerID;
  String InterstitialID;
  String InterstitialCounter;

  AdmobData(
      this.BannerID,
      this.InterstitialID,
      this.InterstitialCounter,
  );

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'BannerID'            : BannerID,
      'InterstitialID'      : InterstitialID,
      'InterstitialCounter' : InterstitialCounter,
    };
    return map;
  }

  AdmobData.fromMap(Map<String, dynamic> map) {
    BannerID            = map['BannerID'];
    InterstitialID      = map['InterstitialID'];
    InterstitialCounter = map['InterstitialCounter'];
  }

}


void getAdmob() async {
  var url = 'https://httpfluttertest.000webhostapp.com/Flutter_FTQ/GetAdmob.php';
  http.Response response = await http.get(url);
  var maps = jsonDecode(response.body);
  print(response.body);
  List<AdmobData> AdmobDataArr = [];
   if (maps.length > 0) {
      AdmobDataArr.add(AdmobData.fromMap(maps[0]));
      AddBanID = AdmobDataArr[0].BannerID;
      AddIntID = AdmobDataArr[0].InterstitialID;
      InterstitialCounter = AdmobDataArr[0].InterstitialCounter;
   }
}


 const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    testDevices: testDevice != null ? <String>[testDevice] : null,
    keywords: <String>['foo', 'bar'],
    contentUrl: 'http://foo.com/bar.html',
    childDirected: true,
    nonPersonalizedAds: true,
);


void createMyBannerAd() {
  MyBanner=AdmobBanner(
    adUnitId:AddBanID,
    adSize:AdmobBannerSize.BANNER,
    listener: (AdmobAdEvent event , Map<String,dynamic > args){
      if(event==AdmobAdEvent.loaded){
        print("--->Banner Loaded");
      }
      else if(event==AdmobAdEvent.failedToLoad){
        print("--->Banner Failed To Load");
      }
    }
  );
}


InterstitialAd createMyInterstitialAd() {
  return InterstitialAd(
    adUnitId:AddIntID,
    targetingInfo: targetingInfo,
    listener: (MobileAdEvent event) {
      print("Interstitial $event");
    },
  );
}

void InitAd(){
  FirebaseAdMob.instance.initialize(appId:AddAppID);
  Admob.initialize(AddAppID);
}


Future<void> ShowMyAds() async {

  if(UID=="W7c6gejcz5eI5MEqMuWn"){
    AddBanID=BannerAd.testAdUnitId;
    AddIntID=InterstitialAd.testAdUnitId;
    InterstitialCounter="16";
  }
  
  print("Banner              -->  $AddBanID");
  print("Inters              -->  $AddIntID");
  print("InterstitialCounter -->  $InterstitialCounter");

   loadIntertitialAd++;
   print("AD $loadIntertitialAd");
   if(loadIntertitialAd>int.parse(InterstitialCounter) && AddIntID!="NoAds"){
    MyinterstitialAd = createMyInterstitialAd()..load()..show();
    loadIntertitialAd=0;
   }
}











