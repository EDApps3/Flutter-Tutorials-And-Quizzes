import 'package:flutter/material.dart';

void main() => runApp(SimplePageSelector());

class SimplePageSelector extends StatefulWidget{
  SimplePageSelector({Key Key}) : super (key: Key);
  _SimplePageSelectorState createState() => _SimplePageSelectorState();

}

class _SimplePageSelectorState extends State<SimplePageSelector> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar:AppBar(
          title:Text("Simple Page Selector"),
        ),
        body:
        DefaultTabController(
          length:3,
          child: Builder(
            builder: (BuildContext context) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Container(
                    width:double.infinity,
                    height: 200,
                      child: IconTheme(
                        data: IconThemeData(
                          size: 128.0,
                          color: Theme.of(context).accentColor,
                        ),
                        child:
                        TabBarView(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                new Icon(Icons.star),
                                Text("High Rated App!")
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                new Icon(Icons.chrome_reader_mode),
                                Text("You Can Run Codes And See Them!")
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                new Icon(Icons.av_timer),
                                Text("You Can Evaluate Yourself By Running Quizzes!")
                              ],
                            ),
                          ],
                        ),
                      ),
                  ),
                  TabPageSelector(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}