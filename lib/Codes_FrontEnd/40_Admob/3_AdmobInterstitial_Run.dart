import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(AdmobInterstitialRun());
}

class AdmobInterstitialRun extends StatefulWidget{
  AdmobInterstitialRun({Key Key}) : super (key: Key);
  _AdmobInterstitialState createState() => _AdmobInterstitialState();
}


class _AdmobInterstitialState extends State<AdmobInterstitialRun> {
  AdmobInterstitial _admobInterstitial;

  AdmobInterstitial createAdvert(){
    return AdmobInterstitial(
      adUnitId:"ca-app-pub-3940256099942544/1033173712",
      listener: (AdmobAdEvent event , Map<String,dynamic > args){
        if(event == AdmobAdEvent.loaded){
          print("--->Interstitial Loaded");
          _admobInterstitial.show();
        }
        else  if(event == AdmobAdEvent.closed){
          _admobInterstitial.dispose();
        }
        else  if(event == AdmobAdEvent.failedToLoad){
          print("--->Interstitial Failed To Loaded");
          _admobInterstitial.load();
        }
      },
    );
  }

  @override
  void initState() {
   super.initState();
   Admob.initialize("ca-app-pub-2929818402070328~9361292964");
   _admobInterstitial=createAdvert();
   _admobInterstitial.load();
  }

  @override
  Widget build(BuildContext context) {

    Admob.initialize("ca-app-pub-2929818402070328~9361292964");

    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "AdmobInterstitial",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("Admob Interstitial"),
        ),
        body:

          Center(
            child:
            RaisedButton(
              child:Text("Show Interstitial"),
              onPressed:(){
                _admobInterstitial.load();
              },
            ),
          )
      ),

    );
  }

}








