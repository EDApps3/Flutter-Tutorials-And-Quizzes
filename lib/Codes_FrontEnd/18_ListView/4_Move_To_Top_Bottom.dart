import 'package:flutter/material.dart';

void main() {
  runApp(LVMoveTo());
}

class LVMoveTo extends StatelessWidget{
  ScrollController SCMoveTop = new ScrollController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "ListView Move To",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("ListView Move To"),
        ),
        body:ListView(
          controller:SCMoveTop,
          children: <Widget>[
            Container(
              color:Colors.teal,
              width:MediaQuery.of(context).size.width,
              height:300,
              child:Center(
                child:Text("1"),
              ),
            ),
            Container(
              color:Colors.purpleAccent,
              width:MediaQuery.of(context).size.width,
              height:300,
              child:Center(
                child:Text("2"),
              ),
            ),
            Container(
              color:Colors.orange,
              width:MediaQuery.of(context).size.width,
              height:300,
              child:Center(
                child:Text("3"),
              ),
            ),
            Container(
              color:Colors.yellow,
              width:MediaQuery.of(context).size.width,
              height:300,
              child:Center(
                child:Text("4"),
              ),
            )
          ],
        ),
        floatingActionButton:Column(
          mainAxisAlignment:MainAxisAlignment.end,
          children: <Widget>[
            Container(
              width:50,
              height:50,
              child:FloatingActionButton(
                heroTag:"MoveTop_Up",
                backgroundColor:Colors.deepOrange,
                child:Icon(Icons.arrow_drop_up),
                onPressed:(){
                  SCMoveTop.animateTo(
                    0,
                    duration:Duration(milliseconds:500),
                    curve:Curves.fastOutSlowIn,
                  );
                },
              ),
            ),
            SizedBox(height:6,),
            Container(
              width:50,
              height:50,
              child:FloatingActionButton(
                heroTag:"MoveTop_Down",
                backgroundColor:Colors.deepOrange,
                child:Icon(Icons.arrow_drop_down),
                onPressed:(){
                  SCMoveTop.animateTo(
                    SCMoveTop.position.maxScrollExtent,
                    duration:Duration(milliseconds:500),
                    curve:Curves.fastOutSlowIn,
                  );
                },
              ),
            ),

          ],
        ),



      ),



    );
  }

}










