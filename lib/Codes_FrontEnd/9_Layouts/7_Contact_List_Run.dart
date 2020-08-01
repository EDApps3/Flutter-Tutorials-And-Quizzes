import 'package:flutter/material.dart';

void main() => runApp(CListRun());

class CListRun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Contact List",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: TestPage(),
    );
  }
}

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar:
      AppBar (
        title: Text ('Contact List'),
      ),
      body:
      Container (
        child: new ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Column (
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                  Row (
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Column (
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                           new Icon(Icons.account_circle,size: 90,)
                        ],
                      ),
                      Column (
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text (
                            'Alex Anderson',
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                          Text (
                            '76 404 762',
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ],
                ),
                  Row (
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Column (
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          new Icon(Icons.account_circle,size: 90,)
                        ],
                      ),
                      Column (
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text (
                            'John Anderson',
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                          Text (
                            '76 404 763',
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ],

                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
