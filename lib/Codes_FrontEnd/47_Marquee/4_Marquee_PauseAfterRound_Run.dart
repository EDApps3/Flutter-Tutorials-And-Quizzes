import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:toast/toast.dart';

void main() {
  runApp(MarqueePauseAfterRound());
}

class MarqueePauseAfterRound extends StatefulWidget {

  @override
  _MarqueePauseAfterRoundState createState() => _MarqueePauseAfterRoundState();
}

class _MarqueePauseAfterRoundState extends State<MarqueePauseAfterRound> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Marquee Pause After Round",
      home:Scaffold(
        appBar:AppBar(
          title:Text("Marquee Pause After Round"),
        ),
        body:
        GestureDetector(
         onTap: (){
          Toast.show(
           "",
           context,
           duration: Toast.LENGTH_SHORT,
           gravity: Toast.BOTTOM,
           backgroundColor: Colors.transparent,
          );
          Navigator.of(context).pushReplacementNamed("/Marquee_PauseAfterRound");
         },
         child:
          ListView(
          scrollDirection:Axis.vertical,
          children: <Widget>[
            SizedBox(height:15),
            SizedBox(
                width: 300,
                height: 70,
                child:
                Card(
                  color:Colors.teal,
                  child:Marquee(
                    text:"pauseAfterRound:Duration(seconds:2)",
                    blankSpace:300,
                    scrollAxis:Axis.horizontal,
                    pauseAfterRound:Duration(seconds:2),
                  ),
                )
            ),
            SizedBox(height:15),
            SizedBox(
                width: 300,
                height: 70,
                child:
                Card(
                  color:Colors.blue,
                  child:Marquee(
                    text:"pauseAfterRound:Duration(seconds:5)",
                    blankSpace:300,
                    scrollAxis:Axis.horizontal,
                    pauseAfterRound:Duration(seconds:5),
                  ),
                )
            ),
          ],
        )
        ),
      ),
    );
  }

}



