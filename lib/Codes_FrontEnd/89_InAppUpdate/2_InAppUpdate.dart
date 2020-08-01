import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:package_info/package_info.dart';
import 'package:toast/toast.dart';
import 'package:url_launcher/url_launcher.dart';


void main() => runApp(InAppUpdate2Run());

class InAppUpdate2Run extends StatefulWidget {
  @override
  AppCheckForUpdateState createState() => AppCheckForUpdateState();
}

class AppCheckForUpdateState extends State<InAppUpdate2Run> {
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


  void Result(){
    if(MyAppVersion==AppPlayStoreVersion){
      Toast.show(
        "App Version Up To Data!",
         context,
         duration:5,
         textColor:Colors.white,
      );
      setState(() {
        UpdateAvailable=false;
      });
    }
    else{
      UpdateAvailable=true;
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
      var url = 'https://play.google.com/store/apps/details?id=edapps.com.flutter_tutorials_and_quizzes';
      http.Response response = await http.get(url);
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

  @override
  void initState() {
    super.initState();
    GetAppPlayStoreVersion();
    GetMyAppVersion();
  }

  @override
  void dispose() {
    super.dispose();
  }




  @override
  Widget build(BuildContext context) {

        _launchUrl() async{
    const url="https://play.google.com/store/apps/details?id=edapps.com.flutter_tutorials_and_quizzes";

    if(await canLaunch(url)){
      await launch(url);
    }
    else{
      throw 'Could Not Launch Url!';
    }
  }

    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        body:Container(
         width :MediaQuery.of(context).size.width,
         height:MediaQuery.of(context).size.height,
         child:SingleChildScrollView(child:Column(
           mainAxisAlignment:MainAxisAlignment.center,
           crossAxisAlignment:CrossAxisAlignment.center,
           children: <Widget>[

             Image.asset("Images/160x160_Flutter.png",width:160,height:160),

             Padding(
               padding: const EdgeInsets.all(18.0),
               child: Text(
                 "\nFor A Better Experience,We Need To Check If There Is An Update So You Can Get All New Updates Including Quizzes,Samples And Quizzess...\n",
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

             SizedBox(height:20,),

             Text(
               "Version At PlayStore:",
                style:TextStyle(
                   color:Colors.blue,
                   fontFamily:"RaleWay",
                   fontSize:15,
                 ),
              ),
             (AppPlayStoreVersion==null)?CircularProgressIndicator():Text("$AppPlayStoreVersion"),

             SizedBox(height:20,),

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
        ),
      ),
    );
  }
}