import 'package:flutter/material.dart';

void main() => runApp(SimplePageSelectorBtn());

class SimplePageSelectorBtn extends StatefulWidget{
  SimplePageSelectorBtn({Key Key}) : super (key: Key);
  _SimplePageSelectorBtnState createState() => _SimplePageSelectorBtnState();

}

class _SimplePageSelectorBtnState extends State<SimplePageSelectorBtn> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar:AppBar(
          title:Text("Page Selector With Buttons"),
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
                        child: TabBarView(
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton(
                        child: Text('<'),
                        onPressed: () {
                          final TabController controller =
                          DefaultTabController.of(context);
                          if (!controller.indexIsChanging && controller.index!=0 ) {
                            controller.animateTo(controller.index-1);
                          }
                        },
                      ),
                      RaisedButton(
                        child: Text('Skip'),
                        onPressed: () {
                          final TabController controller =
                          DefaultTabController.of(context);
                          if (!controller.indexIsChanging) {
                            controller.animateTo(2);
                          }
                        },
                      ),
                      RaisedButton(
                        child: Text('>'),
                        onPressed: () {
                          final TabController controller =
                          DefaultTabController.of(context);
                          if (!controller.indexIsChanging && controller.index!=2 ) {
                            controller.animateTo(controller.index+1);
                          }
                        },
                      ),

                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}