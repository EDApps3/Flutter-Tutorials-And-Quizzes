import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

void main() {
  runApp(SimpleSlidingUpPanel());
}


class SimpleSlidingUpPanel extends StatefulWidget {
  @override
  _SimpleSlidingUpPanelState createState() => new _SimpleSlidingUpPanelState();
}

class _SimpleSlidingUpPanelState extends State<SimpleSlidingUpPanel> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Sliding Up Panel',
      home: new Scaffold(
        appBar:AppBar(
            title: Text('Sliding Up Panel')
        ),
        body:
         Stack(
           children:<Widget>[

             Center(
               child:Text(
                   "Here The Body Contents Go Before Sliding,Slide The Panel Up And See What Gonna Happen!"
               ),
             ),


             SlidingUpPanel(
               color:Colors.transparent,

               collapsed: Container(
                 decoration:BoxDecoration(
                 color:Colors.teal,
                 borderRadius:BorderRadius.only(
                   topLeft:Radius.circular(24.0),
                   topRight:Radius.circular(24.0),
                 ),
                ),
                child:Center(
                 child:
                  Text(
                   "Slide Me Up!",
                   style:TextStyle(
                    color:Colors.white30,
                   ),
                  ),
                ),
               ),


              panel: Column(
                mainAxisAlignment:MainAxisAlignment.center,
                crossAxisAlignment:CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height:10,),
                  Text("Sliding Done!"),
                  Divider(),
                  Text("Slide It Back Down!"),
                ],
              ),

            ),
           ],
         ),
      ),
    );
  }
}







