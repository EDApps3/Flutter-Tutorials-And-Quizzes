import 'package:flutter/material.dart';


void main() => runApp(UpdateDataTable());

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


class UpdateDataTable extends StatefulWidget {
  @override
  _UpdateDataTableState createState() => new _UpdateDataTableState();
}

class _UpdateDataTableState extends State<UpdateDataTable> {

  List<Persons> PersonsLst=<Persons>[
    Persons(1,"Alex","Anderson",18),
    Persons(2,"John","Anderson",24),
  ];

  final formKey           = new GlobalKey<FormState>();
  var ID_Controller       = new TextEditingController();
  var Name_Controller     = new TextEditingController();
  var LastName_Controller = new TextEditingController();
  var Age_Controller      = new TextEditingController();
  int curUserId;


  @override
  void initState() {
    super.initState();
    ID_Controller.text="Select A Person From Bottom";
  }


  refreshList() {
    setState(() {
      ID_Controller.text="Select A Person From Bottom";
    });
  }

  validate() {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();

      int ID =int.parse(ID_Controller.text)-1;
      String N  =Name_Controller.text;
      String LN =LastName_Controller.text;
      String A  =Age_Controller.text;

      PersonsLst.elementAt(ID).Name=N;
      PersonsLst.elementAt(ID).LastName=LN;
      PersonsLst.elementAt(ID).Age=int.parse(A);

      refreshList();
      Name_Controller.text="";
      LastName_Controller.text="";
      Age_Controller.text="";
    }
  }

  bool NotIntCheck(var N){
    final V=int.tryParse(N);

    if(V==null){
      print("Not Int");
      return true;
    }
    else{
      print("Int");
      return false;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Insert Into  Data Table"),
      ),
      body:
      ListView(
        children: <Widget>[


          Form(
            key: formKey,
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Person ID:"),
                  TextField(
                    controller:ID_Controller,
                    enabled:false,
                  ),
                  Text("Person Name:"),
                  TextFormField(
                    controller: Name_Controller,
                    keyboardType: TextInputType.text,
                    validator: (val) => val.length == 0 ? 'Enter Person Name' : null,
                  ),
                  Text("Person Last Name:"),
                  TextFormField(
                    controller: LastName_Controller,
                    keyboardType: TextInputType.text,
                    validator: (val) => val.length == 0 ? 'Enter Person LastName' : null,
                  ),
                  Text("Person Age:"),
                  TextFormField(
                    controller: Age_Controller,
                    maxLength:2,
                    keyboardType: TextInputType.number,
                    validator: (val) => NotIntCheck(val) ? 'Enter Person Age,Number Required' : null,
                  ),
                  SizedBox(
                    width:double.infinity,
                    child:RaisedButton(
                      color: Colors.green,
                      shape:RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child:
                      Text(
                        'Update Person',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: validate,
                    ),
                  ),

                ],
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
                DataCell(
                  Text(Prs.ID.toString()),
                  onTap: () {
                    ID_Controller.text        = Prs.ID.toString();
                    Name_Controller.text      = Prs.Name.toString();
                    LastName_Controller.text  = Prs.LastName.toString();
                    Age_Controller.text       = Prs.Age.toString();
                  },
                ),
                DataCell(
                  Text(Prs.Name),
                  onTap: () {
                    ID_Controller.text        = Prs.ID.toString();
                    Name_Controller.text      = Prs.Name.toString();
                    LastName_Controller.text  = Prs.LastName.toString();
                    Age_Controller.text       = Prs.Age.toString();
                  },
                ),
                DataCell(
                  Text(Prs.LastName),
                  onTap: () {
                    ID_Controller.text        = Prs.ID.toString();
                    Name_Controller.text      = Prs.Name.toString();
                    LastName_Controller.text  = Prs.LastName.toString();
                    Age_Controller.text       = Prs.Age.toString();
                  },
                ),
                DataCell(
                  Text(Prs.Age.toString()),
                  onTap: () {
                    ID_Controller.text        = Prs.ID.toString();
                    Name_Controller.text      = Prs.Name.toString();
                    LastName_Controller.text  = Prs.LastName.toString();
                    Age_Controller.text       = Prs.Age.toString();
                  },
                ),
              ]),
              ).toList(),
            ),
          ),



        ],
      ),
    );
  }
}






