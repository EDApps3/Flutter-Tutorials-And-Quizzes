import 'package:flutter/material.dart';
import 'package:kf_drawer/kf_drawer.dart';



void main() {
  runApp(KFDrawerRun());
}

class KFDrawerRun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainWidget(),
    );
  }
}

class MainWidget extends StatefulWidget {
  MainWidget({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> with TickerProviderStateMixin {
  KFDrawerController _drawerController;

  @override
  void initState() {
    super.initState();
    _drawerController = KFDrawerController(
      initialPage: Page1(),
      items: [
        KFDrawerItem.initWithPage(
          text: Text('Page1', style: TextStyle(color: Colors.white)),
          icon: Icon(Icons.home, color: Colors.white),
          page: Page1(),
        ),
        KFDrawerItem.initWithPage(
          text: Text('Page2', style: TextStyle(color: Colors.white)),
          icon: Icon(Icons.home, color: Colors.white),
          page: Page2(),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Scaffold(
      body: KFDrawer(
       borderRadius: 30.0,
       shadowBorderRadius: 30.0,
       menuPadding: EdgeInsets.all(5.0),
       scrollable: true,
        controller: _drawerController,
        header: Align(
          alignment: Alignment.centerLeft,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            width: MediaQuery.of(context).size.width * 0.6,
            child: Image.asset(
              'assets/logo.png',
              alignment: Alignment.centerLeft,
            ),
          ),
        ),
        footer: KFDrawerItem(
          text: Text(
            'SIGN IN',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(
            Icons.input,
            color: Colors.white,
          ),    
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color.fromRGBO(255, 255, 255, 1.0), Color.fromRGBO(44, 72, 171, 1.0)],
            tileMode: TileMode.repeated,
          ),
        ),
       ),
      ),
    );
  }
}





class Page1 extends KFDrawerContent {
  @override
  Page1State createState() => Page1State();
}

class Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) { 
    return SafeArea(
      child: Center(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  child: Material(
                    shadowColor: Colors.transparent,
                    color: Colors.transparent,
                    child: IconButton(
                      icon: Icon(
                        Icons.menu,
                        color: Colors.black,
                      ),
                      onPressed: widget.onMenuPressed,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Page1'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    
  }
}




class Page2 extends KFDrawerContent {
  @override
  Page2State createState() => Page2State();
}

class Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) { 
    return SafeArea(
      child: Center(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  child: Material(
                    shadowColor: Colors.transparent,
                    color: Colors.transparent,
                    child: IconButton(
                      icon: Icon(
                        Icons.menu,
                        color: Colors.black,
                      ),
                      onPressed: widget.onMenuPressed,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Page2'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    
  }
}