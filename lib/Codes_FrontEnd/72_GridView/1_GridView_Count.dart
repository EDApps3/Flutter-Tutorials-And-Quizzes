import 'package:flutter/material.dart';

void main() => runApp(GridView_Count_Run());

class GridView_Count_Run extends StatefulWidget {
  @override
  _GridViewState createState() => _GridViewState();
}

class _GridViewState extends State<GridView_Count_Run> {
  double CrossAxisCountValue = 3;
  int CrossAxisCountValueInt = 3;

  int _RadioScrollValue = 0;
  var ScrollAxisDirection=Axis.vertical;

  double MainAxisSpacingValue = 30;
  int MainAxisSpacingValueInt = 30;

  double CrossAxisSpacingValue = 30;
  int CrossAxisSpacingValueInt = 30;


  void _setCrossAxisCountValue(double value){
    setState(() {
      CrossAxisCountValue = value;
      CrossAxisCountValueInt = value.toInt();
    });
  }

  void _setMainAxisSpacingValue(double value){
    setState(() {
      MainAxisSpacingValue = value;
      MainAxisSpacingValueInt = value.toInt();
    });
  }

  void _setCrossAxisSpacingValue(double value){
    setState(() {
      CrossAxisSpacingValue = value;
      CrossAxisSpacingValueInt = value.toInt();
    });
  }


  void _RadioScrollDirectionChange(int value) {
    setState(() {
      _RadioScrollValue = value;

      switch (_RadioScrollValue) {
        case 0:
          setState(() {
            ScrollAxisDirection=Axis.vertical;
          });
          break;

        case 1:
          setState(() {
            ScrollAxisDirection=Axis.horizontal;
          });
          break;

      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GridView',
      home: Scaffold(
          appBar:AppBar(
            title:Text("GridView"),
          ),
          body:Column(
            children: <Widget>[

              Container(
                width:double.infinity,
                height:195,
                child:Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text("CrossAxisCount $CrossAxisCountValueInt"),
                        new Slider(
                            min:1,
                            max:3,
                            value: CrossAxisCountValue,
                            onChanged: _setCrossAxisCountValue
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        new Radio(
                          value: 0,
                          groupValue: _RadioScrollValue,
                          onChanged: _RadioScrollDirectionChange,
                        ),
                        new Text('Axis.vertical'),
                        new Radio(
                          value: 1,
                          groupValue: _RadioScrollValue,
                          onChanged: _RadioScrollDirectionChange,
                        ),
                        new Text('Axis.horizontal'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text("MainAxisSpacing $MainAxisSpacingValueInt"),
                        new Slider(
                            min:1,
                            max:100,
                            value: MainAxisSpacingValue,
                            onChanged: _setMainAxisSpacingValue
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text("CrossAxisSpacing $CrossAxisSpacingValueInt"),
                        new Slider(
                            min:1,
                            max:100,
                            value: CrossAxisSpacingValue,
                            onChanged: _setCrossAxisSpacingValue
                        ),
                      ],
                    ),
                  ],
                ),
              ),


              Expanded(
                child:Container(
                    width:MediaQuery.of(context).size.width,
                    child: GridView.count(
                      crossAxisCount:CrossAxisCountValueInt,
                      scrollDirection:ScrollAxisDirection,
                      mainAxisSpacing:MainAxisSpacingValue,
                      crossAxisSpacing:CrossAxisSpacingValue,
                      children: <Widget>[
                        Image.asset('Images/S1.jpg'),
                        Image.asset('Images/S3.jpg'),
                        Image.asset('Images/S2.jpg'),
                        Image.asset('Images/S3.jpg'),
                        Image.asset('Images/S1.jpg'),
                        Image.asset('Images/S2.jpg'),
                      ],
                    )
                ),
              )







            ],
          )
      ),
    );
  }
}
