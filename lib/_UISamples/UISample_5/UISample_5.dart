import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  runApp(UISample5());
}

class UISample5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'UISample5',
      home: GameMain(),
    );
  }
}
const double mainWidth = double.infinity,
    GameContainerHeight = 200.0,
    FirstSpawnQuilava = 70.0,
    initGameSpeed = 6,
    gravity = 1.0;


double gameSpeed = initGameSpeed, spawnObstacle = FirstSpawnQuilava;


class Quilava {
  final double width, height, y;

  double x, dx;

  Quilava({
    @required this.width,
    @required this.height,
    @required this.x,
    @required this.y,
    @required this.dx,
  });

  void move() {
    this.x -= this.dx;
  }

  Widget get getQuilava => Transform.translate(
        offset: new Offset(
          this.x,
          this.y,
        ),
        child: Container(
          width: this.width,
          height: this.height,
          child:Image.asset("Images/quilava.gif")
        ),
      );
}

class Pika {
  final double width, height, x;

  double y, _dy = 0, _jumpForce = 17.0;

  bool _canJump = true;

  Pika({
    @required this.width,
    @required this.height,
    @required this.x,
    @required this.y,
  });

  void updatePlayer() {
    this.y += this._dy;
    if (this.height + this.y < GameContainerHeight) {
      _dy += gravity;
      _canJump = false;
    } else {
      _canJump = true;
      _dy = 0;
      this.y = GameContainerHeight - this.height;
    }
  }

  void jump() async {
    if (_canJump) {
      _dy -= _jumpForce;
    }
  }


  Widget get getPlayer => Transform.translate(
        offset: new Offset(this.x, this.y),
        child: new Container(
          width: this.width,
          height: this.height,
          child:Image.asset("Images/Pika.gif"),
        ),
      );
}


class GameMain extends StatefulWidget {
  GameMain({Key key}) : super(key: key);

  @override
  _GameMainState createState() => _GameMainState();
}

class _GameMainState extends State<GameMain> with SingleTickerProviderStateMixin {
  AnimationController _mainController;

  Pika _mPlayer;
  List<Quilava> _obstacles = <Quilava>[];

  bool _gameIsStart = false;
  int _score = 0;


  @override
  void initState() {
    _createPlayer();
    _mainController = new AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _mainController.addListener(_update);
    _mainController.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _mainController.dispose();
    super.dispose();
  }

  void _update() {
    if (_mPlayer != null) {
      setState(() {
        _mPlayer.updatePlayer();
        if (_gameIsStart) {
          spawnObstacle--;
          _score++;

          if (spawnObstacle <= 0) {
            _createObstacle();
          }

          _obstacles.forEach((obs) {
            obs.move();

            if (_mPlayer.width + _mPlayer.x >= obs.x &&
                _mPlayer.x <= obs.x + obs.width &&
                _mPlayer.y + _mPlayer.height >= obs.y &&
                _mPlayer.y <= obs.y + obs.height) {
              _gameOver();
            }
          });
        }
      });
    }
  }

  void _gameOver() async {
    _gameIsStart = false;
    _obstacles = [];
    spawnObstacle = FirstSpawnQuilava;
    _score = 0;
  }

  void _createObstacle() {
    final randomSpawnObstacle =  (50 + Random().nextInt(100 - 50)).toDouble();

    final obs = new Quilava(
      width: 55,
      height: 37,
      x: MediaQuery.of(context).size.width,
      y: GameContainerHeight-37,
      dx: gameSpeed,
    );

    _obstacles.add(obs);
    spawnObstacle = randomSpawnObstacle;
  }


  void _createPlayer() {
    _mPlayer = new Pika(
      width: 45,
      height: 45,
      x: 20,
      y: GameContainerHeight - 25,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
          appBar: AppBar(
            title: const Text("Jumping Game"),
          ),
          body: _main,
        ),
        if (!_gameIsStart)
          Opacity(
            opacity: .6,
            child: ModalBarrier(
              dismissible: false,
              color: Colors.black87,
            ),
          ),
        if (!_gameIsStart)
          Center(
              child: FlatButton.icon(
                icon:Icon(Icons.refresh,color:Colors.white,),
                label:Text(
                  'Tap To Start!',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),
                onPressed: () async {
                  _gameIsStart = true;
                },
              ),
            ),
      ],
    );
  }

  void _jump() {
    if (_gameIsStart) _mPlayer.jump();
  }

  Widget get _main => GestureDetector(
        onTap: _jump,
        child:Center(
              child: Container(
                width: mainWidth,
                height: GameContainerHeight,
                decoration:BoxDecoration(
                  image:DecorationImage(
                    image:AssetImage("Images/Forest.png"),
                    fit:BoxFit.fill
                  )
                ),
                child: Stack(
                  children: <Widget>[
                    Text("Score:$_score",style:TextStyle(color:Colors.white),),
                    _mPlayer.getPlayer,
                    Stack(
                      children:
                          _obstacles.map((obs) => obs.getQuilava).toList(),
                    )
                  ],
                ),
              ),
            ),
      );
}


