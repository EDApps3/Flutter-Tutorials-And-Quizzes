import 'package:flutter/material.dart';

Color Clr = Colors.orange;

void main(){
  runApp(RadioTilesRun());
}

class RadioTilesRun extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<RadioTilesRun>{
  int _Radvalue = 0;

  void _Radsetvalue(int value){
    setState(() => _Radvalue = value);

    if(_Radvalue==0){
      Clr=Colors.orange;
    }
    else{
      Clr=Colors.yellow;
    }
  }

  Widget makeRadioTiles() {
    List Items=new List<String>(2);
    Items[0]="Orange";
    Items[1]="Yellow";

    List SubItems=new List<String>(2);
    SubItems[0]="Change Bg To Orange";
    SubItems[1]="Change Bg To Yellow";

    List<Widget> list = new List<Widget>();

    for(int i = 0; i < 2; i++){
      list.add(new RadioListTile(
        value: i,
        groupValue: _Radvalue,
        onChanged: _Radsetvalue,
        activeColor: Colors.red,
        controlAffinity: ListTileControlAffinity.trailing,
        subtitle: new Text(
          SubItems[i],
          style: TextStyle(
            color:Colors.white,
          ),
        ),
        title: new Text(Items[i]),
      ));
    }

    Column column = new Column(children: list,);
    return column;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
     home:new Scaffold(
      appBar: new AppBar(
        title: new Text('RadioListTiles:Change BG Color'),
      ),
      body: new Container(
        color: Clr,
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              makeRadioTiles(),
            ],
          ),
        ),
      ),
     ),
    );
  }
}

