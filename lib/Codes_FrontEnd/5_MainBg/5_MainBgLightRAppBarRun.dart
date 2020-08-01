import 'package:flutter/material.dart';

void main() {
  runApp(MainBgLightRAppBarRun());
}

class MainBgLightRAppBarRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      title: "MainLightBgRAppBar",
      home: new Scaffold(
        appBar: AppBar(
          title: Text("Light Bg + Red AppBar"),
          backgroundColor: Colors.red,
        ),
      ),
    );
  }

}








