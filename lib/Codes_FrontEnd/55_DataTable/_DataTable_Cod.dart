import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';

void main() => runApp(SortDataTable());

class User {
  String firstName;
  String lastName;

  User({this.firstName, this.lastName});

  static List<User> getUsers() {
    return <User>[
      User(firstName: "Aaryan", lastName: "Shah"),
      User(firstName: "Ben", lastName: "John"),
      User(firstName: "Carrie", lastName: "Brown"),
      User(firstName: "Deep", lastName: "Sen"),
      User(firstName: "Emily", lastName: "Jane"),
    ];
  }
}

class SortDataTable extends StatefulWidget {
  @override
  _SortDataTableState createState() => new _SortDataTableState();
}

class _SortDataTableState extends State<SortDataTable> {
  List<User> users;
  List<User> selectedUsers;
  bool sort;

  @override
  void initState() {
    sort = false;
    selectedUsers = [];
    users = User.getUsers();
    super.initState();
  }

  onSortColum(int columnIndex, bool ascending) {
    if (columnIndex == 0) {
      if (ascending) {
        users.sort((a, b) => a.firstName.compareTo(b.firstName));
      } else {
        users.sort((a, b) => b.firstName.compareTo(a.firstName));
      }
    }
  }

  
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
              sortColumnIndex: 0,
              columns: [
                DataColumn(
                    label: Text("FIRST NAME"),
                    onSort: (columnIndex, ascending) {
                      setState(() {
                        sort = !sort;
                      });
                      onSortColum(columnIndex, ascending);
                    }),
                DataColumn(label: Text("LAST NAME"),),
              ],
              rows: users.map((user) => DataRow(cells: [
                  DataCell(Text(user.firstName),),
                  DataCell(Text(user.lastName),),
                ]),
              ).toList(),
            ),
          ),
        ],
      ),
    );
  }
}






