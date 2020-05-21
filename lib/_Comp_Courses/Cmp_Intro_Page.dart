import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Components_DetailsList/1_Introduction_CompList.dart';
import 'package:marquee/marquee.dart';
import '../LoadFireBaseAdmob.dart';
import '../SettingPage.dart';
import '../main.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_tutorials_and_quizzes/Backend_5_FireBase_Admob/1_FireBase_Admob_Banner.dart';

typedef void OnError(Exception exception);

class CmpIntroPage extends StatefulWidget {

  String Title;
  var BackRoute,NextRoute;
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
  ScrollController SCIntroPage = new ScrollController();


  @override
  void initState(){
    super.initState();
    initPlayer();
    WidgetsBinding.instance.addPostFrameCallback((_)=>ShowMyAds());
  }


  void initPlayer(){
    advancedPlayer = new AudioPlayer();
    audioCache = new AudioCache(fixedPlayer: advancedPlayer);
  }

  void PlayTapSound() async{
    if(SoundResult=="NotMuted") {
      audioCache.play('Music/Tap.mp3');
    }
  }

  @override
  Widget build(BuildContext context){
    return WillPopScope(
      onWillPop:(){
        MyBanner?.dispose();
        bannerAdTutorial?.dispose();
        loadBannerAd++;
        loadIntertitialAd++;
        PlayTapSound();
        Navigator.pop(context);
      },
      child:Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding:
            EdgeInsets.only(left: 12),
            child:  IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: (){
                MyBanner?.dispose();
                bannerAdTutorial?.dispose();
                loadBannerAd++;
                loadIntertitialAd++;
                PlayTapSound();
                Navigator.pushNamed(context,widget.BackRoute);
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
                MyBanner?.dispose();
                bannerAdTutorial?.dispose();
                loadBannerAd++;
                loadIntertitialAd++;
                PlayTapSound();
                Navigator.pushNamed(context,"/Main");
              },
            ),
            IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: (){
                MyBanner?.dispose();
                bannerAdTutorial?.dispose();
                loadBannerAd++;
                loadIntertitialAd++;
                PlayTapSound();
                Navigator.pushNamed(context,widget.NextRoute);
              },
            ),
          ],
        ),
        body:
        ListView(
          controller:SCIntroPage,
          children: <Widget>[
            new Container(
              padding: new EdgeInsets.all(20.0),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[


                  for(var item in widget.ItemList)
                    Container(child:item),


                  SizedBox(height:85),

                ],
              ),
            ),
          ],
        ),
        floatingActionButton:Column(
          mainAxisAlignment:MainAxisAlignment.end,
          children: <Widget>[
            Container(
              width:37,
              height:37,
              child:FloatingActionButton(
                backgroundColor:Colors.deepOrange,
                child:Icon(Icons.arrow_drop_up),
                onPressed:(){
                  SCIntroPage.animateTo(
                    0,
                    duration:Duration(milliseconds:500),
                    curve:Curves.fastOutSlowIn,
                  );
                },
              ),
            ),
            SizedBox(height:6,),
            Container(
              width:37,
              height:37,
              child:FloatingActionButton(
                heroTag:"FrontPageFAB",
                backgroundColor:Colors.deepOrange,
                child:Icon(Icons.arrow_drop_down),
                onPressed:(){
                  SCIntroPage.animateTo(
                    SCIntroPage.position.maxScrollExtent,
                    duration:Duration(milliseconds:500),
                    curve:Curves.fastOutSlowIn,
                  );
                },
              ),
            ),
            SizedBox(height:65)

          ],
        ),
      ),
    );
  }
}


