import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(SimpleFlushBarRun());
}

class SimpleFlushBarRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "Simple FlushBar",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("Simple FlushBar"),
        ),
        body:
            Center(
               child:
                RaisedButton(
                  child:
                  Text('Show Simple FlushBar'),
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
    )..show(context);
  }

}








