import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter_tutorials_and_quizzes/main.dart';


const String testDevice = 'C0824EEB8BC13759DD074F008FB94448';
BannerAd MyBanner;
InterstitialAd MyinterstitialAd;


MobileAdTargetingInfo MytargetingInfo = MobileAdTargetingInfo(
  testDevices: testDevice != null ? <String>[testDevice] : null,
  keywords: <String>['foo', 'bar'],
  contentUrl: 'http://foo.com/bar.html',
  childDirected: true,
  nonPersonalizedAds: true,
);

BannerAd createMyBannerAd() {
  return BannerAd(
    adUnitId:AddBanID,
    size: AdSize.banner,
    targetingInfo: MytargetingInfo,
    listener: (MobileAdEvent event) {
      if(event==MobileAdEvent.failedToLoad){
        print("Banner Failed To Load,Load Another Again!\n");
        MyBanner..load();
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


void ShowMyAds(){
  FirebaseAdMob.instance.initialize(
      appId:AddAppID
  );
  MyBanner = createMyBannerAd()..load();
  if(loadAds>4){
    MyinterstitialAd = createMyInterstitialAd()..load()..show();
    loadAds=0;
  }
}






