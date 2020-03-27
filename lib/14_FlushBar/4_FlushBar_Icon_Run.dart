import 'package:flutter/material.dart';
import 'package:flushbar/flushbar.dart';


void main() {
  runApp(FlushBarIconRun());
}

class FlushBarIconRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "FlushBar Icon",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("FlushBar Icon"),
        ),
        body:
          Center(
            child:
                RaisedButton(
                  child:
                  Text('Show FlushBar With Icon'),
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
      icon:
        new Icon(
          Icons.info,
          color:Colors.white,
        ),
    )..show(context);
  }

}








