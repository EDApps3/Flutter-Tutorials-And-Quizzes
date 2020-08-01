import 'package:flutter/material.dart';

void main() => runApp(AppBarDoubleSideIconsRun());

class AppBarDoubleSideIconsRun extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(
        appBar:AppBar(
          leading: Padding(
            padding: EdgeInsets.only(left: 2),
            child: Row(
              children: <Widget>[
                IconButton(
                  onPressed:(){},
                  icon: Icon(Icons.account_circle),
                ),
                Expanded(
                  child: IconButton(
                    onPressed:(){},
                    icon:
                    Icon(Icons.account_circle),
                  ),
                ),
              ],
            ),
          ),
          title: Row(
            mainAxisAlignment:
            MainAxisAlignment.center,
            children: <Widget>[
              Text('<--Icons-->'),
            ],
          ),
          actions: <Widget>[
            IconButton(
              onPressed:(){},
              icon: Icon(Icons.account_circle),
            ),
            IconButton(
              onPressed:(){},
              icon: Icon(Icons.account_circle),
            ),
          ],
        ),
      ),
    );
  }

}




