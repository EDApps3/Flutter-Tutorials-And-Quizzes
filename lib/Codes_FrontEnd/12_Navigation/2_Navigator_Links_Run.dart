import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


void main() {
  runApp(NavLinksRun());
}

class NavLinksRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "Launch Url",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("Launch Url"),
        ),
        body:
            Center(
              child:RaisedButton(
                child:
                Text(
                  "Get This App On PlayStore!",
                ),
                onPressed:_launchUrl,
              ),

            ),
          ),
    );
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










