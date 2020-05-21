import 'package:flutter/material.dart';

void main() => runApp(GridView_Custom());

class GridView_Custom extends StatefulWidget {
  @override
  _GridViewState createState() => _GridViewState();
}

class _GridViewState extends State<GridView_Custom> {
  int crossAxisCountValue=2;

  void _setCrossAxisCountValue(double value){
    setState(() {
      crossAxisCountValue = value.toInt();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GridView Custom',
      home: Scaffold(
          appBar:AppBar(
            title:Text("GridView Custom"),
          ),
          body:Column(
            children: <Widget>[

              Container(
                width:double.infinity,
                height:50,
                child:Row(
                  children: <Widget>[
                    Text("CrossAxisCount $crossAxisCountValue"),
                    new Slider(
                        min:1,
                        max:4,
                        value: crossAxisCountValue.toDouble(),
                        onChanged: _setCrossAxisCountValue
                    ),
                  ],
                ),
              ),

              Expanded(
                child:Container(
                    width:MediaQuery.of(context).size.width,
                    child:GridView.custom(
                        gridDelegate:
                        SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: crossAxisCountValue,
                        ),
                        childrenDelegate:
                        SliverChildListDelegate(List.generate(6, (index) {
                          return Container(
                            padding: EdgeInsets.all(20.0),
                            child: Center(
                              child: GridTile(
                                footer: Text(
                                  'Item $index',
                                  textAlign: TextAlign.center,
                                ),
                                header: Text(
                                  'SubItem $index',
                                  textAlign: TextAlign.center,
                                ),
                                child: Icon(
                                    Icons.access_alarm,
                                    size: 40.0,
                                    color: Colors.white30
                                ),
                              ),
                            ),
                            color: Colors.blue[400],
                            margin: EdgeInsets.all(1.0),
                          );
                         })
                        )
                    )
                ),
              )




            ],
          ),
      ),
    );
  }
}