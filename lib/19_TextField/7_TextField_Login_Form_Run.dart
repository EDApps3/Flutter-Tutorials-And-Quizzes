import 'package:flutter/material.dart';

void main(){
  runApp(LoginFormRun());
}

class LoginFormRun extends StatelessWidget {
  var _user = new TextEditingController();
  var _pass = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login TextFields Form",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home:Scaffold(
          appBar: new AppBar(
            title: new Text('Login'),
            backgroundColor: Colors.red,
          ),
          body:
          ListView(
            children: <Widget>[
              new Container(
                padding: new EdgeInsets.all(32.0),
                child: new Center(
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text(
                        'Please Login',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.red,
                        ),
                      ),
                      new Row(
                        children: <Widget>[
                          new Text('Username :'),
                          new Expanded(child: new TextField(controller: _user,))
                        ],
                      ),
                      new Row(
                        children: <Widget>[
                          new Text('Password :'),
                          new Expanded(child: new TextField(controller: _pass, obscureText: true,))
                        ],
                      ),
                      new Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new Text('                   '),
                          Expanded(
                            child:
                            new RaisedButton(
                              onPressed: (){},
                              child: new Text('Login'),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
      )
    );
  }
}



