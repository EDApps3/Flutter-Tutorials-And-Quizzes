import 'package:flutter/material.dart';

void main() => runApp(AnimatedFloatingActionButton());

class AnimatedFloatingActionButton extends StatefulWidget {
  @override
  _FabState createState() => _FabState();
}

class _FabState extends State<AnimatedFloatingActionButton> with SingleTickerProviderStateMixin {
  bool isOpened = false;
  AnimationController _animationController;
  Animation<Color> _buttonColor;
  Animation<double> _animateIcon;
  Animation<double> _translateButton;
  int Counter=0;


  @override
  initState() {

    _animationController = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 500)
    )..addListener(() {
        setState(() {});
    });

    _animateIcon = Tween<double>(
        begin: 0.0, end: 1.0
    ).animate(_animationController);

    _buttonColor = ColorTween(
      begin: Colors.blue,
      end: Colors.red,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Interval(
        0.00,
        1.00,
        curve: Curves.linear,
      ),
    ));


    _translateButton = Tween<double>(
      begin:56.0,
      end: -14.0,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Interval(
        0.0,
        0.75,
        curve:Curves.easeOut,
      ),
    ));

    super.initState();
  }

  @override
  dispose() {
    _animationController.dispose();
    super.dispose();
  }

  animate() {
    if (!isOpened) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
    isOpened = !isOpened;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Scaffold(
        appBar:AppBar(
          title:Text("Animated Floating Action Button")
        ),
        body:Center(
          child:Text("$Counter"),
        ),
        floatingActionButton:Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Transform(transform: Matrix4.translationValues(0.0, _translateButton.value * 2.0, 0.0,),
              child:FloatingActionButton(
                child: Icon(Icons.exposure_plus_1),
                onPressed:(){
                  setState(() {
                    Counter++;
                  });
                },
              ),
            ),
            Transform(
              transform: Matrix4.translationValues(0.0, _translateButton.value, 0.0,),
              child:FloatingActionButton(
                child: Icon(Icons.exposure_neg_1),
                onPressed:(){
                  setState(() {
                    Counter--;
                  });
                },
              ),
            ),
            FloatingActionButton(
              backgroundColor: _buttonColor.value,
              onPressed: animate,
              tooltip: 'Toggle',
              child: AnimatedIcon(
                icon: AnimatedIcons.menu_close,
                progress: _animateIcon,
              ),
            )
          ],
        ),
      ),
    );
  }
}