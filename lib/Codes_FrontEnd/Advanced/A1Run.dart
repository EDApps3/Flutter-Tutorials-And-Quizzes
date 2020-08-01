import 'package:flutter/material.dart';

void main() => runApp(A1Run());

class A1Run extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Navigate Through Images",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home:Scaffold (
        appBar:
        AppBar (
          title: Text ('Navigate Through Images'),
        ),
        body:
            Container (
              child: new ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column (
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row (
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: <Widget>[
                              Column (
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  GestureDetector(
                                    child:Image.asset ('Images/Flutter_Logo.png',),
                                    onTap: (){
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder:(context)=>FlutterPage()
                                          )
                                      );
                                    },
                                  ),
                                  Text ('Flutter', textDirection: TextDirection.ltr,)
                                ],
                              ),
                              Column (
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  GestureDetector(
                                    child:Image.asset ('Images/Google_Logo.png',),
                                    onTap: (){
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder:(context)=>GooglePage()
                                          )
                                      );
                                    },
                                  ),
                                  Text ('Google', textDirection: TextDirection.ltr,)
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row (
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: <Widget>[
                              Column (
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  GestureDetector(
                                    child:Image.asset ('Images/Dart_Logo.png',),
                                    onTap: (){
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder:(context)=>DartPage()
                                          )
                                      );
                                    },
                                  ),
                                  Text ('Dart', textDirection: TextDirection.ltr,)
                                ],
                              ),
                              Column (
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  GestureDetector(
                                    child:Image.asset ('Images/FbLike.gif',),
                                    onTap: (){
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder:(context)=>FBPage()
                                          )
                                      );
                                    },
                                  ),
                                  Text ('Facebook', textDirection: TextDirection.ltr,)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
    );
  }
}




class FlutterPage extends StatelessWidget{
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed:(){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder:(context)=>A1Run()
                  )
              );
            },
          ),
          title:Text("Flutter Page"),
        ),
        body:Center(
          child:
            Image.asset("Images/Flutter_Logo.png"),
        ),
      ),
    );
  }
}


class GooglePage extends StatelessWidget{
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed:(){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder:(context)=>A1Run()
                  )
              );
            },
          ),
          title:Text("Google Page"),
        ),
        body:Center(
          child:
          Image.asset("Images/Google_Logo.png"),
        ),
      ),
    );
  }
}


class DartPage extends StatelessWidget{
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed:(){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder:(context)=>A1Run()
                  )
              );
            },
          ),
          title:Text("Dart Page"),
        ),
        body:Center(
          child:
          Image.asset("Images/Dart_Logo.png"),
        ),
      ),
    );
  }
}



class FBPage extends StatelessWidget{
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed:(){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder:(context)=>A1Run()
                  )
              );
            },
          ),
          title:Text("Facebook Page"),
        ),
        body:Center(
          child:
          Image.asset("Images/FbLike.gif"),
        ),
      ),
    );
  }
}
