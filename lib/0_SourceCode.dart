import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:url_launcher/url_launcher.dart';

import 'SettingPage.dart';
import 'UsersCodesPage.dart';

class SourceCodeUI extends StatefulWidget {
  @override
  SourceCodeUIState createState() => new SourceCodeUIState();
}

class SourceCodeUIState extends State<SourceCodeUI> {
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
    audioCache.play('Music/Tap.mp3');
  }

  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius:BorderRadius.circular(30.0),
      child:
      Card(
      color: Colors.lightBlue,
      child:
      ListTile (
        leading:new Icon(Icons.code),
        title: Text (
          "App Code",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Raleway",
          ),
        ),
        subtitle: Text (
          "Want The Full Code?",
          style: TextStyle(
            fontFamily: "PT Mono",
          ),
        ),
        onTap: (){
          if(AppSoundRetrieve=="NotMuted"){
            PlayTapSound();
          }

          showGeneralDialog(
              context: context,
              barrierDismissible:true,
              barrierLabel:'',
              transitionDuration:Duration(seconds:1),
              transitionBuilder: (BuildContext context,Animation<double> a1,Animation<double> a2,Widget child)=>SlideTransition(
                position:Tween<Offset>(
                  begin:const Offset(-1,0),
                  end:Offset.zero,
                ).animate(a1),
                child:
                Dialog (
                  shape: RoundedRectangleBorder (
                    borderRadius: BorderRadius.circular (8),
                  ),
                  child: Stack (
                    children: <Widget>[
                      Container (
                        decoration: BoxDecoration (
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            borderRadius:
                            BorderRadius.circular (4),
                            boxShadow: [
                              BoxShadow (
                                color: Colors.black,
                                blurRadius: 10.0,
                                offset: const Offset(0.0, 10.0),
                              ),
                            ]),
                        child: Column (
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            SizedBox (height: 14.0),
                            ListTile(
                              title:Text (
                                "App Full Code",
                                textAlign: TextAlign.left,
                                style: TextStyle (
                                  color: Colors.blue,
                                  fontSize: 15.0,
                                ),
                              ),
                              trailing:
                              ClipOval(
                                child: Container(
                                  width:50,
                                  height:45,
                                  color:Colors.yellow,
                                  child:IconButton(
                                    icon: Icon(Icons.close),
                                    color: Colors.black,
                                    onPressed: () {
                                      PlayTapSound();
                                      Navigator.of (context, rootNavigator: true).pop ('dialog');
                                    },
                                  ),
                                ),
                              ),
                            ),
                            Divider(),
                            Image.asset (
                              "Images/160x160_Flutter.png",
                              width:120,
                              height:120,
                            ),
                            Divider(),
                            SizedBox (height: 6.0),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text (
                                "By Rating Us 5 Stars Code Will Stay Up To Date!\n",
                                textAlign: TextAlign.left,
                                style: TextStyle (
                                  color: Colors.indigo,
                                  fontSize: 13.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: SizedBox(
                                width:double.infinity,
                                child:RaisedButton(
                                  color: Colors.teal,
                                  shape:RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  child:
                                  Text(
                                    'Github Link',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  onPressed: _launchUrl,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              pageBuilder: (context,anim1,anim2){
                return Transform.rotate(
                    angle:anim1.value,
                    child:
                    Container(
                        child:
                        AlertDialog(
                          title:Text("Hi"),
                        )
                    )

                );

              }
          );



        },
      ),
      ),
    );
  }

  _launchUrl() async{
    const url="https://play.google.com/store/apps/details?id=edapps.com.flutter_tutorials_and_quizzes";

    if(await canLaunch(url)){
      await launch(url);
    }
    else{
      throw 'Could Not Launch Url!';
    }

  }

}



