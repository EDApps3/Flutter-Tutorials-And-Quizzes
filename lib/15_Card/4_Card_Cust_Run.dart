import 'package:flutter/material.dart';

void main() => runApp(CustCardRun());

class CustCardRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold (
        appBar:
        AppBar (
          title:
          Text ('Cutomized Card'),
        ),
        body:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                SizedBox(
                  width: double.infinity,
                  height: 200,
                  child:Card(
                    child:
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              "Images/160x160_Flutter.png",
                              width: 100,
                              height: 100,
                            ),
                            Text("Flutter!")
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("What An Amazing Framework!")
                          ],
                        )
                      ],
                    ),
                  ),
                ),

              ],
            ),

          ),

    );
  }
}


