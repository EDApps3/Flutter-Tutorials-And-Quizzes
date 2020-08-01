import 'package:flutter/material.dart';

void main() => runApp(SimpleCheckBox());

class SimpleCheckBox extends StatefulWidget {
  @override
  _SimpleCheckBoxState createState() => _SimpleCheckBoxState();
}

class _SimpleCheckBoxState extends State<SimpleCheckBox> {
  bool JSVal = false;
  bool CSharpVal = false;
  bool PythonVal = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text("Simple CheckBox"),
          centerTitle: true,
        ),
        body:
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      "Select All The Programing Languages You Know:",
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Checkbox(
                      value: JSVal,
                      onChanged: (bool value) {
                        setState(() {
                          JSVal = value;
                        });
                      },
                    ),
                    Text("Javascript"),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Checkbox(
                      value: CSharpVal,
                      onChanged: (bool value) {
                        setState(() {
                          CSharpVal = value;
                        });
                      },
                    ),
                    Text("C#"),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Checkbox(
                      value: PythonVal,
                      onChanged: (bool value) {
                        setState(() {
                          PythonVal = value;
                        });
                      },
                    ),
                    Text("Python"),
                  ],
                ),
                Row(
                  children: <Widget>[
                    RaisedButton(
                      child: Text("Apply!"),
                      onPressed: (){
                        String Txt="You Selected:\n";

                        if(JSVal==false && CSharpVal==false && PythonVal==false){
                          Txt=Txt+"None\n";
                        }
                        else {

                          if (JSVal == true) {
                            Txt = Txt + "Javascript\n";
                          }
                          if (CSharpVal == true) {
                            Txt = Txt + "C#\n";
                          }
                          if (PythonVal == true) {
                            Txt = Txt + "Python\n";
                          }
                          
                        }

                        var AD=new AlertDialog(
                          title: Text("Thank You For Applying!"),
                          content:Text("$Txt"),
                        );

                        showDialog(
                          context: context,
                          child: AD,
                        );

                      },
                    )
                  ],
                ),


              ],

            ),
          ),
      ),
    );
  }
}