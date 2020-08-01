import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() => runApp(SlideDownMain());

class SlideDownRoute extends PageRouteBuilder {
  final Widget page;
  SlideDownRoute({this.page})
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
        SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0,-1),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        ),
  );
}

class SlideDownMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Slide Down',
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
            title:Text("Slide Down - Page1"),
          ),
          body:
          Center(
            child:
            RaisedButton(
              child:Text("Go!"),
              onPressed: () => Navigator.push(
                  context, SlideDownRoute(page:Page2())),
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
            title:Text("Slide Down - Page2"),
          ),
          body:
          Center(
            child:
            RaisedButton(
              child:Text("Go Back!"),
              onPressed: () => Navigator.push(
                  context, SlideDownRoute(page:Page1())),
            ),
          )
      ),
    );
  }
}