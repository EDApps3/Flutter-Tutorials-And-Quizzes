import 'package:flutter/material.dart';

Color Clr = Colors.deepPurple;
Icon Ic   = new Icon(Icons.home);
String BarTitle="Home";
PageController pageController;


void main() => runApp(new NavBarFooterRun());

class NavBarFooterRun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Bottom Navigation',
      debugShowCheckedModeBanner: false,
      home: new DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => new _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _page = 0;

  @override
  void initState() {
    super.initState();
    pageController = new PageController();
  }


  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }


  void navigationTapped(int page) {
    pageController.animateToPage(page,
        duration: const Duration(milliseconds: 600), curve: Curves.ease);

  }

  void onPageChanged(int page) {
    setState(() {

      if(page==2){
        Clr=Colors.teal;
        Ic=new Icon(Icons.account_circle);
        BarTitle="SignIn";
      }
      else if(page==1){
        Clr=Colors.red;
        Ic=new Icon(Icons.add);
        BarTitle="SignUp";
      }
      else if(page==0){
        Clr=Colors.deepPurple;
        Ic=new Icon(Icons.home);
        BarTitle="Home";
      }

      this._page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Clr,
        leading: Ic,
        title: new Text(
          BarTitle,
          style: new TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: new PageView(
        children: [
          new Home(),
          new SignUp(),
          new SignIn(),
        ],
        onPageChanged: onPageChanged,
        controller: pageController,
      ),
      bottomNavigationBar: new BottomNavigationBar(
        backgroundColor: Clr,
        items: [
          new BottomNavigationBarItem(
              icon: new Icon(
                Icons.home,
                color:Colors.white,
              ),
              title: new Text(
                "Home",
                style: new TextStyle(
                  color:Colors.white,
                ),
              )),
          new BottomNavigationBarItem(
              icon: new Icon(
                Icons.add,
                color: Colors.white,
              ),
              title: new Text(
                "SignUp",
                style: new TextStyle(
                  color: Colors.white,
                ),
              )),

          new BottomNavigationBarItem(
              icon: new Icon(
                Icons.account_circle,
                color: Colors.white,
              ),
              title: new Text(
                "SignIn",
                style: new TextStyle(
                  color: Colors.white,
                ),
              ))
        ],
        onTap: navigationTapped,
        currentIndex: _page,
      ),
    );
  }
}



class SignIn extends StatelessWidget {
  TextEditingController _Em = new TextEditingController();
  TextEditingController _Ps = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 55,),
            new Text(
              "Email:",
            ),
            new TextField(
              controller: _Em,
            ),
            SizedBox(height: 5,),
            new Text(
              "Password:",
            ),
            new TextField(
              controller: _Ps,
              obscureText: true,
            ),
            SizedBox(height: 5,),
            SizedBox(
                width: double.infinity,
                child:
                RaisedButton(
                  color: Colors.blueGrey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),


                  child: Text(
                    "SignIn",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: (){},
                )
            ),
            FlatButton(
              child: Text("Don't Have An Account Yet?"),
              onPressed: (){
                Clr=Colors.red;
                Ic=new Icon(Icons.add);
                BarTitle="SignUp";
                pageController.animateToPage(1,
                    duration: const Duration(milliseconds: 600), curve: Curves.ease);
              },
            )
          ],
        ),
       ),
    );
  }
}


class SignUp extends StatelessWidget {
  TextEditingController _Em = new TextEditingController();
  TextEditingController _Ps = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body:
      Padding(
        padding: const EdgeInsets.all(16.0),
        child:
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 55,),
            new Text(
              "Email:",
            ),
            new TextField(
              controller: _Em,
            ),
            SizedBox(height: 5,),
            new Text(
              "Password:",
            ),
            new TextField(
              controller: _Ps,
              obscureText: true,
            ),
            SizedBox(height: 5,),
            SizedBox(
                width: double.infinity,
                child:
                RaisedButton(
                  color: Colors.blueGrey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Text(
                    "SignUp",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: (){},
                )
            ),
          ],
        ),
      ),
    );
  }
}



class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body:
      Container(
        width:MediaQuery.of(context).size.width,
        height:MediaQuery.of(context).size.height,
        color: Colors.white,
        child:
        new Column(
          children: <Widget>[
            SizedBox(height:65,),
            new Text(
              "Welcome",
              style:TextStyle(
                fontSize: 28,
                color: Colors.white,
              ),
            ),
            SizedBox(height:25,),
            new Text(
              "Welcome To Our App Let's get Started!",
              textAlign: TextAlign.center,
              style:TextStyle(
                fontSize: 22,
                color: Colors.white,
              ),
            ),
            SizedBox(height:30,),



            RaisedButton(
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: new Text(
                "Get Started",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              onPressed: (){
                AlertDialog dialog = new AlertDialog(
                    content: new Text(
                        "SignIn If You Have An Account,If Not SignUp!"
                    )
                );
                showDialog(context: context, child: dialog);
              },
            )
          ],
        ),
      ),
    );
  }
}











