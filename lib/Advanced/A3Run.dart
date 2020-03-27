import 'package:flutter/material.dart';

void main() => runApp(A3Run());

class A3Run extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Page(),
      routes: <String, WidgetBuilder>{
        '/Page': (BuildContext context) => Page(),
      },
    );
  }
}
class Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Simple Dialog"),
        ),
        body:
        Center(
          child: RaisedButton(
            color: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Text("Open Dialog"),
            onPressed: (){
              showDialog(
                context: context,
                builder: (BuildContext context) => CustomDialog(
                  title: "Would you like to create a free account?",
                  description:
                  "With an account, your data will be securely saved",
                  primaryButtonText: "Create My Account",
                  primaryButtonRoute: "/Page",
                  secondaryButtonText: "Maybe Later",
                  secondaryButtonRoute: "/Page",
                ),
              );
            },
          ),
        ),
    );
  }
}

class CustomDialog extends StatelessWidget {
  final primaryColor = const Color(0xFF75A2EA);
  final grayColor = const Color(0xFF939393);

  final String title,
      description,
      primaryButtonText,
      primaryButtonRoute,
      secondaryButtonText,
      secondaryButtonRoute;

  CustomDialog(
      {@required this.title,
        @required this.description,
        @required this.primaryButtonText,
        @required this.primaryButtonRoute,
        this.secondaryButtonText,
        this.secondaryButtonRoute});

  static const double padding = 20.0;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(padding),
      ),
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(padding),
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius:
                BorderRadius.circular(padding),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 10.0,
                    offset: const Offset(0.0, 10.0),
                  ),
                ]),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(height: 24.0),
                Text(
                  title,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(height: 24.0),
                Text(
                  description,
                  maxLines: 4,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: grayColor,
                    fontSize: 17.0,
                  ),
                ),


                SizedBox(height: 24.0),
                RaisedButton(
                  color: primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Text(
                      primaryButtonText,
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w200,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.of(context)
                        .pushReplacementNamed(primaryButtonRoute);
                  },
                ),
                SizedBox(height: 10.0),
                showSecondaryButton(context),
              ],
            ),
          )
        ],
      ),
    );
  }

  showSecondaryButton(BuildContext context) {
    if (secondaryButtonRoute != null && secondaryButtonText != null ){
      return FlatButton(
        child: Text(
          secondaryButtonText,
          maxLines: 1,
          style: TextStyle(
            fontSize: 18,
            color: primaryColor,
            fontWeight: FontWeight.w400,
          ),
        ),
        onPressed: () {
          Navigator.of(context).pop();
          Navigator.of(context).pushReplacementNamed(secondaryButtonRoute);
        },
      );
    } else {
      return SizedBox(height: 10.0);
    }
  }
}
