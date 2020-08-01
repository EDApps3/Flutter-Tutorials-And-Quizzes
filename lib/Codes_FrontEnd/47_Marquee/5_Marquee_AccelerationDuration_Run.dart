import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:toast/toast.dart';

void main() {
  runApp(MarqueeAccelerationDur());
}

class MarqueeAccelerationDur extends StatefulWidget {
  @override
  _MarqueeAccelerationDurState createState() => _MarqueeAccelerationDurState();
}

class _MarqueeAccelerationDurState extends State<MarqueeAccelerationDur> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Marquee Acceleration Duration",
      home:Scaffold(
        appBar:AppBar(
          title:Text("Marquee Acceleration Duration"),
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
         Navigator.of(context).pushReplacementNamed("/Marquee_AccelerationDuration");
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
                    text:"accelerationDuration:Duration(seconds:2)",
                    blankSpace:300,
                    scrollAxis:Axis.horizontal,
                    accelerationDuration:Duration(seconds:2),
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
                    text:"accelerationDuration:Duration(seconds:10)",
                    blankSpace:300,
                    scrollAxis:Axis.horizontal,
                    accelerationDuration:Duration(seconds:10),
                  ),
                )
            ),
          ],
        ),
        ),
      ),
    );
  }

}



