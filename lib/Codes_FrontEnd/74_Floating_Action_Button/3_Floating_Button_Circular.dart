import 'package:flutter/material.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';

void main () {
  runApp(CircularFAB());
}

class CircularFAB extends StatefulWidget {
  @override
  _CircularFABState createState() => _CircularFABState();
}

class _CircularFABState extends State<CircularFAB> {
  int Counter=0;
  String IsOpened="No";
  String BtnText ="OpenMenu";

  final GlobalKey<FabCircularMenuState> fabKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(
          title:Text("Circular Animated Floating ")
        ),
        body:Row(
            crossAxisAlignment:CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(width:25),
              Text(
                "$Counter",
                style:TextStyle(
                  fontSize:60,
                  fontWeight:FontWeight.bold,
                ),
              ),
              SizedBox(width:35),
              Text("Opened?$IsOpened"),
              SizedBox(width:35),
              RaisedButton(
                onPressed: () {
                  if (fabKey.currentState.isOpen) {
                    fabKey.currentState.close();
                  } else {
                    fabKey.currentState.open();
                  }
                },
                color: Colors.white,
                child: Text(BtnText ),
              ),
            ],
          ),
        
        floatingActionButton: Builder(
          builder: (context) => FabCircularMenu(
            key: fabKey,
            alignment: Alignment.bottomRight,
            ringColor: Colors.teal,
            ringDiameter: 455.0,
            ringWidth: 80.0,
            fabSize: 50.0,
            fabElevation: 8.0,
            fabColor: Colors.green,
            fabOpenIcon: Icon(Icons.menu, color:Colors.white),
            fabCloseIcon: Icon(Icons.close, color:Colors.red),
            fabMargin: const EdgeInsets.all(20.0),
            animationDuration: const Duration(milliseconds: 800),
            animationCurve: Curves.easeInOutCirc,
            onDisplayChange: (isOpen) {
              if(isOpen){
                setState(() {
                  IsOpened="Yes";
                  BtnText ="Close Menu";
                });
              }
              else{
                setState(() {
                  IsOpened="No";
                  BtnText ="Open Menu";
                });
              }
            },
            children: <Widget>[
              SizedBox(),
              SizedBox(),              
              FloatingActionButton(
                heroTag:"FAB_Plus_1",
                child:Icon(Icons.plus_one),
                onPressed:(){
                  setState(() {
                    Counter=Counter+1;
                  });
                },
              ),
              FloatingActionButton(
                heroTag:"FAB_Plus_2",
                child:Icon(Icons.exposure_plus_2),
                onPressed:(){
                  setState(() {
                    Counter=Counter+2;
                  });
                },
              ),
              FloatingActionButton(
                heroTag:"FAB_Minus_1",
                child:Icon(Icons.exposure_neg_1),
                onPressed:(){
                  setState(() {
                    Counter=Counter-1;
                  });
                },
              ),
              FloatingActionButton(
                heroTag:"FAB_Minus_2",
                child:Icon(Icons.exposure_neg_2),
                onPressed:(){
                  setState(() {
                    Counter=Counter-2;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    
    );
  }


}