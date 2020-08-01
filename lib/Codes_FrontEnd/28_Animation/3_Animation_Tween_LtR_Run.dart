import 'package:animator/animator.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



void main() => runApp(TweenLtR_Run());

class TweenLtR_Run extends StatefulWidget {
  TweenLtR_Run({Key Key}) : super (key: Key);

  _ARunState createState() => _ARunState();

}

class _ARunState extends State<TweenLtR_Run> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(
        appBar:AppBar(
          title:Text("Tween Animation"),
        ),
        body:
          ListView(
            children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Animator(
                        repeats: 1,
                        duration:
                        Duration(seconds:2),
                        tween: Tween<double>(
                          begin: 90,
                          end:MediaQuery.of(context).size.width,
                        ),
                        cycles: 0,
                        builder: (anim) =>
                         Flexible(
                           child:
                            Container(
                          width: anim.value,
                          child:
                             SizedBox(
                               width:MediaQuery.of(context).size.width,
                               height: 300,
                               child:
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    child:
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Wrap(
                                          children: <Widget>[
                                            Image.asset("Images/160x160_Flutter.png"),
                                            Container(
                                              child:
                                                  Row(
                                                    children: <Widget>[
                                                      Flexible(
                                                        child:
                                                        Text("Rate Us 5 Stars If You Like The App,You Can Contact Us At edapps.contact@gmail.com If You Found Any Bugs Or You Have Any Suggestions!"),
                                                      )
                                                    ],
                                                  )
                                            ),
                                            FlatButton.icon(
                                                onPressed:_launchPlayStore,
                                                icon:new Icon(Icons.star),
                                                label:Text("Rate Now!"),
                                            )
                                          ],
                                        ),
                                      ),
                                  ),
                                ),
                             ),

                          ),
                        )
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Animator(
                        repeats: 1,
                        duration:
                        Duration(seconds:2),
                        tween: Tween<double>(
                          begin: 90,
                          end:MediaQuery.of(context).size.width,
                        ),
                        cycles: 0,
                        builder: (anim) =>
                            Flexible(
                              child:
                              Container(
                                width: anim.value,
                                child:
                                SizedBox(
                                  width:MediaQuery.of(context).size.width,
                                  height: 300,
                                  child:
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Card(
                                      child:
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Wrap(
                                          children: <Widget>[
                                            Image.asset("Images/FbLike.gif"),
                                            Container(
                                                child:
                                                Row(
                                                  children: <Widget>[
                                                    Flexible(
                                                      child:
                                                      Text("You Can Also Support Us By Liking Our Facebook Page!"),
                                                    )
                                                  ],
                                                )
                                            ),
                                            FlatButton.icon(
                                              onPressed:_launchFb,
                                              icon:new Icon(Icons.create),
                                              label:Text("Go!"),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),




                              ),
                            )
                    ),
                  ],
                ),



              ],
            ),
           ],
          ),
        ),
    );
  }

  _launchPlayStore() async{
    const url="https://play.google.com/store/apps/details?id=edapps.com.flutter_tutorials_and_quizzes";

    if(await canLaunch(url)){
      await launch(url);
    }
    else{
      throw 'Could Not Launch Url!';
    }
  }

  _launchFb() async{
    const url="https://facebook.com/EDApps-104598497562080/";
    if(await canLaunch(url)){
      await launch(url);
    }
    else{
      throw 'Could Not Launch Url!';
    }
  }
}






