import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(TimerCountDownRun());


class TimerCountDownRun extends StatefulWidget {
  @override
  TimerCountDownState createState() => TimerCountDownState();
}

class TimerCountDownState extends State<TimerCountDownRun> {
  Timer _timer;
  int _start = 0;

  void startTimer(int timerDuration) {
    if (_timer != null) {
      _timer.cancel();
    }
    setState(() {
      _start = timerDuration;
    });
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) => setState(() {
        if (_start < 1) {
            timer.cancel();
        } else {
            _start = _start - 1;
        }
      }),
  );
}

void pauseTimer() {
  if (_timer != null){
   _timer.cancel();
  } 
}

void ContinueTimer(){
  startTimer(_start);
} 

@override
void dispose() {
  _timer.cancel();
  super.dispose();
}

@override
Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner:false,
    home:Scaffold(
      appBar: AppBar(
        title: Text('Timer CountDown'),
      ),
      body:Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child:Column(
          mainAxisAlignment:MainAxisAlignment.center,
          crossAxisAlignment:CrossAxisAlignment.center,
           children: <Widget>[
            Text(
              "$_start",
              style:TextStyle(fontSize:72,color:Colors.teal),
            ),

          Row(
            mainAxisAlignment:MainAxisAlignment.center,
            crossAxisAlignment:CrossAxisAlignment.center,
            children: <Widget>[

              FlatButton.icon(
                onPressed:(){
                  startTimer(10);
                },
                icon:Icon(Icons.replay),
                label:Text("Restart")
              ),

              FlatButton.icon(
                onPressed:(){
                  pauseTimer();
                },
                icon:Icon(Icons.pause),
                label:Text("Pause")
              ),

              FlatButton.icon(
                onPressed:(){
                  ContinueTimer();
                },
                icon:Icon(Icons.play_arrow),
                label:Text("Continue")
              ),
              
            ],
          )

        ],
      ),
      )
    ),
  );
}

}