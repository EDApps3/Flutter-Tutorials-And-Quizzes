import 'package:flutter/material.dart';

void main() => runApp(DeleteAllDataTable());

class Persons {
  int ID,Age;
  String Name,LastName;

  Persons(
      this.ID,
      this.Name,
      this.LastName,
      this.Age
  );

}



class DeleteAllDataTable extends StatefulWidget {
  @override
  _DeleteAllDataTableState createState() => new _DeleteAllDataTableState();
}

class _DeleteAllDataTableState extends State<DeleteAllDataTable> {
  List<Persons> PersonsLst=<Persons>[
    Persons(1,"Alex","Anderson",18),
    Persons(2,"John","Anderson",24),
  ];


  @override
  void initState() {
    super.initState();
  }

  refreshList() {
    setState(() {
      PersonsLst=PersonsLst;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Delete All Data Table"),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width:double.infinity,
              child:RaisedButton(
                color: Colors.red,
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child:
                Text(
                  'Delete All Persons',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed:(){
                  PersonsLst.clear();
                  refreshList();
                },
              ),
            ),
          ),




          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columns: [
                DataColumn(label: Text("ID"),),
                DataColumn(label: Text("Name"),),
                DataColumn(label: Text("LastName"),),
                DataColumn(label: Text("Age"),),
              ],
              rows: PersonsLst.map((Prs) => DataRow(cells: [
                  DataCell(Text(Prs.ID.toString()),),
                  DataCell(Text(Prs.Name),),
                  DataCell(Text(Prs.LastName),),
                  DataCell(Text(Prs.Age.toString()),),
              ]),
              ).toList(),
            ),
          ),
        ],
      ),
    );
  }
}






