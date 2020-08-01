import 'package:flutter/material.dart';

void main() => runApp(DeleteDataTable());

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



class DeleteDataTable extends StatefulWidget {
  @override
  _DeleteDataTableState createState() => new _DeleteDataTableState();
}

class _DeleteDataTableState extends State<DeleteDataTable> {
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
        title: Text("Delete Data Table"),
      ),
      body: ListView(
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columns: [
                DataColumn(label: Text("Action"),),
                DataColumn(label: Text("ID"),),
                DataColumn(label: Text("Name"),),
                DataColumn(label: Text("LastName"),),
                DataColumn(label: Text("Age"),),
              ],
              rows: PersonsLst.map((Prs) => DataRow(cells: [
                   DataCell(IconButton(
                     icon: Icon(Icons.delete),
                     onPressed: () {
                       for(int i=0;i<PersonsLst.length;i++){
                         if(PersonsLst.elementAt(i).ID==Prs.ID){
                           PersonsLst.removeAt(i);
                         }
                       }
                       refreshList();
                     },
                  )),
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






