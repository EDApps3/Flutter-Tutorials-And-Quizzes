import 'dart:async';
import 'package:flutter/material.dart';
import 'SettingPage.dart';


class LeaderBoardPrizes extends StatefulWidget {
  @override
  LeaderBoardPrizesState createState() => LeaderBoardPrizesState();
}

class LeaderBoardPrizesState extends State<LeaderBoardPrizes> {
  var Wednesday=3;
  var NowDate = new DateTime.now();
  var WedDate = new DateTime.now();
  int SecondsLeft=0;
  Timer _timer;
  String TimeHHMMSS="";
  Color ThemeClr;

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
              NowDate = new DateTime.now();
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
    if(ThemeResult=="Light"){
      ThemeClr=Colors.black;
    }
    else{
      ThemeClr=Colors.white;
    }
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
}



void Calculate(){
  NowDate = new DateTime.now();
  WedDate = new DateTime.now();

  var Tomorrow = new DateTime(NowDate.year,NowDate.month,NowDate.day+1);
  var SecondsDayLeft=NowDate.difference(Tomorrow).inSeconds;

  while(WedDate.weekday!=Wednesday){
      WedDate=WedDate.add(new Duration(days: 1));
  }
  SecondsLeft=(WedDate.difference(NowDate).inSeconds)-SecondsDayLeft;
  startTimer(SecondsLeft);
}


Widget build(BuildContext context) {


  return Container(
             color:Colors.grey.withOpacity(0.2),
             child:ListTile(
            leading:Icon(Icons.info,color:ThemeClr,),
            title:Row(
              children: <Widget>[
                Text("Ranking Ends In: ",style:TextStyle(color:ThemeClr),),
                Text("$TimeHHMMSS",style:TextStyle(color:Colors.blue),),
              ],
            ),
            subtitle:Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: <Widget>[
                Text("Each Week Top3 Will Recieve Gifts",style:TextStyle(color:ThemeClr),),
                Row(
                  children: <Widget>[
                    Image.asset("Images/trophy.png",width:16,height:16,),
                    Text("1",style:TextStyle(color:ThemeClr),),
                    SizedBox(width:30,),
                    Image.asset("Images/coin.gif",width:16,height:16,),
                    Text("100",style:TextStyle(color:ThemeClr),),
                  ],
                ), 
                Row(
                  children: <Widget>[
                    Image.asset("Images/trophy.png",width:16,height:16,),
                    Text("2",style:TextStyle(color:ThemeClr),),
                    SizedBox(width:30,),
                    Image.asset("Images/coin.gif",width:16,height:16,),
                    Text("65",style:TextStyle(color:ThemeClr),)
                  ],
                ),
                Row(
                  children: <Widget>[
                    Image.asset("Images/trophy.png",width:16,height:16,),
                    Text("3",style:TextStyle(color:ThemeClr),),
                    SizedBox(width:30,),
                    Image.asset("Images/coin.gif",width:16,height:16,),
                    Text("30",style:TextStyle(color:ThemeClr),)
                  ],
                ),

              ],
            )
           ),
          
            );
          }

}