import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


void main() {
  runApp(NavTelRun());
}

class NavTelRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "Navigation Tel",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("Navigation Tel"),
        ),
        body:
            Center(
              child:RaisedButton(
                child:
                Text(
                  "Call Me!",
                ),
                onPressed:_launchUrl,
              ),

            ),

          ),
    );
  }

  _launchUrl() async{
    const Tel="tel:+96176404762";

    if(await canLaunch(Tel)){
      await launch(Tel);
    }
    else{
      throw 'Could Not Call!';
    }

  }

}










