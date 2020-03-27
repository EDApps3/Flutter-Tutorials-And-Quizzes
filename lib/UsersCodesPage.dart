import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'SettingPage.dart';
import 'main.dart';

typedef void OnError(Exception exception);

class UsersCodePage extends StatefulWidget {
  @override
  _UsersCodePageState createState() => new _UsersCodePageState();
}

class _UsersCodePageState extends State<UsersCodePage> {
  AudioPlayer advancedPlayer;
  AudioCache audioCache;

  @override
  void initState(){
    super.initState();
    initPlayer();
  }

  void initPlayer(){
    advancedPlayer = new AudioPlayer();
    audioCache = new AudioCache(fixedPlayer: advancedPlayer);
  }

  void PlayTapSound() async{
    if(AppSoundRetrieve=="NotMuted") {
      audioCache.play('Music/Tap.mp3');
    }
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
        appBar: AppBar(
          leading:IconButton(
            icon:Icon(Icons.arrow_back),
            onPressed:(){
              PlayTapSound();
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Main()));
            },
          ),
          title:Text("Users Codes"),
        ),
        body:
        ListView(
          children: <Widget>[
            new Container(
              padding: new EdgeInsets.all(20.0),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[

                  Container(
                    padding: new EdgeInsets.only(bottom: 20.0),
                    child:
                    new Card(
                      child: new Container(
                        padding: new EdgeInsets.all(15.0),
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "No Codes Found yet!",
                              style:TextStyle(
                                fontFamily: "PT Mono",
                                fontSize: 23,
                                fontWeight: FontWeight.w200,
                                color: Colors.teal,
                              ),
                            ),
                            Divider(color: Colors.grey,),
                            Text(
                                  "Send Your Code At\n"
                                  "edapps.contact@gmail.com\n"
                                  "And The Code Will Be Uploaded Under Your Name\n\n\n"
                                      "We Can Flutter Together!\n\n\n",
                              style:TextStyle(
                                fontFamily: "Lobster",
                                fontSize: 20,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],
        )
    );
  }



}





