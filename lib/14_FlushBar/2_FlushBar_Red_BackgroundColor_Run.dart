import 'package:flutter/material.dart';
import 'package:flushbar/flushbar.dart';

void main() {
  runApp(FlushBarBGRun());
}

class FlushBarBGRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "FlushBar Red BackgroundColor",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("FlushBar Red BackgroundColor"),
        ),
        body:
          Center(
            child:
                RaisedButton(
                  child:
                  Text('Show Red BG FlushBar'),
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
      title:"This Is The Title",
      message:"This Is The Message,Write Anything You Want!",
      backgroundColor:Colors.red,
    )..show(context);
  }

}








