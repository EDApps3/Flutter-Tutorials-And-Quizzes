import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';


void main() {
  runApp(FlipCardHorRun());
}

class FlipCardHorRun extends StatefulWidget{
  FlipCardHorRun({Key Key}) : super (key: Key);
  _FlipCardHorRunState createState() => _FlipCardHorRunState();
}


class _FlipCardHorRunState extends State<FlipCardHorRun> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "Flip Card Horizontal",
      home: new Scaffold(
        appBar:
        AppBar(
            title:Text("Flip Card Horizontal")
        ),
        body:

            Center(
              child:
                FlipCard(
                  direction:
                   FlipDirection.HORIZONTAL,
                  front:
                   Container(
                     width:150,
                     height:150,
                     color:Colors.yellow,
                     child:
                      Center(
                        child:Text("Front"),
                      )
                   ),
                  back:
                  Container(
                    width:150,
                    height:150,
                    color:Colors.orange,
                    child:
                     Center(
                       child:Text("Back"),
                     )
                  ),
                )
            ),
          ),

     );
  }

}








