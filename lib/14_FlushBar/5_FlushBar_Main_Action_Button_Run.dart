import 'package:flutter/material.dart';
import 'package:flushbar/flushbar.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(FlushBarMainBtnRun());
}

class FlushBarMainBtnRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "FlushBar Main Button",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("FlushBar Main Button"),
        ),
        body:
            Center (
              child:
                RaisedButton(
                  child:
                  Text('Show FlushBar With Main Button'),
                  onPressed: () {
                    ShowFlushBar(context);
                  },
                ),
            ),

          ),
    );
  }

  void ShowFlushBar(BuildContext context){
    Flushbar(
      title:"Get The App Now!",
      message:"Learn And Test Yourself By Running Quizzes!",
      icon:
       Image.asset("Flutter_Logo.png"),
      mainButton:
       FlatButton(
         textColor:Colors.white,
         color:Colors.blue,
         child:Text("Go!"),
         onPressed:_launchUrl,
       ),
    )..show(context);
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








