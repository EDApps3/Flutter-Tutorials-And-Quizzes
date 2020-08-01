import 'dart:async';
import 'package:flutter/material.dart';

void main() => runApp(TimerDaysCountDownRun());

class TimerDaysCountDownRun extends StatefulWidget {
  @override
  TimerDaysCountDownState createState() => TimerDaysCountDownState();
}

class TimerDaysCountDownState extends State<TimerDaysCountDownRun> {
  var Tuesday=2;
  var NowDate = new DateTime.now();
  var WedDate = new DateTime.now();
  int SecondsLeft=0;
  Timer _timer;
  String TimeHHMMSS="";

  void startTimer(int timerDuration) {
    if (_timer != null) {
      _timer.cancel();
    }
    setState(() {
      SecondsLeft = timerDuration;
    });
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) => setState(() {
        if (SecondsLeft < 1) {
            timer.cancel();
        } else {
           setState(() {
              SecondsLeft = SecondsLeft - 1;
              formatHHMMSS(SecondsLeft);
           });
        }
      },
    ),
  );
}


  @override
  void initState(){
    super.initState();
    Calculate();
  }

  @override
  void dispose(){
    super.dispose();
    _timer.cancel();
  }

void formatHHMMSS(int seconds) {
  int hours = (seconds / 3600).truncate();
  seconds = (seconds % 3600).truncate();
  int minutes = (seconds / 60).truncate();

  String hoursStr = (hours).toString().padLeft(2, '0');
  String minutesStr = (minutes).toString().padLeft(2, '0');
  String secondsStr = (seconds % 60).toString().padLeft(2, '0');

  if (hours == 0) {
    TimeHHMMSS="00:$minutesStr:$secondsStr";
  }
  else{
    TimeHHMMSS="$hoursStr:$minutesStr:$secondsStr";
  }
  print(TimeHHMMSS);
}



void Calculate(){
  NowDate = new DateTime.now();
  var Tomorrow = new DateTime(NowDate.year,NowDate.month,NowDate.day+1);
  var SecondsDayLeft=NowDate.difference(Tomorrow).inSeconds;


  while(WedDate.weekday!=Tuesday){
      WedDate=WedDate.add(new Duration(days: 1));
  }
  SecondsLeft=(WedDate.difference(NowDate).inSeconds)-SecondsDayLeft;
  startTimer(SecondsLeft);
}


Widget build(BuildContext context) {


  return MaterialApp(
    debugShowCheckedModeBanner:false,
    home:Scaffold(
    appBar: AppBar(
      title: Text("Day CountDown")
    ),
    body: Padding(
      padding: const EdgeInsets.all(13.0),
      child: Column(
        mainAxisAlignment:MainAxisAlignment.center,
        crossAxisAlignment:CrossAxisAlignment.start,
        children: <Widget>[

          Text("Current Date:",style:TextStyle(color:Colors.blue,fontSize:30),),
          Text(
                "$NowDate",
                style:TextStyle(fontSize:18,color:Colors.teal),
          ),
          SizedBox(height:10,),

          Text("Next WednesDay On:",style:TextStyle(color:Colors.blue,fontSize:30),),
          Text(
                "$WedDate",
                style:TextStyle(fontSize:18,color:Colors.teal),
          ),
          SizedBox(height:10,),

          Text("Seconds Left:",style:TextStyle(color:Colors.blue,fontSize:30),),
          Text(
                "$SecondsLeft",
                style:TextStyle(fontSize:18,color:Colors.teal),
          ),
          SizedBox(height:10,),

          Text("Time Left:",style:TextStyle(color:Colors.blue,fontSize:30),),
          Text(
                "$TimeHHMMSS",
                style:TextStyle(fontSize:18,color:Colors.teal),
          ),
          SizedBox(height:10,),


         

        ],
      ),
    ),
  ),
  );
}

}