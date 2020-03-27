import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:toast/toast.dart';

void main() {
  runApp(MarqueeCrossAxis());
}

class MarqueeCrossAxis extends StatefulWidget {
  @override
  _MarqueeCrossAxisState createState() => _MarqueeCrossAxisState();
}

class _MarqueeCrossAxisState extends State<MarqueeCrossAxis> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Marquee CrossAxisAlignement",
      home:Scaffold(
        appBar:AppBar(
          title:Text("Marquee CrossAxisAlignement"),
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
         Navigator.of(context).pushReplacementNamed("/Marquee_CrossAxis");
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
                    child:
                    Center(
                      child:
                        Text("Horizontally")
                    )
                )
            ),
            SizedBox(height:15),
            SizedBox(
                width: 300,
                height: 70,
                child:
                Card(
                  color:Colors.teal,
                  child:
                  Marquee(
                    text:"crossAxisAlignment:CrossAxisAlignment.center",
                    scrollAxis:Axis.horizontal,
                    blankSpace:300,
                    crossAxisAlignment:CrossAxisAlignment.center,
                  )
                )
            ),
            SizedBox(height:15),
            SizedBox(
                width: 300,
                height: 70,
                child:
                Card(
                    color:Colors.blueAccent,
                    child:
                    Marquee(
                      text:"crossAxisAlignment:CrossAxisAlignment.end",
                      scrollAxis:Axis.horizontal,
                      blankSpace:300,
                      crossAxisAlignment:CrossAxisAlignment.end,
                    )
                )
            ),
            SizedBox(height:15),
            SizedBox(
                width: 300,
                height: 70,
                child:
                Card(
                    color:Colors.red,
                    child:
                    Marquee(
                      text:"crossAxisAlignment:CrossAxisAlignment.start",
                      scrollAxis:Axis.horizontal,
                      blankSpace:300,
                      crossAxisAlignment:CrossAxisAlignment.start,
                    )
                )
            ),
            SizedBox(height:15),
            SizedBox(
                width: 300,
                height: 70,
                child:
                Card(
                    child:
                    Center(
                        child:
                        Text("Vertically")
                    )
                )
            ),
            SizedBox(height:15),
            SizedBox(
                width: 300,
                height: 70,
                child:
                Card(
                    color:Colors.teal,
                    child:
                    Marquee(
                      text:"crossAxisAlignment:CrossAxisAlignment.center",
                      scrollAxis:Axis.vertical,
                      blankSpace:100,
                      crossAxisAlignment:CrossAxisAlignment.center,
                    )
                )
            ),
            SizedBox(height:15),
            SizedBox(
                width: 100,
                height: 70,
                child:
                Card(
                    color:Colors.blueAccent,
                    child:
                    Marquee(
                      text:"crossAxisAlignment:CrossAxisAlignment.end",
                      scrollAxis:Axis.vertical,
                      blankSpace:300,
                      crossAxisAlignment:CrossAxisAlignment.end,
                    )
                )
            ),
            SizedBox(height:15),
            SizedBox(
                width: 100,
                height: 70,
                child:
                Card(
                    color:Colors.red,
                    child:
                    Marquee(
                      text:"crossAxisAlignment:CrossAxisAlignment.start",
                      scrollAxis:Axis.vertical,
                      blankSpace:300,
                      crossAxisAlignment:CrossAxisAlignment.start,
                    )
                )
            ),
          ],
        )
       ),
      ),
    );
  }

}



