import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_tutorials_and_quizzes/Codes_FrontEnd/12_Navigation/1_Navigator_Pages_Run.dart';

void main() => runApp(TopTabBarHidden());

class TopTabBarHidden extends StatelessWidget {
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
  int SelectedPage=0;
  var TController;

  @override
  initState() {
    TController=new TabController(length: 3, vsync: this);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: true,
      drawer: Container(),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              title:  TabBar(  
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
            ),
              elevation: 10.0,
              automaticallyImplyLeading: false,
              expandedHeight:50,
              floating: true,
              snap: true,
            )
          ];
        },
        body:
         (SelectedPage==0)?
          Page1():
         (SelectedPage==1)?
          Page2():
          Page3(),
         
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

class Page2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView(
          children:<Widget>[
            Image.asset("Images/S2.jpg"),
            Image.asset("Images/S2.jpg"),
            Image.asset("Images/S2.jpg"),
            Image.asset("Images/S2.jpg"),
            Image.asset("Images/S2.jpg"),
          ]
        );
    
  }
}


class Page3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView(
          children:<Widget>[
            Image.asset("Images/S3.jpg"),
            Image.asset("Images/S3.jpg"),
            Image.asset("Images/S3.jpg"),
            Image.asset("Images/S3.jpg"),
            Image.asset("Images/S3.jpg"),
          ]
        );
    
  }
}


