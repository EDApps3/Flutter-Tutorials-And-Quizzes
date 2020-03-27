import 'package:flutter/material.dart';

void main() {
  runApp(TopTabBar());
}

class TopTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Top TabBar'),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.star),text:'T1',),
                Tab(icon: Icon(Icons.star_border),text:'T2',),
                Tab(icon: Icon(Icons.star_half),text:'T2',),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              StarPage(),
              BorderStarPage(),
              HalfStarPage(),
            ],
          ),
        ),
      ),
    );
  }
}

class StarPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("This Is Star Page!"),
            Text("Here Are A 5 Stars"),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Icon(Icons.star),
                new Icon(Icons.star),
                new Icon(Icons.star),
                new Icon(Icons.star),
                new Icon(Icons.star),
              ],
            ),

            SizedBox(height: 80,),

            Text("Place Everything You Want!"),
          ],
        ),
      ),
    );
  }
}



class BorderStarPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("This Is Border Star Page!"),
            Text("Here Are A 5 Stars"),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Icon(Icons.star_border),
                new Icon(Icons.star_border),
                new Icon(Icons.star_border),
                new Icon(Icons.star_border),
                new Icon(Icons.star_border),
              ],
            ),

            SizedBox(height: 80,),

            Text("Place Everything You Want!"),
          ],
        ),
      ),
    );
  }

}






class HalfStarPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("This Is Half Star Page!"),
            Text("Here Are A 5 Stars"),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Icon(Icons.star_half),
                new Icon(Icons.star_half),
                new Icon(Icons.star_half),
                new Icon(Icons.star_half),
                new Icon(Icons.star_half),
              ],
            ),

            SizedBox(height: 80,),

            Text("Place Everything You Want!"),
          ],
        ),
      ),
    );
  }

}