import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

void main() {
  runApp(FlipCardVertRun());
}

class FlipCardVertRun extends StatefulWidget{
  FlipCardVertRun({Key Key}) : super (key: Key);
  _FlipCardVertState createState() => _FlipCardVertState();
}


class _FlipCardVertState extends State<FlipCardVertRun> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "Flip Card Vertical",
      home: new Scaffold(
        appBar:
        AppBar(
            title:Text("Flip Card Vertical")
        ),
        body:

         Center(
              child:
                FlipCard(
                  direction:
                   FlipDirection.VERTICAL,
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








