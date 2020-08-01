import 'package:flutter/material.dart';
import 'SettingPage.dart';
import 'AuthCheck.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:package_info/package_info.dart';
import 'package:http/http.dart' as http;
import 'main.dart';



class UpdateReminderUI extends StatefulWidget {
  AuthCheckState parent;
  UpdateReminderUI(this.parent);

  @override
  UpdateReminderUIState createState() => new UpdateReminderUIState();
}

class UpdateReminderUIState extends State<UpdateReminderUI> {
  String DataTxt;
  String AppPlayStoreVersion;
  String MyAppVersion;
  PackageInfo PI=PackageInfo(
    appName    :  'Unknown',
    packageName:  'Unknown',
    version    :  'Unknown',
    buildNumber:  'Unknown',
  );
  bool UpdateAvailable=false;


  Future<void> Result()  async {
    int MyAppVersInt    =int.parse(MyAppVersion.split('.')[2]);
    int AppStoreVersInt =int.parse(AppPlayStoreVersion.split('.')[2]);

    if(MyAppVersInt>=AppStoreVersInt){
      setState(() {
        UpdateAvailable=false;
      });
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
    if (PopupBool != false) {
     GetAppPlayStoreVersion();
     GetMyAppVersion();
    }
  }

 
 

  Widget build(BuildContext context) {
    return (UpdateAvailable)?ClipRRect(
      borderRadius:BorderRadius.circular(30.0), 
      child:Card(
        color:(ThemeResult=="Light")?Colors.cyan:CardBg.withOpacity(0.6),
        child:ListTile (
          leading:Image.asset("Images/Update.png",width:45,height:45,),
          title: Text (
            "Update",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Raleway",
            ),
          ),
          subtitle: Text (
            "An Update Is Available",
            style: TextStyle(
              fontFamily: "PT Mono",
              color:Colors.white,
            ),
          ),
          onTap:_launchUrl,
        ),
      ),
    ):SizedBox();
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

}



