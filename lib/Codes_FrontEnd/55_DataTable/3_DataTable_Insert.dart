import 'package:flutter/material.dart';


void main() => runApp(InsertDataTable());

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


class InsertDataTable extends StatefulWidget {
  @override
  _InsertDataTableState createState() => new _InsertDataTableState();
}

class _InsertDataTableState extends State<InsertDataTable> {
  List<Persons> PersonsLst=<Persons>[
    Persons(1,"Alex","Anderson",18),
    Persons(2,"John","Anderson",24),
  ];

  final formKey           = new GlobalKey<FormState>();
  var ID_Controller       = new TextEditingController();
  var Name_Controller     = new TextEditingController();
  var LastName_Controller = new TextEditingController();
  var Age_Controller      = new TextEditingController();
  var lastID=2;



  @override
  void initState() {
    super.initState();
    lastID++;
    ID_Controller.text=lastID.toString();
  }


  refreshList() {
    setState(() {
      ID_Controller.text=lastID.toString();
    });
  }

  validate() {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();

      String ID =ID_Controller.text;
      String N  =Name_Controller.text;
      String LN =LastName_Controller.text;
      String A  =Age_Controller.text;

      Persons p = Persons(int.parse(ID),N,LN,int.parse(A));
      PersonsLst.add(p);
      lastID++;
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
                        'Insert Person',
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
              rows: PersonsLst.map((p) => DataRow(cells: [
                DataCell(Text(p.ID.toString()),),
                DataCell(Text(p.Name),),
                DataCell(Text(p.LastName),),
                DataCell(Text(p.Age.toString()),),
              ]),
              ).toList(),
            ),
          ),



        ],
      ),
    );
  }
}






