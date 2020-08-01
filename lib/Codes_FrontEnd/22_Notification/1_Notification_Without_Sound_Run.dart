import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

void main() {
  runApp(NotifNoSound());
}

FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

class NotifNoSound extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

Future _showNotification() async {

  var AndSpec = new AndroidNotificationDetails(
      'EDApps',
      'FlutterTutorials',
      'Learn And Run Quizzes',
      playSound: false,
      importance: Importance.Max,
      priority: Priority.High
  );

  var IOSSpec = new IOSNotificationDetails(presentSound: false);

  var platformChannelSpecifics = new NotificationDetails(
      AndSpec,
      IOSSpec
  );

  await flutterLocalNotificationsPlugin.show(
    0,
    'New Notification!',
    'Recieved From Notification Tutorials',
     platformChannelSpecifics,
     payload: 'No_Sound',
  );

}



class _MyAppState extends State<NotifNoSound> {

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

    var AndSetting = new AndroidInitializationSettings('@mipmap/ic_launcher');

    var IOSSetting = new IOSInitializationSettings();

    var initializationSettings = new InitializationSettings(
        AndSetting,
        IOSSetting
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
             child: new Text('Notification Without Sound'),
           ),
         )
      ),
    );
  }


}

