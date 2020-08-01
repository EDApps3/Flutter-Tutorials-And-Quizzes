import 'package:animator/animator.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


void main() => runApp(TweenRtL_Run());

class TweenRtL_Run extends StatefulWidget {
  TweenRtL_Run({Key Key}) : super (key: Key);
  _ARunState createState() => _ARunState();
}

class _ARunState extends State<TweenRtL_Run> {

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
              Container(
                color: Colors.transparent,
                width:MediaQuery.of(context).size.width,
                height:MediaQuery.of(context).size.height,
                child:
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width:MediaQuery.of(context).size.width,
                 height: 300,
                 child:
                Card(
                  child:
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Animator(
                                repeats: 1,
                                duration:
                                Duration(seconds:2),
                                tween: Tween<double>(
                                  begin:MediaQuery.of(context).size.width,
                                  end:90,
                                ),
                                cycles: 0,
                                builder: (anim) =>
                                    Flexible(
                                      child:
                                      Container(
                                        width: anim.value,
                                        height: 150,
                                        child:
                                        Image.asset(
                                            "Images/Flutter_Logo.png",
                                        ),

                                      ),
                                    )
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              width:MediaQuery.of(context).size.width-50,
                              child:
                              Text("Rate Us 5 Stars If You Like The App,You Can Contact Us At edapps.contact@gmail.com If You Found Any Bugs Or You Have Any Suggestions!"),
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            FlatButton.icon(
                              onPressed:_launchPlayStore,
                              icon:new Icon(Icons.star),
                              label:Text("Rate Now!"),
                            )
                          ],
                        ),


                      ],
                    ),
                  )
                )


),
              ),



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






