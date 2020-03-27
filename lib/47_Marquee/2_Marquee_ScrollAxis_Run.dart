import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:toast/toast.dart';

void main() {
  runApp(MarqueeScrollAxis());
}

class MarqueeScrollAxis extends StatefulWidget {

  @override
  _MarqueeScrollAxisState createState() => _MarqueeScrollAxisState();
}

class _MarqueeScrollAxisState extends State<MarqueeScrollAxis> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Marquee ScrollAxis",
      home:Scaffold(
        appBar:AppBar(
          title:Text("Marquee ScrollAxis"),
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
         Navigator.of(context).pushReplacementNamed("/Marquee_ScrollAxis");
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
                         text:"scrollAxis:Axis.horizontal",
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
                    color:Colors.blue,
                    child:Marquee(
                      text:"scrollAxis:Axis.vertical",
                      blankSpace:100,
                      scrollAxis:Axis.vertical,
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



