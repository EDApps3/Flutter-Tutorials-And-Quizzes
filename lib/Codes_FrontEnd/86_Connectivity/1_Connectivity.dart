import 'package:flutter/material.dart';
import 'dart:io';


void main() {
  runApp(ConnectivityRun());
}

class ConnectivityRun extends StatefulWidget {
  @override
  _ConnectivityRunState createState() => _ConnectivityRunState();
}

class _ConnectivityRunState extends State<ConnectivityRun> {
 bool ActiveConnection=false;
 String T="";

 Future<bool> CheckUserConnected() async {
  try {
    final result = await InternetAddress.lookup('google.com');
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      setState(() {
        ActiveConnection=true;
        T="Turn Off The Wifi Or MobileData And Repress The Button";
      });
    }
  } on SocketException catch (_) {
    setState(() {
      ActiveConnection=false;
      T="Turn On The Wifi Or MobileData And Repress The Button";
    });
  }
 }

  @override
  void initState(){
    CheckUserConnected();
    super.initState();
  }


 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Scaffold(
        appBar:AppBar(
          title:Text("Connectivity"),
        ),
        body:Container(
          width :MediaQuery.of(context).size.width,
          height:MediaQuery.of(context).size.height,
          child:Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: <Widget>[
              Text("Active Connection? $ActiveConnection"),
              Divider(),
              Text("$T"),
              RaisedButton(
                child:Text("Check"),
                onPressed:(){
                    CheckUserConnected();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}