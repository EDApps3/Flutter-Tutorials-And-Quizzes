import 'package:flutter/material.dart';

void main() {
  runApp(new TapCoords());
}


class TapCoords extends StatelessWidget {

  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('Tap The Body'),
        ),
        body: new MyWidget()
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MyWidgetState();
  }
}

class MyWidgetState extends State<MyWidget> {
  double posx = 0;
  double posy = 0;
  String Txt  = "Tap Here To Start!";

  void onTapDown(BuildContext context, TapDownDetails details) {
    final RenderBox box = context.findRenderObject();
    final Offset localOffset = box.globalToLocal(details.globalPosition);
    setState(() {
      posx = localOffset.dx;
      posy = localOffset.dy;
      Txt  ='Tapped\nX:$posx \nY:$posy';
    });
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTapDown: (TapDownDetails details) => onTapDown(context, details),
      child: new Stack(fit: StackFit.expand, children: <Widget>[
        new Container(color: Colors.white),
        new Positioned(
          child: new Text(Txt),
          left: posx,
          top: posy,
        )
      ]),
    );
  }
}