import 'package:flutter/material.dart';

void main() => runApp(GradientAppBarRun());

class GradientAppBarRun extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light (),
      home:
      Scaffold (
        body:
         CustomScrollView (
          slivers: <Widget>[
            SliverAppBar (
              pinned: true,
              expandedHeight: 50,
              flexibleSpace: Container (
                decoration: BoxDecoration (
                  gradient: LinearGradient (
                    colors: [
                      Colors.deepPurpleAccent,
                      Colors.yellowAccent,
                    ],
                  ),
                ),
              ),
              title: Text ("Gradiant AppBar!"),
            ),
            SliverList (
              delegate: SliverChildListDelegate ([
                  //Body Element
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}




