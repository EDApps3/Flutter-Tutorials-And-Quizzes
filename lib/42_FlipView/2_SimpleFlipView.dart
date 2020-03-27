import 'package:flutter/material.dart';
import 'package:flutter_flip_view/flutter_flip_view.dart';

void main() => runApp(SimpleFlipViewRun());

class SimpleFlipViewRun extends StatefulWidget {
  @override
  _FVState createState() => _FVState();
}

class _FVState extends State<SimpleFlipViewRun> with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _curvedAnimation;

  FocusNode _focusNode = FocusNode();


  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 1000)
    );


    _curvedAnimation = CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut
    );

    _animationController.addStatusListener((AnimationStatus status) {
      if (!_focusNode.hasFocus && _animationController.isCompleted) {
        setState(() {
          FocusScope.of(context).requestFocus(_focusNode);
        });
      }else if(_focusNode.hasFocus && !_animationController.isCompleted){
        _focusNode.unfocus();
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _flip(bool reverse) {
    if (_animationController.isAnimating) return;
    if (reverse) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title:Text("FlipView"),
        ),
        body:

        Padding(
          padding: const EdgeInsets.all(32.0),
          child: Center(
            child: FlipView(
              animationController: _curvedAnimation,
              front:
               SizedBox(
                 width:300,
                 height:370,
                 child:
                Card(
                  child:Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ListView(
                      children: <Widget>[
                        Text("Email:"),
                        TextField(),
                        Text("Password:"),
                        TextField(),
                        FlatButton(
                          child:Text("Login"),
                        ),
                        FlatButton(
                          child:Text("Don't Have An Account?"),
                          onPressed:(){
                            _flip(true);
                          },
                        )
                      ],
                    ),
                  ),
                 ),
                ),
              back:
              SizedBox(
                width:300,
                height:370,
                child:
                Card(
                  child:
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                       child: ListView(
                         children: <Widget>[
                          Text("Email:"),
                          TextField(),
                           Text("Password:"),
                           TextField(),
                           Text("Confirm Password:"),
                           TextField(),
                           FlatButton(
                           child:Text("Register"),
                            onPressed:(){},
                           ),
                           FlatButton(
                            child:Text("Back"),
                            onPressed:(){
                             _flip(false);
                            },
                           ),
                          ],
                         ),
                      ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

}