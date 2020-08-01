import 'package:flutter/material.dart';

class CmpGreyCardImageTitle extends StatelessWidget {

  var CardIcon;
  final String CardTitle;

  CmpGreyCardImageTitle({
    @required this.CardIcon,
    @required this.CardTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: new EdgeInsets.only(bottom: 20.0),
      child:
      new Card(
        color:Colors.blueGrey[200],
        child: new Container(
          padding: new EdgeInsets.all(5.0),
          child: new Row(
              children: <Widget>[
                IconButton(
                  onPressed:(){},
                  icon:CardIcon,
                ),
                Text(
                  CardTitle,
                  style:TextStyle(
                    color: Colors.white,
                    fontFamily: "PT Mono",
                    fontSize:19,
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }


}

