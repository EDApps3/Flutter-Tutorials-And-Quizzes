import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

void main() {
  runApp(ToastBottomRun());
}

class ToastBottomRun extends StatefulWidget{
  ToastBottomRun({Key Key}) : super (key: Key);
  _ToastBottomRunState createState() => _ToastBottomRunState();
}


class _ToastBottomRunState extends State<ToastBottomRun> {

  void showToast(){
    Toast.show (
      "Bottom Toast",
      context,
      duration: Toast.LENGTH_SHORT,
      gravity: Toast.BOTTOM,
      textColor: Colors.blue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "Bottom Toast",
      home: new Scaffold(
        appBar: AppBar(
          title:Text(
            "Short Bottom Toast Blue Text Color",
          ),
        ),
        body:
         Center(
           child:
            RaisedButton(
               child:Text("Show Toast!"),
               onPressed:(){
                 showToast();
               }
            ),
         )

      ),



    );
  }

}








