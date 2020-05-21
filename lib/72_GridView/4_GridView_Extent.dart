import 'package:flutter/material.dart';

void main() => runApp(GridView_Extent());

class GridView_Extent extends StatefulWidget {
  @override
  _GridViewState createState() => _GridViewState();
}

class _GridViewState extends State<GridView_Extent> {
  int maxCrossAxisExtentValue=100;
  double ItemDisplayedPerRowDouble;
  int ItemDisplayedPerRowInt;


  @override
  Widget build(BuildContext context) {
    double ScreenWidth=MediaQuery.of(context).size.width;
    ItemDisplayedPerRowDouble=ScreenWidth.toInt() / maxCrossAxisExtentValue;

    void _setmaxCrossAxisExtentValue(double value){
      setState(() {
        maxCrossAxisExtentValue = value.toInt();
        ItemDisplayedPerRowDouble=ScreenWidth / maxCrossAxisExtentValue;
        ItemDisplayedPerRowInt=(ItemDisplayedPerRowDouble.toInt())+1;
      });
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GridView Extent',
      home: Scaffold(
          appBar:AppBar(
            title:Text("GridView Extent"),
          ),
          body:Column(
            children: <Widget>[

              Container(
                width:double.infinity,
                height:90,
                child:Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Screen Width: $ScreenWidth"),
                    (ItemDisplayedPerRowInt==null)?
                      Text("Change The Slide Value!")
                     :Text("Item Per Row: $ScreenWidth / $maxCrossAxisExtentValue = $ItemDisplayedPerRowInt" ),
                    Row(
                      children: <Widget>[
                        Text("maxCrossAxisExtent $maxCrossAxisExtentValue"),
                        new Slider(
                            min:100,
                            max:600,
                            divisions:50,
                            value: maxCrossAxisExtentValue.toDouble(),
                            onChanged: _setmaxCrossAxisExtentValue
                        ),
                      ],
                    ),
                  ],
                )
              ),

              Expanded(
                child:Container(
                  width:MediaQuery.of(context).size.width,
                  child:GridView.extent(
                    scrollDirection:Axis.vertical,
                    maxCrossAxisExtent: maxCrossAxisExtentValue.toDouble(),
                    children: List.generate(40, (index) {
                      return Container(
                        padding: EdgeInsets.all(20.0),
                        child: Center(
                          child:Text("$index"),
                        ),
                        color: Colors.teal,
                        margin: EdgeInsets.all(1.0),
                      );
                    }),
                  ),
                ),
              )

            ],
          ),
      ),
    );
  }
}