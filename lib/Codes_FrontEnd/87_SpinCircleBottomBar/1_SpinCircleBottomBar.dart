import 'package:flutter/material.dart';
import 'package:spincircle_bottom_bar/modals.dart';
import 'package:spincircle_bottom_bar/spincircle_bottom_bar.dart';

void main() {
  runApp(SpinCircleBottomBarRun());
}

class SpinCircleBottomBarRun extends StatefulWidget {
  @override
  SpinCircleBottomBarState createState() => SpinCircleBottomBarState();
}

class SpinCircleBottomBarState extends State<SpinCircleBottomBarRun> {
  int SelectedPageIndex=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner:false,
       title:"Spin Circle Bottom Bar",
       home:Scaffold(
        appBar: AppBar(
          title: Text("Spin Circle Bottom Bar"),
        ),
        body: SpinCircleBottomBarHolder(
          bottomNavigationBar: SCBottomBarDetails(
              circleColors: [Colors.blueAccent, Colors.teal, Colors.redAccent],
              iconTheme: IconThemeData(color: Colors.white),
              activeIconTheme: IconThemeData(color: Colors.black),
              backgroundColor: Colors.blue,
              titleStyle: TextStyle(color: Colors.white,fontSize: 12),
              activeTitleStyle: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),
              actionButtonDetails: SCActionButtonDetails(
                  color: Colors.black,
                  icon: Icon(
                    Icons.expand_less,
                    color: Colors.white,
                  ),
                  elevation: 2),
              elevation: 2.0,
              items: [
                SCBottomBarItem(
                  icon: Icons.verified_user,
                  title: "User",
                  onPressed: () {
                    setState(() {
                      SelectedPageIndex=0;
                    });
                  }
                ),
                SCBottomBarItem(
                  icon: Icons.message,
                  title: "Message",
                  onPressed: () {
                    setState(() {
                      SelectedPageIndex=1;
                    });
                  }
                ),
                SCBottomBarItem(
                  icon: Icons.info,
                  title: "Info",
                  onPressed: () {
                    setState(() {
                      SelectedPageIndex=2;
                    });
                  }
                ),
                SCBottomBarItem(
                  icon: Icons.call,
                  title: "Call",
                  onPressed: () {
                    setState(() {
                      SelectedPageIndex=3;
                    });
                  }
                ),

              ],
              circleItems: [
                SCItem(icon: Icon(Icons.add), onPressed: () {}),
                SCItem(icon: Icon(Icons.print), onPressed: () {}),
                SCItem(icon: Icon(Icons.map), onPressed: () {}),
              ],
              bnbHeight: 80 
          ),
          child:Container(
            width :MediaQuery.of(context).size.width,
            height:MediaQuery.of(context).size.height,
            child:
              (SelectedPageIndex==0)?
                UserPage():
              (SelectedPageIndex==1)?
                MessagePage():
              (SelectedPageIndex==2)?
                InfoPage()
              :CallPage(),
          ),
        ),
      ),
    );
  }
}



class UserPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:MainAxisAlignment.center,
      crossAxisAlignment:CrossAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.verified_user, size: 30),
        Text("User Page")
      ],
    );
  }
}

class MessagePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:MainAxisAlignment.center,
      crossAxisAlignment:CrossAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.message, size: 30),
        Text("Message Page")
      ],
    );
  }
}


class InfoPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:MainAxisAlignment.center,
      crossAxisAlignment:CrossAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.info, size: 30),
        Text("Info Page")
      ],
    );
  }
}



class CallPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:MainAxisAlignment.center,
      crossAxisAlignment:CrossAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.call, size: 30),
        Text("Call Page")
      ],
    );
  }
}