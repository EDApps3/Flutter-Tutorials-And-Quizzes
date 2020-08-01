import 'package:flutter/material.dart';
import 'AppLang.dart';

class StartSelectUI extends StatelessWidget{
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      child:
        ClipRRect(
        borderRadius:BorderRadius.circular(30.0),
    child:
       Card(
        color:Colors.blueGrey[200],
        child:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            SelectWhereYouWantToStartTxtTrans,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Lobster",
              fontSize: 18,
            ),
          ),
        ),
      ),
        ),
    );
  }
}



