import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

import 'main.dart';


String AppSoundRetrieve;

class SettingPage extends StatefulWidget {
  @override
  SettingPageState createState() => new SettingPageState();
}

class SettingPageState extends State<SettingPage> with AutomaticKeepAliveClientMixin {
  AudioPlayer advancedPlayer;
  AudioCache audioCache;
  bool _SWvalue;

  void initPlayer(){
    advancedPlayer = new AudioPlayer();
    audioCache = new AudioCache(fixedPlayer: advancedPlayer);
  }

  void PlayTapSound() async{
    audioCache.play('Music/Tap.mp3');
  }

  void initState(){
    super.initState();
    initPlayer();
    var dbAppSound= DBAppSound().getAppSound();
    print(AppSoundRetrieve);

    if(AppSoundRetrieve=="Muted"){
      _SWvalue=true;
    }
    else{
      _SWvalue=false;
    }

  }


  void _onSWChanged(bool value) {
    var dbAppSound = DBAppSound();

    setState (() {
      _SWvalue = value;

      if(_SWvalue==false){
        PlayTapSound();
        dbAppSound.DelAllAppSound();
        AppSound AS=new AppSound(null,"NotMuted");
        dbAppSound.save(AS);
        dbAppSound.getAppSound();
      }
      else{
        dbAppSound.DelAllAppSound();
        AppSound AS=new AppSound(null,"Muted");
        dbAppSound.save(AS);
        dbAppSound.getAppSound();
      }
    });
  }




  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("Settings"),
      ),
      body:
      ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: <Widget>[

                SizedBox(height:10),

                SizedBox(
                  width:double.infinity,
                  height:60,
                  child:Card(
                    color:Colors.teal,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                          "Sound:",
                          style:TextStyle(
                            fontSize:20,
                            color:Colors.white,
                          ),
                      ),
                    ),
                  ),
                ),


                Card(
                  color:Colors.grey[200],
                  child:Row(
                    children: <Widget>[
                      Container(
                        width:MediaQuery.of(context).size.width*0.30,
                        child:Icon(Icons.volume_up),
                      ),
                      Container(
                        width:MediaQuery.of(context).size.width*0.27,
                        child:Switch(
                          activeColor:Colors.white,
                          inactiveThumbColor:Colors.white,
                          value: _SWvalue,
                          onChanged: _onSWChanged,
                        ),
                      ),
                      Container(
                        width:MediaQuery.of(context).size.width*0.30,
                        child:Icon(Icons.volume_mute),
                      ),
                    ],
                  )
                ),








              ],
            ),
          ),
        ],
      )

    );
  }

  @override
  bool get wantKeepAlive => true;

}









