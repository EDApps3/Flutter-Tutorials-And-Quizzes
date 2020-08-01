import 'package:flutter/material.dart';
import 'package:flushbar/flushbar.dart';

void main() {
  runApp(FlushBarPosRun());
}

class FlushBarPosRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "FlushBar Position",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("FlushBar Position"),
        ),
        body:
            Center(
              child:
                RaisedButton(
                  child:
                  Text('Show Top And Bottom FlushBar'),
                  onPressed: () {
                    TopFB(context);
                    BottomFB(context);
                  },
                ),
        ),
      ),
    );
  }

  void TopFB(BuildContext context){
    Flushbar(
      title:"Top!",
      message:"This Is The Top FlushBar!",
      flushbarPosition:
        FlushbarPosition.TOP,
    )..show(context);
  }

  void BottomFB(BuildContext context){
    Flushbar(
      title:"Bottom!",
      message:"This Is The Bottom FlushBar!",
      flushbarPosition:
        FlushbarPosition.BOTTOM,
    )..show(context);
  }

}








