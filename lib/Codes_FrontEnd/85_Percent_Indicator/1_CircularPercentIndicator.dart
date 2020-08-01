import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';


void main() {
  runApp(Circular_Percent_Indicator());
}

class Circular_Percent_Indicator extends StatefulWidget {
  @override
  _Circular_Percent_IndicatorState createState() => _Circular_Percent_IndicatorState();
}

class _Circular_Percent_IndicatorState extends State<Circular_Percent_Indicator> {

  @override
  void initState(){
    super.initState();
  }

  @override
  void dispose(){
    super.dispose();
  }
 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Scaffold(
        appBar:AppBar(
          title:Text("Circular Percent Indicator"),
        ),
        body:ListView(
          children: <Widget>[
            new CircularPercentIndicator(
                radius: 100.0,
                lineWidth: 10.0,
                percent: 0.8,
                header: new Text("Icon header"),
                center: new Icon(
                  Icons.person_pin,
                  size: 50.0,
                  color: Colors.blue,
                ),
                backgroundColor: Colors.grey,
                progressColor: Colors.blue,
              ),
              new CircularPercentIndicator(
                radius: 130.0,
                animation: true,
                animationDuration: 1200,
                lineWidth: 15.0,
                percent: 0.4,
                center: new Text(
                  "40 hours",
                  style:
                      new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                circularStrokeCap: CircularStrokeCap.butt,
                backgroundColor: Colors.yellow,
                progressColor: Colors.red,
              ),

          ],
        ),
      ),
    );
  }
}