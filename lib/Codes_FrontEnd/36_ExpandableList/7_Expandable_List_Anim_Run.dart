import 'package:animator/animator.dart';
import 'package:flutter/material.dart';


void main() => runApp(ExpandableListAnimationRun());

class ExpandableListAnimationRun extends StatefulWidget {
  @override
  _ExpLstAnimState createState() => new _ExpLstAnimState();
}

class _ExpLstAnimState extends State<ExpandableListAnimationRun> {

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Quizz Icon',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:Scaffold(
        appBar:AppBar(
          title:Text("Expandable List Animation"),
        ),
        body:
         ListView(
           children: <Widget>[
             Column(
               children:<Widget>[
                 SizedBox(height: 20,),
                 Text(
                   "Select Wanted Option!",
                   style: TextStyle(
                     color: Colors.red,
                     fontSize: 24,
                   ),
                 ),
                 ExpansionTile (
                   title:
                   Container(
                     child:
                     Row(
                       children: <Widget>[
                         SizedBox(
                           width:MediaQuery.of(context).size.width -105,
                           child:
                           Text (
                             "Expandable List",
                             style: TextStyle(
                               fontFamily: "PT Mono",
                             ),
                           ),
                         ),
                         Animator(
                           duration:Duration(milliseconds:1400),
                           tween: Tween<double>(begin:0.5,end:1.0),
                           curve: Curves.elasticOut,
                           cycles:0,
                           builder:(anim)=>Transform.scale(
                               scale: anim.value,
                               child:
                               GestureDetector(
                                 child:
                                 Image.asset(
                                   "Images/Quizz.png",
                                   width: 31,
                                   height: 31,
                                 ),
                               )
                           ),
                         ),
                       ],
                     ),
                   ),
                   children: <Widget>[
                     Divider(color: Colors.grey,),
                     ListTile (
                       title: Text ("Quizz 1"),
                       subtitle: Text ("Oh Its A Test Only!"),
                     ),
                   ],
                 ),
               ],
             ),
           ],
         )
      ),
    );
  }
}

