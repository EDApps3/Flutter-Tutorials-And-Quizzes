import 'package:flutter/material.dart';

class CmpTitle extends StatelessWidget {

  final String Title;

  CmpTitle({
    @required this.Title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      Title,
      style:TextStyle(
        fontFamily: "PT Mono",
        fontSize:14,
        fontWeight: FontWeight.w200,
        color: Colors.teal,
      ),
    );
  }

}






