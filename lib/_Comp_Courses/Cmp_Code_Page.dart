import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Courses/Cmp_Title.dart';
import 'package:marquee/marquee.dart';
import '../SettingPage.dart';
import '../main.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_tutorials_and_quizzes/Codes_BackEnd/Backend_5_FireBase_Admob/1_FireBase_Admob_Banner.dart';
import 'CmpWebView.dart';
import 'EditedCodeView.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import '../LoadFireBaseAdmob.dart';



typedef void OnError(Exception exception);
TabController tabController;
TextEditingController CodeTxtField = new TextEditingController();



var Public_RunCodeRout,Public_CodeRoute,Public_ItemList,Public_ToDo,Pub_Exp,PubOfDocList;


class CmpCodePage extends StatefulWidget {

  var Title,BackRoute,NextRoute,CodeRoute,ToDo,TxtExplanation;
  final List ItemList;
  final Icon TabIcon;
  var RunCodeRoute;
  var OffDocList;

  CmpCodePage({
    @required this.Title,
    @required this.BackRoute,
    @required this.NextRoute,
    @required this.ItemList,
    @required this.CodeRoute,
    @required this.TabIcon,
    @required this.ToDo,
    @required this.TxtExplanation,
    @required this.RunCodeRoute,
    @required this.OffDocList,
  });

  @override
  _CmpCodePageState createState() => new _CmpCodePageState();
}

class _CmpCodePageState extends State<CmpCodePage> with SingleTickerProviderStateMixin {
  AudioPlayer advancedPlayer;
  AudioCache audioCache;



  Future<String> readCounter() async {
    return await rootBundle.loadString(widget.CodeRoute);
  }



  @override
  Future initState()  {
    ShowMyAds();
    super.initState();
    Public_RunCodeRout=widget.RunCodeRoute;
    Public_CodeRoute=widget.CodeRoute;
    Public_ToDo=widget.ToDo;
    Pub_Exp=widget.TxtExplanation;
    Public_ItemList=widget.ItemList;
    PubOfDocList=widget.OffDocList;

    initPlayer();
    tabController = new TabController(vsync: this, length: 4,);

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
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop:(){
         try{
          bannerAdTutorial?.dispose();
         }
         catch(ex){
          print(ex);
         }
         ShowMyAds();
      PlayTapSound();
      Navigator.pop(context);
    },
    child:Scaffold(
        backgroundColor:(ThemeResult=="Light")?Colors.white:CardBg.withBlue(255).withGreen(255).withRed(255),
      appBar: new AppBar(
                backgroundColor:ThemeAppBar,
        leading: IconButton(
          icon: new Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: (){
            try{
             bannerAdTutorial?.dispose();
            }
            catch(ex){
              print(ex);
            }
            ShowMyAds();
            PlayTapSound();
            Navigator.pushNamed(context,widget.BackRoute);
          },
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
                          fontSize:20,
                          fontFamily: "PT Mono",
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
             try{
              bannerAdTutorial?.dispose();
             }
             catch(ex){
              print(ex);
             }
              ShowMyAds();
              PlayTapSound();
              Navigator.pushNamed(context,"/Main");
            },
          ),
          IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: (){
              try{
               bannerAdTutorial?.dispose();
              }
              catch(ex){
               print(ex);
              }
              ShowMyAds();
              PlayTapSound();
              Navigator.pushNamed(context,widget.NextRoute);
            },
          ),
        ],
        bottom: new TabBar(
          controller: tabController,
          tabs: [
            Tab(icon: widget.TabIcon,text:"About"),
            Tab(icon: Icon(Icons.code,),text:"Code"),
            Tab(icon: Icon(Icons.receipt,),text:"Run"),
            Tab(icon: Icon(Icons.info,),text:"Doc"),
          ],
        ),
      ),

      body: TabBarView(
        controller: tabController,
        children: [
          About(),
          CodeView(),
          RunCode(),
          OffDoc(),
        ],

      ),
    ),
    );
  }
}




class About extends StatefulWidget {
  @override
  AboutState createState() => new AboutState();
}


class AboutState extends State<About> with AutomaticKeepAliveClientMixin {
  ScrollController SCCodePage = new ScrollController();

  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor:(ThemeResult=="Light")?Colors.white:CardBg.withBlue(255).withGreen(255).withRed(255),
      body:
      ListView (
        controller:SCCodePage,
        children: <Widget>[
          Container(
            padding: new EdgeInsets.all(20.0),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[


                for(var item in Public_ItemList)
                  Container(child:item),


                Container (
                  padding: new EdgeInsets.only(bottom: 20.0),
                  child:
                  Card(
                    child:Container(
                      padding: new EdgeInsets.all(15.0),
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          CmpTitle(Title:"To Do Code:"),
                          Divider (color: Colors.grey,),
                          Text (
                            Public_ToDo,
                            style: TextStyle (
                              fontFamily: "PT Mono",
                              fontSize: 13,
                              fontWeight: FontWeight.w200,
                              color: Colors.red,
                            ),
                          ),
                          SizedBox (height: 7,),
                          SizedBox (
                            width: double.infinity,
                            child:RaisedButton (
                              color: Colors.green,
                              shape: RoundedRectangleBorder (
                                borderRadius: BorderRadius.circular (30.0),
                              ),
                              child:Text(
                                "Get Me To The Code!",
                                style: TextStyle (
                                  fontFamily: "PT Mono",
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: () {
                                tabController.animateTo (1);
                              },
                            ),
                          ),
                          SizedBox (height: 7,),
                        ],
                      ),
                    ),
                  ),
                ),


                Container (
                  padding: new EdgeInsets.only(bottom: 20.0),
                  child:
                  Card(
                    child:
                    Container(
                      padding: new EdgeInsets.all(15.0),
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          CmpTitle(Title:"Code Explanation",),
                          Divider (color: Colors.grey,),
                          Text (
                            Pub_Exp,
                            style: TextStyle (
                              fontFamily: "PT Mono",
                              fontSize: 14,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

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
              heroTag:"FAB_1_Up",
              backgroundColor:Colors.deepOrange,
              child:Icon(Icons.arrow_drop_up),
              onPressed:(){
                SCCodePage.animateTo(
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
              heroTag:"FAB_1_Down",
              backgroundColor:Colors.deepOrange,
              child:Icon(Icons.arrow_drop_down),
              onPressed:(){
                SCCodePage.animateTo(
                  SCCodePage.position.maxScrollExtent,
                  duration:Duration(milliseconds:500),
                  curve:Curves.fastOutSlowIn,
                );
              },
            ),
          ),
          SizedBox(height:65)
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;

}









class CodeView extends StatefulWidget {
  @override
  CodeViewState createState() => new CodeViewState();
}
class CodeViewState extends State<CodeView> with AutomaticKeepAliveClientMixin {

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:(ThemeResult=="Light")?Colors.white:CardBg.withBlue(255).withGreen(255).withRed(255),
        body:EditedSourceCodeView(
          filePath:Public_CodeRoute,
        ),
    );
  }

  @override
  bool get wantKeepAlive => true;

}


class RunCode extends StatefulWidget {
  @override
  RunCodeState createState() => new RunCodeState();
}

class RunCodeState extends State<RunCode> {

  @override
  void initState(){
    super.initState();
  }

  @override
  void dispose(){
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body:Public_RunCodeRout
    );
  }

}







class OffDoc extends StatefulWidget {
  @override
  OffDocState createState() => new OffDocState();
}

class OffDocState extends State<OffDoc> with AutomaticKeepAliveClientMixin {

  @override
  void initState(){
    super.initState();
  }

  @override
  void dispose(){
    super.dispose();
  }

  Widget OffDocWidget(){
    return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment:MainAxisAlignment.center,
                crossAxisAlignment:CrossAxisAlignment.center,
                children: <Widget>[
                   for(var item in PubOfDocList)
                    Container(child:item),
                  ],
              ),
            );
  }

    Widget SoonOffDocWidget(){
    return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment:MainAxisAlignment.center,
                crossAxisAlignment:CrossAxisAlignment.center,
                children: <Widget>[
                    SizedBox(height:200,),
                  Center(child:Text("Soon!This Tab Will Include Official Reference Of The Used Widget.",textAlign:TextAlign.center),)
  
                  ],
              ),
            );
  }



             

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:(ThemeResult=="Light")?Colors.white:CardBg.withBlue(255).withGreen(255).withRed(255),
        body:ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment:MainAxisAlignment.center,
                crossAxisAlignment:CrossAxisAlignment.center,
                children: <Widget>[
                  (PubOfDocList==null)?SoonOffDocWidget():OffDocWidget(),
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











