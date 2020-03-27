import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(AdmobBannerRun());
}

class AdmobBannerRun extends StatefulWidget{
  AdmobBannerRun({Key Key}) : super (key: Key);
  _AdmobBannerRunState createState() => _AdmobBannerRunState();

}


class _AdmobBannerRunState extends State<AdmobBannerRun> {

  @override
  void initState() {
   super.initState();
   Admob.initialize("ca-app-pub-2929818402070328~9361292964");
  }

  @override
  Widget build(BuildContext context) {
    Admob.initialize("ca-app-pub-2929818402070328~9361292964");
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "AdmobBanner",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("Admob Banner"),
        ),
          bottomNavigationBar:BottomAppBar(
            color:Colors.white,
            child:Container(
              child:
              AdmobBanner(
                  adUnitId:"ca-app-pub-3940256099942544/6300978111",
                  adSize:AdmobBannerSize.BANNER,
                  listener: (AdmobAdEvent event , Map<String,dynamic > args){
                    if(event==AdmobAdEvent.loaded){
                      print("--->Banner Loaded");
                    }
                    else if(event==AdmobAdEvent.failedToLoad){
                      print("--->Banner Failed To Load");
                    }
                  }
              ),
            ),
          ),
        body:

          Center(
            child:
              Text(
                "Banner Will Load,Make Sure You Are Connected To The Internet!"
              ),
          )
      ),

    );
  }

}








