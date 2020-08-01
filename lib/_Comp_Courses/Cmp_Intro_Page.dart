import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import '../main.dart';
import 'package:flutter_tutorials_and_quizzes/Codes_BackEnd/Backend_5_FireBase_Admob/1_FireBase_Admob_Banner.dart';
import '../AppSoundPlay.dart';
import '../SettingPage.dart';
import '../LoadFireBaseAdmob.dart';

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
  ScrollController SCIntroPage = new ScrollController();


  @override
  void initState(){
    super.initState();
    ShowMyAds();
  }

  @override
  Widget build(BuildContext context){
    return WillPopScope(
      onWillPop:(){
        ShowMyAds();
        PlayTapSound();
        Navigator.pop(context);
      },
      child:Scaffold(  
        backgroundColor:(ThemeResult=="Light")?Colors.white:CardBg.withBlue(255).withGreen(255).withRed(255),
        appBar: AppBar(
          backgroundColor:ThemeAppBar,
          leading: Padding(
            padding:
            EdgeInsets.only(left: 12),
            child:  IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: (){
                if(bannerAdTutorial!=null){
                 bannerAdTutorial.dispose();
                }
                ShowMyAds();
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
                ShowMyAds();
                PlayTapSound();
                Navigator.pushNamed(context,"/Main");
              },
            ),
            IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: (){
                bannerAdTutorial?.dispose();
                ShowMyAds();
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


