import 'package:flutter/material.dart';
import 'package:animator/animator.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import '../SettingPage.dart';
import '../main.dart';
import 'package:flutter_tutorials_and_quizzes/custom_expansion_tile.dart' as custom;

typedef void OnError(Exception exception);

class CmpCustExpTile extends StatefulWidget {

  final Icon ExpIcon;
  final String ExpTitle,InQuizzRoute;
  final Color ExpBg,ExInsideBg;
  final double BordRadius;
  final int CardLength;
  final List CardsList;

  CmpCustExpTile({
    @required this.ExpIcon,
    @required this.ExpTitle,
    @required this.ExpBg,
    @required this.ExInsideBg,
    @required this.BordRadius,
    @required this.InQuizzRoute,
    @required this.CardLength,
    @required this.CardsList,
  });

  _CmpCustExpTileState createState() => _CmpCustExpTileState();
}

class _CmpCustExpTileState extends State<CmpCustExpTile> {
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

  bool _ETvalue = false;

  void _onETChanged(bool value) {
    setState (() {
      _ETvalue = value;

      if(_ETvalue==false){
        PlayTapSound();
      }
      else{
        PlayTapSound();
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius:BorderRadius.circular(widget.BordRadius),
      child:
      custom.ExpansionTile(
        onExpansionChanged:_onETChanged,
        leading:widget.ExpIcon,
        headerBackgroundColor:widget.ExpBg,
        iconColor: Colors.white,
        backgroundColor:widget.ExInsideBg,
        title:
        Container(
          child:
          Row(
            children: <Widget>[
              SizedBox(
                width:MediaQuery.of(context).size.width -180,
                child:
                Text (
                  widget.ExpTitle,
                  style: TextStyle(
                    fontSize:12.5,
                    color: Colors.white,
                    fontFamily: "PT Mono",
                  ),
                ),
              ),
              Animator(
                duration:Duration(milliseconds:1400),
                tween: Tween<double>(begin:0.5,end:1.0),
                curve: Curves.elasticOut,
                cycles:0,
                builder:(anim)=>Transform.scale(
                    scale: anim.value,
                    child:
                    GestureDetector(
                      child:
                      Image.asset(
                        "Images/Quizz.png",
                        width: 31,
                        height: 31,
                      ),
                      onTap:(){
                        RandQuizz=false;
                        PlayTapSound();
                        Navigator.of(context).pushReplacementNamed(widget.InQuizzRoute);
                        },
                    )
                ),
              ),
            ],
          ),
        ),
        children: <Widget>[

          for(var item in widget.CardsList)
            Container(child:item),

          SizedBox(height:10,)
        ],
      ),
    );
  }


}




