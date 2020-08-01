import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';


const String testDevice = 'YOUR_DEVICE_ID';
BannerAd bannerAdTutorial;

void main() {
  runApp(FireBaseAdmob_Banner());
}

class FireBaseAdmob_Banner extends StatefulWidget {
  @override
  _FireBaseAdmob_Banner_State createState() => _FireBaseAdmob_Banner_State();
}

class _FireBaseAdmob_Banner_State extends State<FireBaseAdmob_Banner> {

  static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    testDevices: testDevice != null ? <String>[testDevice] : null,
    keywords: <String>['foo', 'bar'],
    contentUrl: 'http://foo.com/bar.html',
    childDirected: true,
    nonPersonalizedAds: true,
  );


  BannerAd createBannerAd() {
    return BannerAd(
      adUnitId:"ca-app-pub-3940256099942544/6300978111",
      size: AdSize.banner,
      targetingInfo: targetingInfo,
      listener: (MobileAdEvent event) {
        print("BannerAd event $event");
      },
    );
  }


  @override
  void initState() {
    super.initState();
    FirebaseAdMob.instance.initialize(
        appId:"ca-app-pub-2929818402070328~9361292964"
    );
    bannerAdTutorial = createBannerAd()..load();
  }

  @override
  void dispose() {
    bannerAdTutorial?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('FireBase Admob Banner'),
        ),
        body:Container(
          width:double.infinity,
          height:double.infinity,
          child:Column(
            mainAxisAlignment:MainAxisAlignment.center,
            crossAxisAlignment:CrossAxisAlignment.center,
            children: <Widget>[

              Text("Internet Connection Required,Loading Might Take Time Depending On Your Internet Connection Speed!"),
              SizedBox(height:15,),

              SizedBox(
                width:double.infinity,
                child:RaisedButton(
                  color:Colors.blue,
                  child:Text(
                    "Load And Show A Banner",
                  ),
                  onPressed: () {
                    bannerAdTutorial ??= createBannerAd();
                    bannerAdTutorial..load()..show();
                  },
                ),
              ),

              SizedBox(
                width:double.infinity,
                child:RaisedButton(
                  color:Colors.blue,
                  child:Text(
                    "Remove Banner",
                  ),
                  onPressed: () {
                    bannerAdTutorial?.dispose();
                    bannerAdTutorial = null;
                  },
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}

