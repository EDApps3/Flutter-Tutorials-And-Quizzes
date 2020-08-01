import 'package:flutter/material.dart';

void main() => runApp(BtnRoundedRaisedGradientBtnRun());

class BtnRoundedRaisedGradientBtnRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: TestPage(),
    );
  }
}

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar:
      AppBar (
        title:
        Text ('Gradient Button With Custom W/H'),
      ),
      body:
        Center(
          child:
          SizedBox(
            width: 200,
            height: 40,
            child: RaisedButton(
              onPressed: () {},
              padding:
              const EdgeInsets.all(0.0),
              shape:
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80.0)
              ),
              child: Container(
                width: 200, height: 40,
                decoration:
                const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xFF0D47A1),
                        Color(0xFF1976D2),
                        Color(0xFF42A5F5),
                      ],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(80.0))
                ),
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: const Text(
                  'Gradient Button',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        )
    );
  }
}
