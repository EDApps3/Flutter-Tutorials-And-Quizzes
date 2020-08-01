import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:marquee/marquee.dart';
import '../main.dart';
import 'package:flutter_tutorials_and_quizzes/Codes_BackEnd/Backend_5_FireBase_Admob/1_FireBase_Admob_Banner.dart';
import '../AppSoundPlay.dart';
typedef void OnError(Exception exception);

class CmpWebViewPage extends StatefulWidget {
  String Title,GoUrl;

  CmpWebViewPage({
    @required this.Title,
    @required this.GoUrl,
  });

  @override
  CmpWebViewPageState createState() => new CmpWebViewPageState();
}

class CmpWebViewPageState extends State<CmpWebViewPage> {

  @override
  void initState(){
    super.initState();
  }

  @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text(widget.Title),
      ),
      body:WebviewScaffold(
          url:widget.GoUrl,
          withZoom: false,
          withLocalStorage: true,
          hidden:true,
          initialChild:Center(
              child:Column(
                children: <Widget>[
                  SizedBox(height:250,),
                  CircularProgressIndicator(),
                  SizedBox(height:5,),
                  Text("Loading..."),
                ],
              )
            ),
    ),
    );
  }
  
  
}


