import 'package:flutter/material.dart';

void main() => runApp(SortDataTable());

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


class SortDataTable extends StatefulWidget {
  @override
  _SortDataTableState createState() => new _SortDataTableState();
}

class _SortDataTableState extends State<SortDataTable> {
  List<Persons> PersonsLst=<Persons>[
    Persons(1,"Alex","Anderson",18),
    Persons(2,"John","Anderson",24),
  ];
  bool sort;


  @override
  void initState() {
    super.initState();
    sort = false;
  }

  onSortColum(int columnIndex, bool ascending) {
    if (columnIndex == 0) {
      if (ascending) {
        PersonsLst.sort((a, b) => a.ID.compareTo(b.ID));
      } else {
        PersonsLst.sort((a, b) => b.ID.compareTo(a.ID));
      }
    }
    else if (columnIndex == 1) {
      if (ascending) {
        PersonsLst.sort((a, b) => a.Name.compareTo(b.Name));
      } else {
        PersonsLst.sort((a, b) => b.Name.compareTo(a.Name));
      }
    }
    else if (columnIndex == 2) {
      if (ascending) {
        PersonsLst.sort((a, b) => a.LastName.compareTo(b.LastName));
      } else {
        PersonsLst.sort((a, b) => b.LastName.compareTo(a.LastName));
      }
    }
    else if (columnIndex == 3) {
      if (ascending) {
        PersonsLst.sort((a, b) => a.Age.compareTo(b.Age));
      } else {
        PersonsLst.sort((a, b) => b.Age.compareTo(a.Age));
      }
    }
  }

  int ColIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sort Data Table"),
      ),
      body: ListView(
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              sortAscending: sort,
              sortColumnIndex:ColIndex,
              columns: [
                DataColumn(
                    label: Text("ID"),
                    onSort: (columnIndex, ascending) {
                      setState(() {
                        sort = !sort;
                        ColIndex=columnIndex;
                      });
                      onSortColum(columnIndex, ascending);
                    }
                ),
                DataColumn(
                  label: Text("Name"),
                    onSort: (columnIndex, ascending) {
                      setState(() {
                        sort = !sort;
                        ColIndex=columnIndex;
                      });
                      onSortColum(columnIndex, ascending);
                    }
                ),
                DataColumn(
                    label: Text("LastName"),
                    onSort: (columnIndex, ascending) {
                      setState(() {
                        sort = !sort;
                        ColIndex=columnIndex;
                      });
                      onSortColum(columnIndex, ascending);
                    }
                ),
                DataColumn(
                    label: Text("Age"),
                    onSort: (columnIndex, ascending) {
                      setState(() {
                        sort = !sort;
                        ColIndex=columnIndex;
                      });
                      onSortColum(columnIndex, ascending);
                    }
                ),
              ],
              rows: PersonsLst.map((user) => DataRow(cells: [
                  DataCell(Text(user.ID.toString()),),
                  DataCell(Text(user.Name),),
                  DataCell(Text(user.LastName),),
                  DataCell(Text(user.Age.toString()),),
              ]),
              ).toList(),
            ),
          ),
        ],
      ),
    );
  }
}






