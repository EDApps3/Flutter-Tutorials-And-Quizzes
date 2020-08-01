import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/MainSplashScreen.dart';
import 'package:package_info/package_info.dart';
import 'package:toast/toast.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;
import 'package:wave/config.dart';
import 'package:wave/wave.dart';
import 'dart:math' as math;
import 'CheckConnection.dart';
import 'AppSoundPlay.dart';
import 'package:flutter_app_badger/flutter_app_badger.dart';
import 'package:flutter/services.dart';
import 'Codes_BackEnd/Backend_6_FireBase_Push_Notification/FireBasePushNotification.dart';
import 'LoadFireBaseAdmob.dart';




class Flutter_AppBadger {

  initPlatformState() async {
    try {
      bool res = await FlutterAppBadger.isAppBadgeSupported();
    } on PlatformException {
      print('Failed to get badge support.');
    }
  }

  void RemoveBadge(){
    initPlatformState();
    FlutterAppBadger.removeBadge();
  }

  void AddBadge(int count){
    initPlatformState();
    FlutterAppBadger.updateBadgeCount(count);
  }


}


class AppCheckForUpdate extends StatefulWidget {
  @override
  AppCheckForUpdateState createState() => AppCheckForUpdateState();
}


class AppCheckForUpdateState extends State<AppCheckForUpdate> {
  String DataTxt;
  String AppPlayStoreVersion;
  String MyAppVersion;
  PackageInfo PI=PackageInfo(
    appName    :  'Unknown',
    packageName:  'Unknown',
    version    :  'Unknown',
    buildNumber:  'Unknown',
  );
  bool UpdateAvailable;
  
  MaskFilter _blur;
  final List<MaskFilter> _blurs = [
    null,
    MaskFilter.blur(BlurStyle.normal, 10.0),
    MaskFilter.blur(BlurStyle.inner, 10.0),
    MaskFilter.blur(BlurStyle.outer, 10.0),
    MaskFilter.blur(BlurStyle.solid, 16.0),
  ];






  Future<void> Result()  async {
    int MyAppVersInt    =int.parse(MyAppVersion.split('.')[2]);
    int AppStoreVersInt =int.parse(AppPlayStoreVersion.split('.')[2]);

    if(MyAppVersInt>=AppStoreVersInt){
      Toast.show(
        "App Version Up To Date!",
         context,
         duration:1,
         gravity:Toast.BOTTOM,
         textColor:Colors.white,
      );
    }
    else{
      setState(() {
        UpdateAvailable=true;
      });
    }
  }


    Future<void> GetMyAppVersion() async {
      final PackageInfo info=await PackageInfo.fromPlatform();
      setState(() {
        PI=info;
        MyAppVersion=PI.version;
      });
    }

  Future<void> GetAppPlayStoreVersion() async {
      await getAdmob();
      var url = 'https://play.google.com/store/apps/details?id=edapps.com.flutter_tutorials_and_quizzes';
      http.Response response = await http.get(url).whenComplete((){
         CheckUserConnected();
         if(IsUserConnected==false){
          Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>MainSplashScreen()));
         }
      });
      if(IsUserConnected==true){
      setState(() {
        DataTxt=response.body;
      });
      String pat1 = 'Current Version</div><span class="htlgb"><div class="IQ1z0d"><span class="htlgb">';
      String pat2 = '</span>';
      int p1 = DataTxt.indexOf(pat1) + pat1.length;
      String f = DataTxt.substring(p1,DataTxt.length);
      int p2 = f.indexOf(pat2);
      AppPlayStoreVersion = f.substring(0, p2);
      Result();
      }
    }

  @override
  void initState() {
    InitAd();
    new Flutter_AppBadger().RemoveBadge();
    new PushNotificationsManager().init();
    new Flutter_AppBadger().initPlatformState();
    initPlayer();
    super.initState();
    CheckUserConnected();
     GetAppPlayStoreVersion();
     GetMyAppVersion();
  }

  @override
  void dispose() {
    super.dispose();
  }

    _launchUrl() async{
    const url="https://play.google.com/store/apps/details?id=edapps.com.flutter_tutorials_and_quizzes";

    if(await canLaunch(url)){
      await launch(url);
    }
    else{
      throw 'Could Not Launch Url!';
    }
  }


  @override
  Widget build(BuildContext context) {
    double SH=MediaQuery.of(context).size.height-550.0;


    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        body:SingleChildScrollView(child:Column(
          mainAxisAlignment:MainAxisAlignment.center,
          crossAxisAlignment:CrossAxisAlignment.center,
                children: <Widget>[



                  Transform.rotate(
                  angle:math.pi,
                  child:
                  Container(
                    width:double.infinity,
                    height:100, 
                    child:WaveWidget(
                      config:CustomConfig(
                        gradients: [
                          [Colors.yellow, Colors.teal],
                          [Colors.blue[800], Colors.tealAccent],
                          [Colors.teal, Colors.blue],
                          [Colors.blueAccent, Colors.yellow]
                        ],
                        durations: [35000, 19440, 10800, 6000],
                        heightPercentages: [0.20, 0.23, 0.25, 0.30],
                        blur: _blur,
                        gradientBegin: Alignment.bottomLeft,
                        gradientEnd: Alignment.topRight,
                      ),
                      size: Size(double.infinity, double.infinity),
                      waveAmplitude: 0,
                    ),
                  ),
                  ),
                  
                  Container(
                    height:450,
                    child:Column(
                      children: <Widget>[ 
                        
                       Image.asset("Images/160x160_Flutter.png",width:160,height:160),

             Padding(
               padding: const EdgeInsets.all(18.0),
               child: Text(
                 "\nKeeping The App Updated Will Allow You Getting All New Contents,Samples And Quizzes With App Inprovement\n",
                 textAlign:TextAlign.center,
                 style:TextStyle(
                   color:Colors.teal,
                   fontFamily:"RaleWay",
                   fontSize:15,
                 ),
               ),
             ),



             Text(
               "My App Current Version:",
                style:TextStyle(
                   color:Colors.blue,
                   fontFamily:"RaleWay",
                   fontSize:15,
                 ),
             ),
             (MyAppVersion==null)?CircularProgressIndicator():Text("$MyAppVersion"),

             SizedBox(height:10,),

             Text(
               "Version At PlayStore:",
                style:TextStyle(
                   color:Colors.blue,
                   fontFamily:"RaleWay",
                   fontSize:15,
                 ),
              ),
             (AppPlayStoreVersion==null)?CircularProgressIndicator():Text("$AppPlayStoreVersion"),

             SizedBox(height:2,),

             (UpdateAvailable==true)?
               FlatButton.icon(
                 onPressed:_launchUrl,
                 icon:Icon(Icons.update,color:Colors.blueGrey),
                 label:Text(
                   "Update Now!",
                    style:TextStyle(
                    color:Colors.blueGrey,
                    fontFamily:"RaleWay",
                   ),
                  )
               ):SizedBox(),


                      ],
                    ),
                  ),

                  
                  Container(
                    width:double.infinity,
                    height:SH, 
                    child:WaveWidget(
                      config:CustomConfig(
                         gradients: [
                          [Colors.yellow, Colors.teal],
                          [Colors.blue[800], Colors.tealAccent],
                          [Colors.teal, Colors.blue],
                          [Colors.blueAccent, Colors.yellow]
                        ],
                        durations: [35000, 19440, 10800, 6000],
                        heightPercentages: [0.20, 0.23, 0.25, 0.30],
                        blur: _blur,
                        gradientBegin: Alignment.bottomLeft,
                        gradientEnd: Alignment.topRight,
                      ),
                      size: Size(double.infinity, double.infinity),
                      waveAmplitude: 0,
                    ),
                  )

                ],
              )
      ),
      ),
      
    );
  }
}



