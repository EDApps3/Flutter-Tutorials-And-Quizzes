import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import '../LoadFireBaseAdmob.dart';
import '../SettingPage.dart';
import '../main.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

typedef void OnError(Exception exception);

class CmpIntroPage extends StatefulWidget {

  final String Title,BackRoute,NextRoute;
  final List ItemList;

  CmpIntroPage({
    @required this.Title,
    @required this.BackRoute,
    @required this.NextRoute,
    @required this.ItemList,
  });

  @override
  _CmpIntroPageState createState() => new _CmpIntroPageState();
}

class _CmpIntroPageState extends State<CmpIntroPage> {
  AudioPlayer advancedPlayer;
  AudioCache audioCache;

  @override
  void initState(){
    super.initState();
    initPlayer();
    ShowMyAds();
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
          leading: Padding(
            padding:
            EdgeInsets.only(left: 12),
            child:  IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: (){
                loadAds++;
                PlayTapSound();
                Navigator.of(context).pushReplacementNamed(widget.BackRoute);
              },
            ),
          ),
          title: Row(
            mainAxisAlignment:
            MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  child:
                  SizedBox(
                      width: MediaQuery.of(context).size.width-50,
                      height: MediaQuery.of(context).size.height,
                      child:
                      Marquee(
                        text:widget.Title,
                        style:TextStyle(
                            fontFamily: "PT Mono",
                            fontSize:20,
                            fontWeight:FontWeight.bold,
                            color:Colors.white
                        ),
                        scrollAxis:Axis.horizontal,
                        blankSpace:300,
                        crossAxisAlignment:CrossAxisAlignment.center,
                      )
                  )
              ),
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.format_list_numbered),
              onPressed: (){
                loadAds++;
                PlayTapSound();
                Navigator.push(context,MaterialPageRoute(builder:(context)=>Main()));
              },
            ),
            IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: (){
                loadAds++;
                PlayTapSound();
                Navigator.of(context).pushReplacementNamed(widget.NextRoute);
              },
            ),
          ],
        ),
        body:
        ListView(
          children: <Widget>[
            new Container(
              padding: new EdgeInsets.all(20.0),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[


                  for(var item in widget.ItemList)
                    Container(child:item),


                ],
              ),
            ),
          ],
        )
    );
  }
}


