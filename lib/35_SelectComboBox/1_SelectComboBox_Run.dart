import 'package:flutter/material.dart';


void main() {
  runApp(SelectComboBoxRun());
}

class SelectComboBoxRun extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CBState();
}

class _CBState extends State<SelectComboBoxRun> {
  List<String> _LetterList = ['A','B','C','D','E','F','G'];
  String _selectedLetter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('ComboBox'),
        ),
        body:
         Center(
          child:
           Row(
             mainAxisAlignment:MainAxisAlignment.center,
             children: <Widget>[
               Text("Select Letter:"),
               DropdownButton(
                 hint: Text('Select A Letter!'),
                 value: _selectedLetter,
                 onChanged: (newValue) {
                   setState(() {
                     _selectedLetter = newValue;
                   });
                 },
                 items: _LetterList.map((location) {
                   return DropdownMenuItem(
                     child: new Text(location),
                     value: location,
                   );
                 }).toList(),
               ),
             ],
           ),
        ),
      ),
    );
  }
}
