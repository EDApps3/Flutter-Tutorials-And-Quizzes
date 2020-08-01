import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';


void main() {
  runApp(NotifDefSound());
}

FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

class NotifDefSound extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

Future _showNotification() async {

  var androidPlatformChannelSpecifics = new AndroidNotificationDetails(
      'EDApps',
      'FlutterTutorials',
      'Learn And Run Quizzes',
      importance: Importance.Max,
      priority: Priority.High
  );

  var iOSPlatformChannelSpecifics = new IOSNotificationDetails();

  var platformChannelSpecifics = new NotificationDetails(
      androidPlatformChannelSpecifics,
      iOSPlatformChannelSpecifics
  );

  await flutterLocalNotificationsPlugin.show(
    0,
    'New Notification!',
    'Recieved From Notification Tutorials',
    platformChannelSpecifics,
    payload: 'Default_Sound',
  );
}



class _MyAppState extends State<NotifDefSound> {

  Future onSelectNotification(String payload) async {
    showDialog(
      context: context,
      builder: (_) {
        return new AlertDialog(
          title: Text("Notification Clicked"),
          content: Text("Opened From Notification!"),
        );
      },
    );
  }

  @override
  initState() {
    super.initState();
    var initializationSettingsAndroid = new AndroidInitializationSettings('@mipmap/ic_launcher');

    var initializationSettingsIOS = new IOSInitializationSettings();

    var initializationSettings = new InitializationSettings(
        initializationSettingsAndroid,
        initializationSettingsIOS,
    );

    flutterLocalNotificationsPlugin = new FlutterLocalNotificationsPlugin();

    flutterLocalNotificationsPlugin.initialize(
        initializationSettings,
        onSelectNotification: onSelectNotification
    );

  }


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Notification With Default Sound'),
        ),
        body:
         Center(
           child:
            RaisedButton(
             onPressed: _showNotification,
             child: new Text('Show Notification With Default Sound'),
            ),
         ),
      ),
    );
  }


}

