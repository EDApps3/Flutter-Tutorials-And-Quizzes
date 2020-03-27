import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


void main() {
  runApp(NavEmailRun());
}

class NavEmailRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "Navigation Email",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("Navigation Email"),
        ),
        body:
            Center(
              child:RaisedButton(
                child:
                Text(
                  "Send Email!",
                ),
                onPressed:_launchUrl,
              ),

            ),

          ),
    );
  }

  _launchUrl() async{
    const Email="mailto:edapps.contact@gmail.com";

    if(await canLaunch(Email)){
      await launch(Email);
    }
    else{
      throw 'Could Not Send Email!';
    }

  }

}










