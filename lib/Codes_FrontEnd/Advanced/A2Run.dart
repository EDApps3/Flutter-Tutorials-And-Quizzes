import 'package:flutter/material.dart';

void main() => runApp(A2Run());

class A2Run extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Get Started Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:Scaffold(
        appBar: AppBar(
          title: Text("Get Started"),
        ),
        body:

        Container (
          color:Colors.deepPurple,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              SizedBox(height: 60,),
              Text(
                "Welcome",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 40,),
              Text(
                "Welcome To Our App",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 80,),
              RaisedButton(
                onPressed:(){},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0,
                      bottom: 10.0,
                      left: 30.0,
                      right: 30.0
                  ),
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

      ),
    );
  }

}




