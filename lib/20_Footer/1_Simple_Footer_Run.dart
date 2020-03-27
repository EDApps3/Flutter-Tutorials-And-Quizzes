import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(SimpleFooterRun());
}

class SimpleFooterRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "Bottom AppBar",
      home: new Scaffold(
        bottomNavigationBar: BottomAppBar(
          elevation: 20,
          color:Colors.lightBlueAccent,
          child:
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                GestureDetector(
                  onTap:_launchStore,
                  child:Image.asset(
                    "Images/Flutter_Logo.png",
                    width:36,
                    height:36,
                  ),
                ),
                FlatButton(
                  onPressed:_launchStore,
                  child:Text(
                    "Get The App!",
                    style:TextStyle(
                      color:Colors.white,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap:_launchFb,
                  child:
                  Image.asset(
                    "Images/FbLike.gif",
                    width:36,
                    height:36,
                  ),
                ),
                FlatButton(
                  onPressed:_launchFb,
                  child:Text(
                      "Like Our Page!",
                      style:TextStyle(
                        color:Colors.white,
                      )
                  ),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          title:Text("Bottom AppBar"),
        ),
        body:
            Center(
              child:Text("Bottom AppBar"),
            ),
          ),
    );
  }



  _launchStore() async{
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


}













