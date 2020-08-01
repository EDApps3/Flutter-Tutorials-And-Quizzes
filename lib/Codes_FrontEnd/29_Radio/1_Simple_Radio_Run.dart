import 'package:flutter/material.dart';

class SimpleRadio extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _SimpleRadioState();
  }
}

class _SimpleRadioState extends State<SimpleRadio> {
  int _radioValue = 0;
  String Result;
  Color ResultColor;

  void ShowDialog(){
    var AD=new AlertDialog(
      content:
          Container(
            height: 100,
            child:
        Column(
          children: <Widget>[
            Text(
              "$Result",
              style: TextStyle(
                color: ResultColor,
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text("Answer Is:4",),
            ),
          ],
        ),
          ),
    );

    showDialog(
      context:context,
      child: AD,
    );
  }



  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;

      switch (_radioValue) {
        case 3:
          ResultColor=Colors.red;
          Result="Wrong Answer!";
          ShowDialog();
          break;

        case 4:
          ResultColor=Colors.green;
          Result="Correct Answer!";
          ShowDialog();
          break;

        case 5:
          ResultColor=Colors.red;
          Result="Wrong Answer!";
          ShowDialog();
          break;
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
    home:Scaffold(
      appBar: new AppBar(
        title: new Text('Simple Radio'),
      ),
      body:
        Container(
          alignment: Alignment.center,
          child: new ListView(
            padding: const EdgeInsets.all(25.0),
            children: <Widget>[
              new Column(
                children: <Widget>[

                  Row(
                    children: <Widget>[
                      Text(
                        " Guess The Answer : 2+2=?",
                        style: TextStyle(
                          color: Colors.lightBlue,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Radio(
                        value: 3,
                        groupValue: _radioValue,
                        onChanged: _handleRadioValueChange,
                      ),
                      new Text('3'),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Radio(
                        value: 4,
                        groupValue: _radioValue,
                        onChanged: _handleRadioValueChange,
                      ),
                      new Text('4'),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Radio(
                        value: 5,
                        groupValue: _radioValue,
                        onChanged: _handleRadioValueChange,
                      ),
                      new Text('5'),
                    ],
                  ),

                ],
              ),
            ],
          )),
        ),
    );
  }


}