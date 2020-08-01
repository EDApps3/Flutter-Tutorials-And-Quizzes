import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:toast/toast.dart';


void main() {
  runApp(SimpleMarquee());
}

class SimpleMarquee extends StatefulWidget {
  @override
  _SimpleMarqueeState createState() => _SimpleMarqueeState();
}

class _SimpleMarqueeState extends State<SimpleMarquee> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Simple Marquee",
      home:
      Scaffold(
          appBar:AppBar(
              title:
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child:
                  Marquee(
                    text:"Simple Marquee",
                    style:TextStyle(
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
            Navigator.of(context).pushReplacementNamed("/Marquee_Simple");
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
                      text:"Simple Marquee",
                      blankSpace:300,
                      scrollAxis:Axis.horizontal,
                    ),
                  )
              ),
              SizedBox(height:15),
              SizedBox(
                  width: 300,
                  height: 70,
                  child:
                  Card(
                    color:Colors.teal,
                    child:Marquee(
                      text:"Simple Marquee",
                      blankSpace:300,
                      scrollAxis:Axis.horizontal,
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



