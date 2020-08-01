import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';


void main() {
  runApp(Advanced_Indicator());
}

class Advanced_Indicator extends StatefulWidget {
  @override
  _Advanced_IndicatorState createState() => _Advanced_IndicatorState();
}

class _Advanced_IndicatorState extends State<Advanced_Indicator> {
  String PercNumTxt = "40%";
  double PercNumVal = 0.4;

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
          title:Text("Advanced Indicator"),
        ),
        body:ListView(
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.all(28.0),
              child: new LinearPercentIndicator(
                  animation:true,
                  width:MediaQuery.of(context).size.width-60,
                  lineHeight: 30.0,
                  percent: PercNumVal,
                  center: Text(
                    PercNumTxt,
                    style: new TextStyle(fontSize: 12.0),
                  ),
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  backgroundColor: Colors.grey,
                  progressColor: Colors.blue,
                ),
            ),

            Row(
              mainAxisAlignment:MainAxisAlignment.center ,
              children: <Widget>[
                RaisedButton(
                  onPressed:(){
                    setState(() {
                      if(PercNumVal < 1.0){
                       PercNumVal=((PercNumVal*100)+10)/100;
                       PercNumTxt=(PercNumVal*100).toString()+" %";
                      }
                    });
                  },
                  child:Text("+10%"),
                ),
                RaisedButton(
                  onPressed:(){
                    setState(() {
                      if(PercNumVal > 0.0){
                       PercNumVal=((PercNumVal*100)-10)/100;
                       PercNumTxt=(PercNumVal*100).toString()+" %";
                      }
                    });
                  },
                  child:Text("-10%"),
                ),
                RaisedButton(
                  onPressed:(){
                    setState(() {
                      PercNumVal=1.0;
                      PercNumTxt="100.0 %";
                    });
                  },
                  child:Text("100%"),
                ),
                RaisedButton(
                  onPressed:(){
                    setState(() {
                      PercNumVal=0.0;
                      PercNumTxt="0.0 %";
                    });
                  },
                  child:Text("0%"),
                ),

              ],
            )
            

            

              




          ],
        ),
      ),
    );
  }
}