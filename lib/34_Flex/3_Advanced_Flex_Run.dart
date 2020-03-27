import 'package:flutter/material.dart';


void main() {
  runApp(AdvancedFlexRun());
}

class AdvancedFlexRun extends StatefulWidget {
  @override
  _AdvancedFlexRunState createState() => new _AdvancedFlexRunState();
}

class _AdvancedFlexRunState extends State<AdvancedFlexRun>{
  var Flex1Val,Flex2Val,Flex3Val;

  @override
  void initState() {
    super.initState();
    Flex1Val=1;
    Flex2Val=1;
    Flex3Val=1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title:Text("Advanced Flex"),
          ),
          body:
          ListView(
            children: <Widget>[
              Row(
                mainAxisAlignment:
                MainAxisAlignment.center,
                children: <Widget>[
                  Text("Expand By Taping Wanted Box")
                ],
              ),
              Row(
                mainAxisAlignment:
                MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex:Flex1Val,
                    child:
                      FittedBox(
                        fit:BoxFit.contain,
                        child:
                         GestureDetector(
                              child:
                        Container(
                          color:Colors.red,
                          child:Center(
                            child:Text("$Flex1Val"),
                          ),
                        ),
                           onTap: ()=>setState((){
                             Flex1Val++;
                           }),
                      )
                      ),
                  ),
                  Expanded(
                    flex:Flex2Val,
                    child:
                    FittedBox(
                        fit:BoxFit.contain,
                        child:
                        GestureDetector(
                          child:
                          Container(
                            color:Colors.yellow,
                            child:Center(
                              child:Text("$Flex2Val"),
                            ),
                          ),
                          onTap: ()=>setState((){
                            Flex2Val++;
                          }),
                        )
                    ),
                  ),
                  Expanded(
                    flex:Flex3Val,
                    child:
                    FittedBox(
                        fit:BoxFit.contain,
                        child:
                        GestureDetector(
                          child:
                          Container(
                            color:Colors.orange,
                            child:Center(
                              child:Text("$Flex3Val"),
                            ),
                          ),
                          onTap: ()=>setState((){
                            Flex3Val++;
                          }),
                        )
                    ),
                  ),



                ],
              ),
            ],
          )
      ),
    );
  }
}


