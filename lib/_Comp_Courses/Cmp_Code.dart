import 'package:flutter/material.dart';

class CmpCode extends StatelessWidget {

  final String CodeTxt;

  CmpCode({
    @required this.CodeTxt,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      CodeTxt,
      overflow:TextOverflow.clip,
      style:TextStyle(
        color:Colors.indigo,
        fontSize:12,
      ),
    );
  }

}






