import 'package:flutter/material.dart';

void main() => runApp(RailNavBar());


class RailNavBar extends StatefulWidget {
  @override
  _RailNavBarState createState() => _RailNavBarState();
}

class _RailNavBarState extends State<RailNavBar> {
  int SelectedPageIndex = 0;
  bool IsRailExtended=false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
          appBar:AppBar(
            title:Text("NavigationBar Rail"),
          ),
          body:Row(
            children: <Widget>[
              GestureDetector(
                onTap:(){
                  setState(() {
                    IsRailExtended=true;
                  });
                },
                child:NavigationRail(
                  elevation:13.0,
                  extended:IsRailExtended,
                  backgroundColor:Colors.teal,
                  labelType:(IsRailExtended==false)?NavigationRailLabelType.selected:NavigationRailLabelType.none,
                  selectedIndex:SelectedPageIndex,
                  selectedLabelTextStyle:TextStyle(
                    color:Colors.white
                  ),
                  selectedIconTheme:IconThemeData(color:Colors.white),
                  unselectedIconTheme:IconThemeData(color:Colors.black),
                  onDestinationSelected:(index){
                    setState(() {
                      SelectedPageIndex=index;
                      IsRailExtended=false;
                    });
                  },
                  destinations:[
                    NavigationRailDestination(
                        icon: Icon(Icons.add),
                        label: Text("Home")
                    ),
                    NavigationRailDestination(
                        icon: Icon(Icons.list),
                        label: Text("List")
                    ),
                    NavigationRailDestination(
                        icon: Icon(Icons.compare_arrows),
                        label: Text("Compare")
                    ),
                    NavigationRailDestination(
                        icon: Icon(Icons.call),
                        label: Text("Call")
                    ),
                  ],
                ),
              ),
              Expanded(
                child:GestureDetector(
                  onTap:(){
                    setState(() {
                      IsRailExtended=false;
                    });
                  },
                  child:Container(
                    color:Colors.white,
                    child:
                    (SelectedPageIndex ==0 )?
                      AddPage():
                    (SelectedPageIndex ==1 )?
                      ListPage():
                    (SelectedPageIndex ==2 )?
                      ComparePage():
                      CallPage(),
                  ),
                )
              )

            ],
          )

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


class CallPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:MainAxisAlignment.center,
      crossAxisAlignment:CrossAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.call, size: 30),
        Text("Call Page"),
      ],
    );
  }
}








