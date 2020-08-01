import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() => runApp(PHP_InsData());

class Products {
  String ProductID,ProductName;

  Products(this.ProductID, this.ProductName);

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'ProductID': ProductID,
      'ProductName': ProductName,
    };
    return map;
  }

  Products.fromMap(Map<String, dynamic> map) {
    ProductID = map['ProductID'];
    ProductName = map['ProductName'];
  }
}


class PHP_InsData extends StatefulWidget {
  @override
  _PHP_InsData_State createState() => _PHP_InsData_State();
}

class _PHP_InsData_State extends State<PHP_InsData> {
  Future<List<Products>> ProductsLst;
  var ProductNameController = TextEditingController();
  var ProductIDController   = TextEditingController();
  String Productname;
  final formKey = new GlobalKey<FormState>();


  Future<List<Products>> getProducts() async {
    var url = 'https://httpfluttertest.000webhostapp.com/GetPrd.php';
    http.Response response = await http.get(url);
    var maps = jsonDecode(response.body);
    List<Products> ProductsArr = [];
    if (maps.length > 0) {
      for (int i = 0; i < maps.length; i++) {
        ProductsArr.add(Products.fromMap(maps[i]));
      }
    }
    return ProductsArr;
  }


  Future<int> Insert(String InsName) async {
    var url = 'http://httpfluttertest.000webhostapp.com/InsertPrd.php?InsName=$InsName';
    await http.post(url);
  }


  Future GetMaxID() async {
    var url = 'https://httpfluttertest.000webhostapp.com/prdmaxid.php';
    http.Response response = await http.get(url);
    var Query = jsonDecode(response.body);

    if(Query.first["LID"]==null){
      ProductIDController.text="1";
    }
    else{
      ProductIDController.text= Query.first["LID"].toString();
    }
  }


  @override
  void initState() {
    super.initState();
    refreshList();
  }

  refreshList() {
    setState(() {
      GetMaxID();
      ProductsLst = getProducts();
    });
  }


  validate() {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      String ProductName=ProductNameController.text;
      Insert(ProductName);
      ProductNameController.text="";
      refreshList();

    }
  }

  SingleChildScrollView dataTable(List<Products> PrdLst) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: DataTable(
        columns: [
          DataColumn(label: Text('ProductID'),),
          DataColumn(label: Text('ProductName'),),
        ],
        rows: PrdLst.map((Cr) => DataRow(cells: [
          DataCell(
            Text(Cr.ProductID.toString()),
          ),
          DataCell(
            Text(Cr.ProductName),
          ),
        ]),).toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PHP Insert Data',
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: Text("PHP Insert Data"),
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
                    Text("Product ID:"),
                    TextField(
                      decoration:InputDecoration(
                        icon: Icon(Icons.exposure_plus_1),
                      ),
                      enabled:false,
                      controller:ProductIDController,
                    ),
                    Text("Product Name:"),
                    TextFormField(
                      decoration:InputDecoration(
                        icon:Icon(Icons.add),
                        hintText:"Product Name",
                      ),
                      controller: ProductNameController,
                      keyboardType: TextInputType.text,
                      validator: (val) => val.length == 0 ? 'Insert A ProductName' : null,
                      onSaved: (val) => Productname = val,
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
                          'Insert Product',
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

            FutureBuilder(
              future: ProductsLst,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return dataTable(snapshot.data);
                }
                else{
                  return Center(
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height:100,),
                        CircularProgressIndicator(),
                        SizedBox(height:5,),
                        Text("Fetching Data,Make Sure You Are Connected To Internet!")
                      ],
                    ),
                  );
                }

              },
            ),


          ],
        ),
      ),
    );
  }


}