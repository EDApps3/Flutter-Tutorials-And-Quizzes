import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

import '../SettingPage.dart';

typedef void OnError(Exception exception);

class CmpExpTileCard extends StatefulWidget {

  final Color CardBg;
  var CardIcon;
  final String CardTitle,CardSubTitle,GoRoute;


  CmpExpTileCard({
    @required this.CardBg,
    @required this.CardIcon,
    @required this.CardTitle,
    @required this.CardSubTitle,
    @required this.GoRoute,
  });

  _CmpExpTileCardState createState() => _CmpExpTileCardState();
}

class _CmpExpTileCardState extends State<CmpExpTileCard> {
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
  Widget build(BuildContext context) {
    return Card(
      color:widget.CardBg,
      child:
      ListTile (
        leading:widget.CardIcon,
        title: Text (
          widget.CardTitle,
          style: TextStyle(
            fontFamily: "Raleway",
          ),
        ),
        subtitle: Text (
          widget.CardSubTitle,
          style: TextStyle(
            fontFamily: "PT Mono",
          ),
        ),
        onTap: (){
          PlayTapSound();
          Navigator.of(context).pushReplacementNamed(widget.GoRoute);
        },
      ),
    );
  }


}




