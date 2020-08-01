import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() => runApp(SizeTransMain());

class SizeRoute extends PageRouteBuilder {
  final Widget page;
  SizeRoute({this.page})
      : super(
    pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        ) =>
    page,
    transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
        ) =>
        Align(
          child: SizeTransition(
            sizeFactor: animation,
            child: child,
          ),
        ),
  );
}

class SizeTransMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Size Transition',
      theme:ThemeData.light(),
      home: Page1(),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title:'Page1',
      theme:ThemeData.light(),
      home:Scaffold(
          appBar:AppBar(
            title:Text("Size Transition - Page1"),
          ),
          body:
          Center(
            child:
            RaisedButton(
              child:Text("Go!"),
              onPressed: () => Navigator.push(
                  context, SizeRoute(page:Page2())),
            ),
          )
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title:'Page2',
      theme:ThemeData.dark(),
      home:Scaffold(
          appBar:AppBar(
            title:Text("Size Transition - Page2"),
          ),
          body:
          Center(
            child:
            RaisedButton(
              child:Text("Go Back!"),
              onPressed: () => Navigator.push(
                  context, SizeRoute(page:Page1())),
            ),
          )
      ),
    );
  }
}