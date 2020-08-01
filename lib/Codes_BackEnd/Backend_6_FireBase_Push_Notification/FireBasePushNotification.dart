
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';



class PushNotificationsManager {
  AudioPlayer advancedPlayer;
  AudioCache audioCache;
  String NotifMsgBody,NotifMsgTitle;



  void initPlayer(){
   advancedPlayer = new AudioPlayer();
   audioCache = new AudioCache(fixedPlayer: advancedPlayer);
   audioCache.play('Music/NotifSound.mp3');
  }

  PushNotificationsManager._();

  factory PushNotificationsManager() => _instance;

  static final PushNotificationsManager _instance = PushNotificationsManager._();

  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
  bool _initialized = false;

  void InitMsgBodyTitle(var message){
          var a= message.map((key, value) => MapEntry(key,value));
          var b;

           a.forEach((key, value) {
             if(value.toString().contains("body")){
               b=value;
             }
           });

           b.forEach((key, value) {
             if(key.toString()=="body"){
               NotifMsgBody=value.toString();
             }
            if(key.toString()=="title"){
               NotifMsgTitle=value.toString();
             }
           });

           print(NotifMsgTitle);
           print(NotifMsgBody);
  }


  Future<void> init() async {
    if (!_initialized) {
      _firebaseMessaging.requestNotificationPermissions();
      _firebaseMessaging.configure(
         onMessage: (Map<String, dynamic> message) async {
          print(message);
          initPlayer();
          InitMsgBodyTitle(message);

            AlertDialog dialog = new AlertDialog(
              title:Container(
                height:35,
               child:ListTile(
                leading:Icon(Icons.notification_important),
                trailing:IconButton(
                  icon:Icon(Icons.close),
                  onPressed:(){
                    Get.back();
                  },
                ),
                title:Text(
                  "Notification",
                  style:TextStyle(
                    color:Colors.teal,
                    fontSize:14,
                    fontFamily:"RaleWay"
                  ),
                ),
              ),
              ),
              content:Container( 
                height:130,
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Divider(color:Colors.blueGrey,),
                  Text(
                 NotifMsgTitle,
                  style:TextStyle(
                    color:Colors.blue,
                    fontSize:18,
                    fontFamily:"RaleWay"
                  ),
                ),
                Text(
                 NotifMsgBody,
                  style:TextStyle(
                    color:Colors.blueGrey,
                    fontSize:14,
                    fontFamily:"RaleWay"
                  ),
                ),
                
                      
                ],
              ),
              ),
              );
              Get.dialog(dialog);
         },
         onResume: (Map<String, dynamic> message) async {
          print(message);
         },
         onLaunch: (Map<String, dynamic> message) async {
          print(message);
         },
      );

      String token = await _firebaseMessaging.getToken();
      print("FirebaseMessaging token: $token");

      _initialized = true;
    }
  }
}

