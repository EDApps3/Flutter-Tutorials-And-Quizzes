import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

void main() => runApp(new SliverAppBarRun());


class SliverAppBarRun extends StatefulWidget {
  @override
  _SliverAppBarState createState() => _SliverAppBarState();
}

class _SliverAppBarState extends State<SliverAppBarRun> {
  Color SliverAppBarbackgroundColor = Colors.teal;
  int _RadioPinnedValue=0;
  bool PinnedBool=true;
  int _RadioFloatingValue=0;
  bool FloatingBool=true;
  double ExpandedHeightValue=150;
  int _RadioCenterTitleValue=0;
  bool CenterTitleBool=true;

  void _RadioPinnedChange(int value) {
    setState(() {
      _RadioPinnedValue = value;
      if(value==0){
        PinnedBool=true;
      }
      else{
        PinnedBool=false;
      }
    });
  }

  void _RadioFloatingChange(int value) {
    setState(() {
      _RadioFloatingValue = value;
      if(value==0){
        FloatingBool=true;
      }
      else{
        FloatingBool=false;
      }
    });
  }

  void _RadioCenterTitleChange(int value) {
    setState(() {
      _RadioCenterTitleValue = value;
      if(value==0){
        CenterTitleBool=true;
      }
      else{
        CenterTitleBool=false;
      }
    });
  }


  void _setExpandedHeightValue(double value){
    setState(() {
      ExpandedHeightValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
          appBar:AppBar(
            title:Text("Sliver AppBar"),
          ),
          body:CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                backgroundColor:SliverAppBarbackgroundColor,
                pinned:PinnedBool,
                floating:FloatingBool,
                expandedHeight:ExpandedHeightValue,
                flexibleSpace:FlexibleSpaceBar(
                  centerTitle:CenterTitleBool,
                  title:Text("WallPaper Image"),
                  background:Image.asset(
                    "Images/S1.jpg",
                    fit:BoxFit.cover,
                  ),
                ),
              ),
              SliverList(
                delegate:SliverChildListDelegate([

                  Card(
                    child:Row(
                      children: <Widget>[
                        Text("backgroundColor:"),
                        SizedBox(width:15,),
                        ClipOval(
                          child:Container(width:30,height:30,color:SliverAppBarbackgroundColor,),
                        ),
                        IconButton(
                          icon:Icon(Icons.edit),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                    title: Text('Select a color'),
                                    content: Column(
                                      children: <Widget>[
                                        SingleChildScrollView(
                                          child: BlockPicker(
                                            pickerColor: SliverAppBarbackgroundColor,
                                            onColorChanged:(SelectedColor){
                                              setState(() {
                                                SliverAppBarbackgroundColor  = SelectedColor;
                                              });
                                            },
                                          ),
                                        ),
                                        RaisedButton(
                                          child:Text("Close"),
                                          onPressed:(){
                                            Navigator.pop(context);
                                          },
                                        )
                                      ],
                                    )
                                );
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),

                  Card(
                    child:Row(
                      children: <Widget>[
                        new Text('Pinned:'),
                        new Radio(
                          value: 0,
                          groupValue: _RadioPinnedValue,
                          onChanged: _RadioPinnedChange,
                        ),
                        new Text('Yes'),
                        new Radio(
                          value: 1,
                          groupValue: _RadioPinnedValue,
                          onChanged: _RadioPinnedChange,
                        ),
                        new Text('No'),
                      ],
                    ),
                  ),

                  Card(
                    child:Row(
                      children: <Widget>[
                        new Text('Floating:'),
                        new Radio(
                          value: 0,
                          groupValue: _RadioFloatingValue,
                          onChanged: _RadioFloatingChange,
                        ),
                        new Text('Yes'),
                        new Radio(
                          value: 1,
                          groupValue: _RadioFloatingValue,
                          onChanged: _RadioFloatingChange,
                        ),
                        new Text('No'),
                      ],
                    ),
                  ),


                  Card(
                    child:Row(
                      children: <Widget>[
                        Text("expandedHeight "+ExpandedHeightValue.toInt().toString()),
                        new Slider(
                            min:50,
                            max:200,
                            value: ExpandedHeightValue,
                            onChanged: _setExpandedHeightValue
                        ),
                      ],
                    ),
                  ),


                  Card(
                    child:Row(
                      children: <Widget>[
                        new Text('centerTitle:'),
                        new Radio(
                          value: 0,
                          groupValue: _RadioCenterTitleValue,
                          onChanged: _RadioCenterTitleChange,
                        ),
                        new Text('Yes'),
                        new Radio(
                          value: 1,
                          groupValue: _RadioCenterTitleValue,
                          onChanged: _RadioCenterTitleChange,
                        ),
                        new Text('No'),
                      ],
                    ),
                  ),




                  Container(
                    width:double.infinity,
                    height:800,
                  )
                ]),
              )
            ],
          )
      ),
    );
  }


}






