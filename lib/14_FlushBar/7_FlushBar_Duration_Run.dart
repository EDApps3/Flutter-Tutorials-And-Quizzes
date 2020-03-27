import 'package:flutter/material.dart';
import 'package:flushbar/flushbar.dart';


void main() {
  runApp(FlushBarDuration());
}

class FlushBarDuration extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "FlushBar Duration",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("FlushBar Duration"),
        ),
        body:
         Center(
           child:
                RaisedButton(
                  child:
                  Text('Show FlushBar For 2s'),
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
      duration:
       Duration(seconds:2),
    )..show(context);
  }

}








