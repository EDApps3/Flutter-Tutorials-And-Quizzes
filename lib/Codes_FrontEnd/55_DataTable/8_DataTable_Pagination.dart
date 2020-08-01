import 'package:flutter/material.dart';

void main() => runApp(PaginationDataTable());

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



class UserDataTableSource extends DataTableSource {
  UserDataTableSource({
    @required List<Persons> userData,
  })  : _userData = userData,
        assert(userData != null);

  final List<Persons> _userData;

  @override
  DataRow getRow(int index) {
    assert(index >= 0);

    if (index >= _userData.length) {
      return null;
    }
    final _user = _userData[index];

    return DataRow.byIndex(
      index: index,
      cells: <DataCell>[
        DataCell(Text('${_user.ID}')),
        DataCell(Text('${_user.Name}')),
        DataCell(Text('${_user.LastName}')),
        DataCell(Text('${_user.Age}')),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => _userData.length;

  @override
  int get selectedRowCount => 0;


  void sort<T>(Comparable<T> Function(Persons d) getField, bool ascending) {
    _userData.sort((a, b) {
      final aValue = getField(a);
      final bValue = getField(b);
      return ascending
          ? Comparable.compare(aValue, bValue)
          : Comparable.compare(bValue, aValue);
    });

    notifyListeners();
  }
}


class PaginationDataTable extends StatefulWidget {
  @override
  PaginationDataTableState createState() => new PaginationDataTableState();
}

class PaginationDataTableState extends State<PaginationDataTable> {
  List<Persons> PersonsLst=<Persons>[
    Persons(1,"Alex","Anderson",18),
    Persons(2,"John","Anderson",24),
    Persons(3,"Alex","Anderson",18),
    Persons(4,"John","Anderson",24),
    Persons(5,"Alex","Anderson",18),
    Persons(6,"John","Anderson",24),
    Persons(7,"Alex","Anderson",18),
    Persons(8,"John","Anderson",24),
    Persons(9,"Alex","Anderson",18),
    Persons(10,"Alex","Anderson",18),
    Persons(11,"John","Anderson",24),
    Persons(12,"Alex","Anderson",18),
    Persons(12,"John","Anderson",24),
    Persons(13,"Alex","Anderson",18),
    Persons(14,"John","Anderson",24),
    Persons(15,"Alex","Anderson",18),
    Persons(16,"John","Anderson",24),
    Persons(17,"Alex","Anderson",18),
    Persons(18,"Alex","Anderson",18),
    Persons(19,"John","Anderson",24),
    Persons(20,"Alex","Anderson",18),
    Persons(21,"John","Anderson",24),
    Persons(22,"Alex","Anderson",18),
    Persons(23,"John","Anderson",24),
    Persons(24,"Alex","Anderson",18),
    Persons(25,"John","Anderson",24),
    Persons(26,"Alex","Anderson",18),
    Persons(27,"Alex","Anderson",18),
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
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Scaffold(
      appBar: AppBar(
        title: Text("Paginated Data Table"),
      ),
      body:SingleChildScrollView(
        child: PaginatedDataTable(
              rowsPerPage:4,
              header :Text("Paginated Data Table Header"),
              columns: [
                DataColumn(label: Text("ID"),),
                DataColumn(label: Text("Name"),),
                DataColumn(label: Text("LastName"),),
                DataColumn(label: Text("Age"),),  
              ],
              source:UserDataTableSource(userData:PersonsLst)
            ),
        ),
      ),
    );
  }
}






