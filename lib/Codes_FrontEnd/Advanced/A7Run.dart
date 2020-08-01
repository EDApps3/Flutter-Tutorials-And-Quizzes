import 'package:flutter/material.dart';

void main() => runApp(A7Run());

class A7Run extends StatefulWidget {
  @override
  _A7State createState() => _A7State();
}

class _A7State extends State<A7Run> with TickerProviderStateMixin {
  AnimationController AC1,AC2,AC3,AC4,AC5,AC6,AC7;
  Animation<double> TB1,TB2,TB3,TB4,TB5,TB6,TB7;
  var BallsLeft=7;

  Animation<double> TB(double end,AnimationController AC){
    return Tween<double>(begin:0, end:end,).animate(
        CurvedAnimation(parent: AC,
          curve: Interval(
            0.0,
            0.75,
            curve:Curves.easeOut,
          ),
        ));
  }

  AnimationController AC(){
    return AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 500)
    )..addListener(() {
      setState(() {
      });
    });
  }


  @override
  initState() {

    AC1 = AC();
    AC2 = AC();
    AC3 = AC();
    AC4 = AC();
    AC5 = AC();
    AC6 = AC();
    AC7 = AC();

    TB1 = TB(300, AC1);
    TB2 = TB(250, AC2);
    TB3 = TB(210, AC3);
    TB4 = TB(180, AC4);
    TB5 = TB(164, AC5);
    TB6 = TB(154, AC6);
    TB7 = TB(144, AC7);


    super.initState();
  }

  @override
  dispose() {
    super.dispose();
  }

  Transform Ball(String TextNumber,var TB,AnimationController AC){
    return Transform(
      transform: Matrix4.translationValues(
        0.0,
          TB,
        0.0
      ),
      child:
          GestureDetector(
            onTap:(){
              AC.forward();
              setState(() {
                BallsLeft--;
              });
              if(BallsLeft==0){
                var alert = AlertDialog(
                    title:Text("Success!",),
                    content:
                    Container(
                      height: 180,
                      child: Column(
                        children: <Widget>[
                          Divider(color: Colors.black,),
                          Text(
                            "Restart The Game?",
                          ),
                          SizedBox(height: 7,),
                          RaisedButton(
                            child:Text("Yes"),
                            onPressed:(){
                              Restart();
                              Navigator.pop(context);
                            },
                          ),
                          RaisedButton(
                            child:Text("No"),
                            onPressed:(){
                              Navigator.pop(context);
                            },
                          ),

                        ],
                      ),
                    )
                );

                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return alert;
                    });
              }
            },
            child:ClipOval(
              child:Container(
                width:50,
                height:50,
                color:Colors.yellow,
                child:Center(
                  child:Text(TextNumber),
                ),
              ),
            ),
          )

    );
  }

  void Restart(){
    setState(() {
      BallsLeft=7;
    });
    AC1.reverse();
    AC2.reverse();
    AC3.reverse();
    AC4.reverse();
    AC5.reverse();
    AC6.reverse();
    AC7.reverse();
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Scaffold(
        appBar:AppBar(
            title:Text(
                "Balls Left:$BallsLeft"
            ),
          actions: <Widget>[
            (BallsLeft==0)?
                IconButton(
                  icon:Icon(Icons.threesixty),
                  onPressed:(){
                    Restart();                  },
                ):SizedBox(),
          ],

        ),
        body:Row(
          mainAxisAlignment:MainAxisAlignment.start,
          crossAxisAlignment:CrossAxisAlignment.start,
          children: <Widget>[

            Ball("1",TB1.value,AC1),
            Ball("2",TB2.value,AC2),
            Ball("3",TB3.value,AC3),
            Ball("4",TB4.value,AC4),
            Ball("5",TB5.value,AC5),
            Ball("6",TB6.value,AC6),
            Ball("7",TB7.value,AC7),

          ],
        )
      ),
    );
  }
}



