import 'package:flutter/material.dart';
import 'package:backdrop/backdrop.dart';

void main() {
  runApp(new SimpleRightBackDrop());
}

class SimpleRightBackDrop extends StatefulWidget {
  @override
  _SimpleRightBackDropState createState() => _SimpleRightBackDropState();
}


class _SimpleRightBackDropState extends State<SimpleRightBackDrop> {

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
      title:"Right BackDrop",
      debugShowCheckedModeBanner:false,
      home:BackdropScaffold(
        iconPosition:BackdropIconPosition.none,
        title:Text("Right Backdrop"),
        backLayer:Center(
          child:Text("BackLayer"),
        ),
        frontLayer:Center(
          child:Text("BackLayer"),
        ),
        actions: <Widget>[
          BackdropToggleButton(
            icon:AnimatedIcons.close_menu,
          )
        ],

      ),
    );
  }

}






