import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


void main() {
  runApp(NavSMSRun());
}

class NavSMSRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "Navigation SMS",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("Navigation SMS"),
        ),
        body:
            Center(
              child:RaisedButton(
                child:
                Text(
                  "Send SMS!",
                ),
                onPressed:_launchUrl,
              ),

            ),

          ),
    );
  }

  _launchUrl() async{
    const SMS="sms:+96176404762";

    if(await canLaunch(SMS)){
      await launch(SMS);
    }
    else{
      throw 'Could Not Send SMS!';
    }

  }

}










