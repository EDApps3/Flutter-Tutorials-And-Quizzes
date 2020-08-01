import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(HiddenBottomAppBar());

class HiddenBottomAppBar extends StatefulWidget {
  @override
  HiddenBottomAppBarState createState() => new HiddenBottomAppBarState();
}

class HiddenBottomAppBarState extends State<HiddenBottomAppBar> {
  ScrollController _HideBottomAppBarController;
  var _isVisible;

  @override
  initState() {
    super.initState();
    _isVisible = true;
    _HideBottomAppBarController = new ScrollController();
    _HideBottomAppBarController.addListener(() {
      if (_HideBottomAppBarController.position.userScrollDirection == ScrollDirection.reverse) {
        setState(() {
          _isVisible = false;
        });
      }
      if (_HideBottomAppBarController.position.userScrollDirection == ScrollDirection.forward) {
        setState(() {
          _isVisible = true;
        });
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Scaffold(
      body:ListView(
        controller:_HideBottomAppBarController,
          children: <Widget>[
            Text("Scroll Down Will Hide The BottomAppBar!"),
            Text("Scroll Up   Will Show The BottomAppBar!"),
            Divider(),
            Image.asset("Images/S1.jpg"),
            Divider(),
            Image.asset("Images/S2.jpg"),       
            Divider(),
            Image.asset("Images/S3.jpg"),   
          ],
        ),
      

      bottomNavigationBar: AnimatedContainer(
        duration: Duration(milliseconds: 50),
        height: _isVisible ? 60.0 : 0.0,
        child: _isVisible
            ? AnimatedContainer(
                duration: Duration(milliseconds: 50),
                height: _isVisible ? 60.0 : 0.0,
                child: _isVisible?
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color:Colors.blue,
                    child:Center(child:Text("Bottom AppBar"),),
                  )
                    : Container(
                        color: Colors.white,
                        width: MediaQuery.of(context).size.width,
                      ),
              )
            : Container(
                color: Colors.transparent,
                width: MediaQuery.of(context).size.width,
              ),
      ),


    ),

    );
  }
}