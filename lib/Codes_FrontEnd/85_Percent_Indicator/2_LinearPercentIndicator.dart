import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';


void main() {
  runApp(Linear_Percent_Indicator());
}

class Linear_Percent_Indicator extends StatefulWidget {
  @override
  _Linear_Percent_IndicatorState createState() => _Linear_Percent_IndicatorState();
}

class _Linear_Percent_IndicatorState extends State<Linear_Percent_Indicator> {

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
          title:Text("Linear Percent Indicator"),
        ),
        body:ListView(
          children: <Widget>[

            new LinearPercentIndicator(
                width: 140.0,
                lineHeight: 14.0,
                percent: 0.5,
                center: Text(
                  "50.0%",
                  style: new TextStyle(fontSize: 12.0),
                ),
                trailing: Icon(Icons.mood),
                linearStrokeCap: LinearStrokeCap.roundAll,
                backgroundColor: Colors.grey,
                progressColor: Colors.blue,
              ),
            

            LinearPercentIndicator(
                width: 170.0,
                animation: true,
                animationDuration: 1000,
                lineHeight: 20.0,
                leading: new Text("left content"),
                trailing: new Text("right content"),
                percent: 0.2,
                center: Text("20.0%"),
                linearStrokeCap: LinearStrokeCap.butt,
                progressColor: Colors.red,
              ),

              




          ],
        ),
      ),
    );
  }
}