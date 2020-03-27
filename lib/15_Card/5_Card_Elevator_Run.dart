import 'package:flutter/material.dart';

void main() => runApp(CardElevatorRun());

class CardElevatorRun extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Test",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold (
        appBar:
        AppBar (
          title: Text ('Select From Menu'),
        ),
        body:
            Column(
              children: <Widget>[
                Card(
                  elevation: 20,
                  child:
                  ListTile (
                    title: Text ("Page1"),
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder:(context)=>Page1()));
                    },
                  ),
                ),
                Card(
                  elevation: 20,
                  child:
                  ListTile (
                    title: Text ("Page2"),
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder:(context)=>Page2()));
                    },
                  ),
                ),
              ],
            ),
      ),
    );
  }
}



class Page1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
       title: "Page1",
       debugShowCheckedModeBanner:false,
       home: Scaffold(
         appBar: AppBar(
           title: Text("Page1"),
           leading: IconButton(
              icon:new Icon(Icons.arrow_back),
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder:(context)=>CardElevatorRun()));
              },
           ),
         ),
         body:Text("Page1"),
       ),
     );
  }
}


class Page2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Page2",
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Page2"),
          leading: IconButton(
            icon:new Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>CardElevatorRun()));
            },
          ),
        ),
        body:Text("Page2"),
      ),
    );
  }
}

