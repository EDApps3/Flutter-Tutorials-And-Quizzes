import 'package:flutter/material.dart';
import 'package:backdrop/backdrop.dart';

void main() {
  runApp(new SimpleLeftBackDrop());
}

class SimpleLeftBackDrop extends StatefulWidget {
  @override
  _SimpleLeftBackDropState createState() => _SimpleLeftBackDropState();
}


class _SimpleLeftBackDropState extends State<SimpleLeftBackDrop> {

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
      title:"Left BackDrop",
      debugShowCheckedModeBanner:false,
      home:BackdropScaffold(
          iconPosition:BackdropIconPosition.leading,
          title: Text("Left Backdrop"),
          backLayer:Center(
            child:Text("BackLayer"),
          ),
          frontLayer:Center(
            child:Text("BackLayer"),
          ),
        ),
    );
  }

}






