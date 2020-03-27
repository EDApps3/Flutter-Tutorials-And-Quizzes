import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(new LeftDrawerRun());
}


class LeftDrawerRun extends StatefulWidget {
  @override
  _LeftDrawerState createState() => new _LeftDrawerState();
}

class _LeftDrawerState extends State<LeftDrawerRun>{

  _launchUrl() async{
    const url="https://play.google.com/store/apps/details?id=edapps.com.flutter_tutorials_and_quizzes";

    if(await canLaunch(url)){
      await launch(url);
    }
    else{
      throw 'Could Not Launch Url!';
    }

  }

  _launchFb() async{
    const url="https://facebook.com/EDApps-104598497562080/";
    if(await canLaunch(url)){
      await launch(url);
    }
    else{
      throw 'Could Not Launch Url!';
    }
  }


  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:"LeftDrawer",
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        appBar: new AppBar(title: new Text("My Drawer App"),
          backgroundColor: Colors.redAccent,
        ),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new ListTile(
                  title: new Text("App On PlayStore"),
                  trailing: new Icon(Icons.arrow_forward_ios),
                  onTap:_launchUrl,
              ),
              new ListTile(
                  title: new Text("Facebook Page"),
                  trailing: new Icon(Icons.arrow_forward_ios),
                  onTap:_launchFb,
              ),
            ],
          ),
        ),
        body:
              Center(
               child:
                 Text(
                  "Open Drawer Up!",
                )
              )
           ),

    );
  }
}

