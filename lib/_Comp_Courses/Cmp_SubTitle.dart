import 'package:flutter/material.dart';

class CmpSubTitle extends StatelessWidget {

  final String SubTitle;

  CmpSubTitle({
    @required this.SubTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      SubTitle,
      style:TextStyle(
        color:Colors.blue,
        fontFamily: "PT Mono",
        fontSize:13,
        fontWeight: FontWeight.w200,
      ),
    );
  }

}






