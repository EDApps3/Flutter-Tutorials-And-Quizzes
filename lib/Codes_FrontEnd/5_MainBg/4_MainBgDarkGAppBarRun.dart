import 'package:flutter/material.dart';

void main() {
  runApp(MainBgDarkGAppBarRun());
}

class MainBgDarkGAppBarRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: "MainDarkBgGAppBar",
      home: new Scaffold(
        appBar: AppBar(
          title: Text("Dark Bg + Grey AppBar"),
          backgroundColor: Colors.grey,
        ),
      ),
    );
  }

}








