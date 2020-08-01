import 'package:flutter/material.dart';
import 'package:flushbar/flushbar.dart';

void main() {
  runApp(FlushBarYWTxtRun());
}

class FlushBarYWTxtRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "FlushBar Yellow Texts",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("FlushBar Yellow Texts"),
        ),
        body:
         Center(
           child:
                RaisedButton(
                  child:
                  Text('Show Yellow Texts FlushBar'),
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
      titleText:
        Text(
          "This Is The Title",
          style:TextStyle(
            color:Colors.yellow
          ),
        ),
      messageText:
      Text(
        "This Is The Message,Write Anything You Want!",
        style:TextStyle(
            color:Colors.yellow
        ),
      ),
    )..show(context);
  }

}








