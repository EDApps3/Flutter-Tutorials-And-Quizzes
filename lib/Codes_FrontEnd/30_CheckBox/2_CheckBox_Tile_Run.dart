import 'package:flutter/material.dart';

var NumTxt=new TextEditingController();
var Result="";

void main(){
  runApp(CBTilesRun());
}

class CBTilesRun extends StatefulWidget {
  @override
  _CBTilesState createState() => new _CBTilesState();
}

class _CBTilesState extends State<CBTilesRun>{

  bool Increase = false;
  bool Decrease = false;

  void PopDialog(Txt){
    var AD=new AlertDialog(
      title:Text("Result"),
      content:Text("$Txt"),
    );

    showDialog(
      context:context,
      child:AD,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:new Scaffold(
        appBar: new AppBar(
          title: new Text('CheckBox Tiles'),
        ),
        body:
         ListView(
           children: <Widget>[


         new Container(
          padding: new EdgeInsets.all(32.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    hintText: "Enter A Number",
                  ),
                  keyboardType: TextInputType.number,
                  controller: NumTxt,
                ),
                CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title:Text("+15"),
                  subtitle:Text(
                    "Increase Number By 15",
                    style: TextStyle(
                     color:Colors.blue,
                    ),
                  ),
                  value: Increase,
                  onChanged: (bool value) {
                    setState(() {
                      Increase = value;
                    });
                  },
                ),
                CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title:Text("-10"),
                  subtitle:Text(
                    "Decrease Number By 10",
                    style: TextStyle(
                      color:Colors.blue,
                    ),
                  ),
                  value: Decrease,
                  onChanged: (bool value) {
                    setState(() {
                      Decrease = value;
                    });
                  },
                ),
                SizedBox(
                  width:double.infinity,
                  child: RaisedButton(
                    child: Text("Calculate"),
                    onPressed: (){
                      if(NumTxt.text==""){
                        Result="Please Enter A Number!";
                      }
                      else{
                        double  Calculated=double.parse(NumTxt.text);
                        if(Increase==true){
                          Calculated+=15;
                        }
                        if(Decrease==true){
                          Calculated-=10;
                        }
                        Result="  Result:$Calculated";
                      }
                      PopDialog(Result);

                    },
                  ),
                ),
              ],
            ),
          ),
           ],
         )
        ),
    );
  }
}

