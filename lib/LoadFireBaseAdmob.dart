import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter_tutorials_and_quizzes/main.dart';


BannerAd MyBanner;
InterstitialAd MyinterstitialAd;

String AddAppID="ca-app-pub-1650436277039127~3083637146";
String AddBanID=BannerAd.testAdUnitId;
String AddIntID=InterstitialAd.testAdUnitId;

MobileAdTargetingInfo MytargetingInfo = MobileAdTargetingInfo(
  keywords: <String>['flutterio', 'flutterTutorials'],
  contentUrl: 'https://flutter.io',
  birthday:DateTime.now(),
  childDirected:false,
  designedForFamilies:false,
  gender:MobileAdGender.unknown,
  testDevices: <String>[]
);

BannerAd createMyBannerAd() {
  return BannerAd(
    adUnitId:AddBanID,
    size: AdSize.banner,
    targetingInfo: MytargetingInfo,
    listener: (MobileAdEvent event) {
      if(event==MobileAdEvent.failedToLoad){
        print("Banner Failed To Load,Load Another Again!\n");
        MyBanner..load()..show();
      }
      else if(event==MobileAdEvent.loaded){
        print("Banner Loaded,Must Show!\n");
        MyBanner..show();
      }

    },
  );
}

InterstitialAd createMyInterstitialAd() {
  return InterstitialAd(
    adUnitId:AddIntID,
    targetingInfo: MytargetingInfo,
    listener: (MobileAdEvent event) {
      print("Interstitial $event");
    },
  );
}

void InitAd(){
  FirebaseAdMob.instance.initialize(
      appId:AddAppID
  );
}


void ShowMyAds(){

  if(loadBannerAd>18){
    MyBanner = createMyBannerAd()..load();
    loadBannerAd=0;
  }

  if(loadIntertitialAd>11){
    MyinterstitialAd = createMyInterstitialAd()..load()..show();
    loadIntertitialAd=0;
  }
}






