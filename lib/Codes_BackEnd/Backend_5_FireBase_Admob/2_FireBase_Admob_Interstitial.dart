import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';

const String testDevice = 'YOUR_DEVICE_ID';
InterstitialAd _interstitialAdTutorial;

void main() {
  runApp(FireBaseAdmob_Interstitial());
}


class FireBaseAdmob_Interstitial extends StatefulWidget {
  @override
  _FireBaseAdmob_InterstitialState createState() => _FireBaseAdmob_InterstitialState();
}

class _FireBaseAdmob_InterstitialState extends State<FireBaseAdmob_Interstitial> {
  static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    testDevices: testDevice != null ? <String>[testDevice] : null,
    keywords: <String>['foo', 'bar'],
    contentUrl: 'http://foo.com/bar.html',
    childDirected: true,
    nonPersonalizedAds: true,
  );


  InterstitialAd createInterstitialAd() {
    return InterstitialAd(
      adUnitId:"ca-app-pub-3940256099942544/1033173712",
      targetingInfo: targetingInfo,
      listener: (MobileAdEvent event) {
        print("InterstitialAd event $event");
      },
    );
  }


  @override
  void initState() {
    super.initState();
    FirebaseAdMob.instance.initialize(
        appId:"ca-app-pub-2929818402070328~9361292964"
    );
    _interstitialAdTutorial = createInterstitialAd()..load()..show();
  }

  @override
  void dispose() {
    _interstitialAdTutorial?.dispose();
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
                    "Load And Show A Intertitial",
                  ),
                  onPressed: () {
                    _interstitialAdTutorial?.dispose();
                    _interstitialAdTutorial = createInterstitialAd()..load()..show();
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


