import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_badger/flutter_app_badger.dart';

void main() => runApp(new FlutterAppBadgerRun());

class FlutterAppBadgerRun extends StatefulWidget {
  @override
  FlutterAppBadgerState createState() => new FlutterAppBadgerState();
}

class FlutterAppBadgerState extends State<FlutterAppBadgerRun> {
  String _appBadgeSupported = 'Unknown';
  var NotifCounter=1;

  @override
  initState() {
    super.initState();
    initPlatformState();
  }

  initPlatformState() async {
    String appBadgeSupported;
    try {
      bool res = await FlutterAppBadger.isAppBadgeSupported();
      if (res) {
        appBadgeSupported = 'Supported';
      } else {
        appBadgeSupported = 'Not supported';
      }
    } on PlatformException {
      appBadgeSupported = 'Failed to get badge support.';
    }

    if (!mounted) return;

    setState(() {
      _appBadgeSupported = appBadgeSupported;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Scaffold(
        appBar:AppBar(
          title:Text('Flutter App Badger'),
        ),
        body:Container(
          width:MediaQuery.of(context).size.width,
          height:MediaQuery.of(context).size.height,
          child:
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Text('Badge supported: $_appBadgeSupported\n'),
              new Text('After Clicking Add Check App In The Android Home App Screen Without Closing It!\n'),
              SizedBox(
                width:200,
                child:RaisedButton(
                child: new Text('Add $NotifCounter Badge'),
                onPressed: () {
                  FlutterAppBadger.updateBadgeCount(NotifCounter);
                  setState(() {
                    NotifCounter++;
                  });
                },
               ),
              ),
              SizedBox(
                width:200,
                child:RaisedButton(
                child: new Text('Remove Badge'),
                onPressed: () {
                  FlutterAppBadger.removeBadge();
                },
               ),
              ),
              
             
            ],
          ),
        ),
      ),
    );
  }


}