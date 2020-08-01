import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



void main() => runApp(SnBarActRun());

class SnBarActRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title:
          Text ('SnackBar Action'),
        ),
        body:
          Center(
            child:
            FlatButton(
              child: Text("Get The App!"),
              onPressed: () {
                final SBarVar=SnackBar(
                  content: Text("Get It Now!"),
                  action: SnackBarAction(
                    label: "Download",
                    onPressed:_launchUrl,
                  ),
                );
                Scaffold.of(context).showSnackBar(SBarVar);
              },
            ),
          )
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


