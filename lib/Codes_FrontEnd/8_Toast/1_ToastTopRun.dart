import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

void main() {
  runApp(ToastTopRun());
}

class ToastTopRun extends StatefulWidget{
  ToastTopRun({Key Key}) : super (key: Key);
  _ToastTopRunState createState() => _ToastTopRunState();
}


class _ToastTopRunState extends State<ToastTopRun> {

  void ShowToast(){
    Toast.show (
      "TOP Toast",
      context,
      duration: Toast.LENGTH_SHORT,
      gravity: Toast.TOP,
    );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "Short Top Toast",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("Short Top Toast"),
        ),
        body:
          Center(
            child:
             RaisedButton(
                child:Text("Show Toast!"),
                onPressed:(){
                  ShowToast();
                }
             ),
          )
      ),
    );
  }

}








