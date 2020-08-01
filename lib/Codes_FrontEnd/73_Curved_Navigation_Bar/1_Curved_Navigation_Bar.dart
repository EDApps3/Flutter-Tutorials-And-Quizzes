import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() => runApp(CurvedNavBar());

GlobalKey _bottomNavigationKey = GlobalKey();

class CurvedNavBar extends StatefulWidget {
  @override
  _CurvedNavBarState createState() => _CurvedNavBarState();
}

class _CurvedNavBarState extends State<CurvedNavBar> {
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
         appBar:AppBar(
           title:Text("Curved Navigation Bar"),
         ),
          bottomNavigationBar: CurvedNavigationBar(
            key: _bottomNavigationKey,
            index: 0,
            height: 50.0,
            items: <Widget>[
              Icon(Icons.add, size: 30),
              Icon(Icons.list, size: 30),
              Icon(Icons.compare_arrows, size: 30),
              Icon(Icons.call, size: 30),
            ],
            color: Colors.white,
            buttonBackgroundColor: Colors.blue,
            backgroundColor: Colors.teal,
            animationCurve: Curves.easeInOut,
            animationDuration: Duration(milliseconds: 600),
            onTap: (index) {
              setState(() {
                _page = index;
              });
            },
          ),
          body:
           (_page ==0 )?
              AddPage():
           (_page ==1 )?
              ListPage():
           (_page ==2 )?
              ComparePage():
           CallPage()
       ),
    );
  }
}


class AddPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
        width:MediaQuery.of(context).size.width,
    height:MediaQuery.of(context).size.height,
    child:Column(
      mainAxisAlignment:MainAxisAlignment.center,
      crossAxisAlignment:CrossAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.add, size: 30),
        Text("Add Page")
      ],
    ),
    );
  }
}

class ListPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width:MediaQuery.of(context).size.width,
      height:MediaQuery.of(context).size.height,
      child:Column(
        mainAxisAlignment:MainAxisAlignment.center,
        crossAxisAlignment:CrossAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.list, size: 30),
          Text("List Page")
        ],
      ),
    );
  }
}

class ComparePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
        width:MediaQuery.of(context).size.width,
    height:MediaQuery.of(context).size.height,
    child:Column(
      mainAxisAlignment:MainAxisAlignment.center,
      crossAxisAlignment:CrossAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.compare_arrows, size: 30),
        Text("Compare Page")
      ],
    ),
    );
  }
}

class CallPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
        width:MediaQuery.of(context).size.width,
    height:MediaQuery.of(context).size.height,
    child:Column(
      mainAxisAlignment:MainAxisAlignment.center,
      crossAxisAlignment:CrossAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.call, size: 30),
        Text("Call Page"),
        RaisedButton(
          child: Text('Go To List Page'),
          onPressed: () {
            final CurvedNavigationBarState navBarState = _bottomNavigationKey.currentState;
            navBarState.setPage(1);
          },
        )
      ],
    ),
    );
  }
}








