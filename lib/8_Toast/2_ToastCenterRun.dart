import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

void main() {
  runApp(ToastCenterRun());
}

class ToastCenterRun extends StatefulWidget{
  ToastCenterRun({Key Key}) : super (key: Key);
  _ToastCenterRunState createState() => _ToastCenterRunState();
}


class _ToastCenterRunState extends State<ToastCenterRun> {

  void showToast(){
    Toast.show (
      "Center Toast",
      context,
      duration: Toast.LENGTH_LONG,
      gravity: Toast.CENTER,
      backgroundColor: Colors.red,
    );
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "Center Toast",
      home: new Scaffold(
        appBar: AppBar(
          title:Text(
              "Fast Center Toast Red Bg Color",
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








