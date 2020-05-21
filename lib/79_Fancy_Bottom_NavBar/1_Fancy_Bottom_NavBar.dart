import 'package:flutter/material.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';

void main() => runApp(FancyBottomNavBarRun());

class FancyBottomNavBarRun extends StatefulWidget {
  @override
  _FancyBottomNavBarState createState() => _FancyBottomNavBarState();
}

class _FancyBottomNavBarState extends State<FancyBottomNavBarRun> {
  int currentPage = 0;
  GlobalKey bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Scaffold(
        appBar: AppBar(
          title: Text("Fancy Bottom Navigation"),
        ),
        body:Container(
          width:MediaQuery.of(context).size.width,
          height:MediaQuery.of(context).size.height,
          child:
           (currentPage ==0 )?
             AddPage():
           (currentPage ==1 )?
             ListPage():
             ComparePage(),
        ),
        bottomNavigationBar: FancyBottomNavigation(
          initialSelection:0,
          key: bottomNavigationKey,
          circleColor:Colors.teal,
          inactiveIconColor:Colors.white,
          barBackgroundColor:Colors.lightBlueAccent,
          tabs: [
            TabData(
                iconData: Icons.add,
                title: "Add",
                onclick: () {}
            ),
            TabData(
                iconData: Icons.list,
                title: "List",
                onclick: () {}
            ),
            TabData(
                iconData: Icons.compare_arrows,
                title: "Compare",
                onclick: () {}
            ),
          ],
          onTabChangedListener: (indexPage) {
            setState(() {
              currentPage = indexPage;
            });
          },
        ),
      ),
    );
  }

}


class AddPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:MainAxisAlignment.center,
      crossAxisAlignment:CrossAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.add, size: 30),
        Text("Add Page")
      ],
    );
  }
}

class ListPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:MainAxisAlignment.center,
      crossAxisAlignment:CrossAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.list, size: 30),
        Text("List Page")
      ],
    );
  }
}

class ComparePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:MainAxisAlignment.center,
      crossAxisAlignment:CrossAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.compare_arrows, size: 30),
        Text("Compare Page")
      ],
    );
  }
}
