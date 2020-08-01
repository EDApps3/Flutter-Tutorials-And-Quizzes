import 'package:flutter/material.dart';

void main() => runApp(new ToolTipRun());


class ToolTipRun extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
          appBar:AppBar(
            title:Text('ToolTip'),
          ),
          body:Column(
            mainAxisAlignment:MainAxisAlignment.center,
            crossAxisAlignment:CrossAxisAlignment.center,
            children: <Widget>[
              Text("Hold On Any Icon And See What Gonna Happen!"),
              Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: <Widget>[
                  Tooltip(
                    message:"Inbox",
                    preferBelow:true,
                    waitDuration:Duration(milliseconds:500),
                    showDuration:Duration(seconds:2),
                    child:Icon(
                      Icons.inbox,
                      size:60,
                    ),
                  ),
                  Tooltip(
                    message:"Call",
                    preferBelow:true,
                    showDuration:Duration(seconds:2),
                    child:Icon(
                      Icons.call,
                      size:60,
                    ),
                  ),
                  Tooltip(
                    message:"Message",
                    preferBelow:true,
                    showDuration:Duration(seconds:2),
                    child:Icon(
                      Icons.message,
                      size:60,
                    ),
                  ),
                  Tooltip(
                    message:"Alert",
                    preferBelow:true,
                    showDuration:Duration(seconds:2),
                    child:Icon(
                      Icons.warning,
                      size:60,
                    ),
                  )
                ],
              ),


            ],
          )
      ),
    );
  }


}






