import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MaterialApp(home: BottomTabBarHidden()));

class BottomTabBarHidden extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  ScrollController _hideButtonController;
  var TController;
  int SelectedPage=0;
  var _isVisible;
  
  @override
  initState() {
    TController=new TabController(length: 3, vsync: this);
    super.initState();
    _isVisible = true;
    _hideButtonController = new ScrollController();
    _hideButtonController.addListener(() {
      if (_hideButtonController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        setState(() {
          _isVisible = false;
          print("**** $_isVisible up");
        });
      }
      if (_hideButtonController.position.userScrollDirection ==
          ScrollDirection.forward) {
        setState(() {
          _isVisible = true;
          print("**** $_isVisible down");
        });
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: true,
      body:ListView(
        controller:_hideButtonController,
          children: <Widget>[
            (SelectedPage==0)?
              P1
            :(SelectedPage==1)?
              P2
            :P3,
            
          ],
        ),
      

      bottomNavigationBar: AnimatedContainer(
        color:Colors.blue,
        duration: Duration(milliseconds: 50),
        height: _isVisible ? 60.0 : 0.0,
        child: _isVisible
            ? AnimatedContainer(
                duration: Duration(milliseconds: 50),
                height: _isVisible ? 60.0 : 0.0,
                child: _isVisible
                    ?  TabBar(  
                controller:TController,
              tabs: [
                Tab(icon: Icon(Icons.star),text:'T1',),
                Tab(icon: Icon(Icons.star_border),text:'T2',),
                Tab(icon: Icon(Icons.star_half),text:'T2',),
              ],
              onTap:(index){
                setState(() {
                  SelectedPage=index;
                });
              },
            ): Container(
                        color: Colors.blue,
                        width: MediaQuery.of(context).size.width,
                      ),
              )
            : Container(
                color: Colors.transparent,
                width: MediaQuery.of(context).size.width,
              ),
      ),


    );
  }
}




class Page1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView(
          children:<Widget>[
            Image.asset("Images/S1.jpg"),
            Image.asset("Images/S1.jpg"),
            Image.asset("Images/S1.jpg"),
            Image.asset("Images/S1.jpg"),
            Image.asset("Images/S1.jpg"),
          ]
        );
    
  }
}


var P1=Column(
  children:<Widget>[
    Image.asset("Images/S1.jpg"),
    Image.asset("Images/S1.jpg"),
    Image.asset("Images/S1.jpg"),
    Image.asset("Images/S1.jpg"),
    Image.asset("Images/S1.jpg"),
  ]
);

var P2=Column(
  children:<Widget>[
    Image.asset("Images/S2.jpg"),
    Image.asset("Images/S2.jpg"),
    Image.asset("Images/S2.jpg"),
    Image.asset("Images/S2.jpg"),
    Image.asset("Images/S2.jpg"),
  ]
);

var P3=Column(
  children:<Widget>[
    Image.asset("Images/S3.jpg"),
    Image.asset("Images/S3.jpg"),
    Image.asset("Images/S3.jpg"),
    Image.asset("Images/S3.jpg"),
    Image.asset("Images/S3.jpg"),
  ]
);




