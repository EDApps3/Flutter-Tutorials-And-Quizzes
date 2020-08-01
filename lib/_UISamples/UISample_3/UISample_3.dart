import 'package:flutter/material.dart';

void main() {
  runApp(UISample3());
}

class UISample3 extends StatefulWidget {
  @override
  UISample3State createState() => UISample3State();
}

class UISample3State extends State<UISample3> {
  var _scaffolkey = new GlobalKey<ScaffoldState>();
  List<List> _matrix;
  String _lastchar = 'o';
  String PTurn="Player1 Turn";
  String PlaceTxt="Please Place An X";
  String PLayerNum;
  bool GameFinished=false;

  UISample3State() {
    _initMatrix();
  }

  _initMatrix() {
    _matrix = List<List>(3);
    for (var i = 0; i < 3; i++) {
      _matrix[i] = List(3);
      for (var j = 0; j < 3; j++) {
        _matrix[i][j] = ' ';
      }
    }
    _lastchar = 'o';
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     title: 'XO game',
     debugShowCheckedModeBanner: false,
     home:Scaffold(
      key: _scaffolkey,
      appBar: AppBar(
        title: Text("XO game"),
      ),
      body:SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "$PTurn",
                style:TextStyle(
                  color:Colors.indigo,
                  fontSize:23,
                ),
              ),
              Text(
                "$PlaceTxt",
                style:TextStyle(
                  color:Colors.deepPurpleAccent,
                  fontSize:25,
                ),
              ),
              SizedBox(height:45,),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  _buildelement(0, 0),
                  _buildelement(0, 1),
                  _buildelement(0, 2)
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  _buildelement(1, 0),
                  _buildelement(1, 1),
                  _buildelement(1, 2)
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  _buildelement(2, 0),
                  _buildelement(2, 1),
                  _buildelement(2, 2)
                ],
              ),
              SizedBox(height:45,),
              RaisedButton(
                child: Icon(Icons.refresh),
                onPressed: (){
                  setState(() {
                    _initMatrix();
                    PTurn="Player1 Turn";
                    PlaceTxt="Please Place An X";  
                    GameFinished=false;
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  _buildelement(int i, int j) {
    var snackBar;
    return GestureDetector(
      onTap: () {
        setState(() {
          if(GameFinished==false){
          if(_matrix[i][j]==' '){
            if (_lastchar == 'x'){
              _matrix[i][j] = '0';
              PTurn="Player1 Turn";
              PlaceTxt="Please Place An x";
            }
            else{
              _matrix[i][j] = 'x';
              PTurn="Player2 Turn";
              PlaceTxt="Please Place An O";
              GameFinished=false;
            }
            _lastchar = _matrix[i][j];
            _checkwinner();
          }
          }
          else{
            snackBar = SnackBar(
              duration:Duration(milliseconds:500),
              content: Text("Game Finished\nPlease Restart A New Game!"),
              action: SnackBarAction(
              label: 'Restart',
              onPressed: () {
              setState(() {
                _initMatrix();
                PTurn="Player1 Turn";
                PlaceTxt="Please Place An X";  
                GameFinished=false;
              }
            );
           },
          ),
          );
           _scaffolkey.currentState.showSnackBar(snackBar);

          }
        });
      },
      child: Container(
          width: 70.0, 
          height:70.0,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(
              color: Colors.blueGrey.withOpacity(0.5),
            ),
          ),
          child: Center(
            child:
             (_matrix[i][j]=="x")?
              Text(
               _matrix[i][j],
               style: TextStyle(fontSize: 40.0,color:Colors.blueAccent),
              ):
              Text(
               _matrix[i][j],
               style: TextStyle(fontSize: 40.0,color:Colors.teal),
              ),
          )),
    );
  }

  _checkwinner() {
    var $player = ' ';
    bool b = false;
    if (_matrix[0][0] == _matrix[0][1] &&
        _matrix[0][1] == _matrix[0][2] &&
        _matrix[0][0] != ' ' &&
        _matrix[0][1] != ' ' &&
        _matrix[0][2] != ' ') {
      $player = _matrix[0][0];
      b = true;
    } else if (_matrix[1][0] == _matrix[1][1] &&
        _matrix[1][1] == _matrix[1][2] &&
        _matrix[1][0] != ' ' &&
        _matrix[1][1] != ' ' &&
        _matrix[1][2] != ' ') {
      $player = _matrix[1][0];
      b = true;
    } else if (_matrix[2][0] == _matrix[2][1] &&
        _matrix[2][1] == _matrix[2][2] &&
        _matrix[2][0] != ' ' &&
        _matrix[2][1] != ' ' &&
        _matrix[2][2] != ' ') {
      $player = _matrix[2][0];
      b = true;
    } else if (_matrix[0][0] == _matrix[1][0] &&
        _matrix[1][0] == _matrix[2][0] &&
        _matrix[0][0] != ' ' &&
        _matrix[1][0] != ' ' &&
        _matrix[2][0] != ' ') {
      $player = _matrix[0][0];
      b=true;
    } else if (_matrix[0][1] == _matrix[1][1] &&
        _matrix[1][1] == _matrix[2][1] &&
        _matrix[0][1] != ' ' &&
        _matrix[1][1] != ' ' &&
        _matrix[2][1] != ' ') {
      $player = _matrix[0][1];
      b = true;
    } else if (_matrix[0][2] == _matrix[1][2] &&
        _matrix[1][2] == _matrix[2][2] &&
        _matrix[0][2] != ' ' &&
        _matrix[1][2] != ' ' &&
        _matrix[2][2] != ' ') {
      $player = _matrix[0][2];
      b = true;
    } else if (_matrix[0][0] == _matrix[1][1] &&
        _matrix[1][1] == _matrix[2][2] &&
        _matrix[0][0] != ' ' &&
        _matrix[1][1] != ' ' &&
        _matrix[2][2] != ' ') {
      $player = _matrix[0][0];
      b = true;
    } else if (_matrix[0][2] == _matrix[1][1] &&
        _matrix[1][1] == _matrix[2][0] &&
        _matrix[0][2] != ' ' &&
        _matrix[1][1] != ' ' &&
        _matrix[2][0] != ' ') {
      $player = _matrix[0][2];
      b = true;
    }
    if (b == true) {
      GameFinished=true;
      if($player=="x"){
        PLayerNum="Player1";
      }
      else{
        PLayerNum="Player2";  
      }

      if(GameFinished==true){
        setState(() {
          PTurn="$PLayerNum Win!";
          PlaceTxt="";
        });
      }
      var snackBar = SnackBar(
        duration:Duration(milliseconds:500),
        content: Text("$PLayerNum   "+$player+"   Is The Winner"),
        action: SnackBarAction(
          label: 'Repeat',
          onPressed: () {
            setState(() {
              _initMatrix();
              PTurn="Player1 Turn";
              PlaceTxt="Please Place An X";  
              GameFinished=false;
            });
          },
        ),
      );
      _scaffolkey.currentState.showSnackBar(snackBar);
    }
  }
}