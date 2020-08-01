import 'package:flutter/material.dart';

void main() => runApp(AppBarLeftRightIconRun());

class AppBarLeftRightIconRun extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding:
            EdgeInsets.only(left: 12),
            child:  IconButton(
              onPressed:(){},
              icon:
              Icon(Icons.account_balance),
            ),
          ),
          title: Row(
            mainAxisAlignment:
            MainAxisAlignment.center,
            children: <Widget>[
              Text('<-- Icon -->')
            ],
          ),
          actions: <Widget>[
            IconButton(
              onPressed:(){},
              icon:
              Icon(Icons.account_balance),
            ),
          ],
        ),
      ),
    );
  }

}




