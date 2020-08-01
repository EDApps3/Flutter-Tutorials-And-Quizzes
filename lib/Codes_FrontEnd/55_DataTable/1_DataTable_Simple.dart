import 'package:flutter/material.dart';

void main() => runApp(SimpleDataTable());


class SimpleDataTable extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Simple Data Table'),
        ),
        body:
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            columns: [
              DataColumn(label: Text('ID'),),
              DataColumn(label: Text('Name'),),
              DataColumn(label: Text('LastName'),),
              DataColumn(label: Text('Age'),),
            ],
            rows:[
              DataRow(cells: [
                DataCell(Text("1")),
                DataCell(Text("Alex")),
                DataCell(Text("Anderson")),
                DataCell(Text("18")),
              ]),
              DataRow(cells: [
                DataCell(Text("2")),
                DataCell(Text("John")),
                DataCell(Text("Anderson")),
                DataCell(Text("24")),
              ]),
            ]
          ),
        ),
      ),
    );
  }
}






