import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() => runApp(PHP_UpdateData());


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


class PHP_UpdateData extends StatefulWidget {
  @override
  _PHP_UpdateData_State createState() => _PHP_UpdateData_State();
}

class _PHP_UpdateData_State extends State<PHP_UpdateData> {
  Future<List<Products>> ProductsLst;
  var ProductNameController = TextEditingController();
  var ProductIDController   = TextEditingController();
  String ProductName;
  int curUserId;
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

  Future<int> Update(int UpdateID,String SetName) async {
    var url = 'http://httpfluttertest.000webhostapp.com/UpdatePrd.php?SetName=$SetName&UpdateID=$UpdateID';
    await http.post(url);
  }

  @override
  void initState() {
    super.initState();
    ProductIDController.text="Select A Product From Bottom";
    refreshList();
  }

  refreshList() {
    setState(() {
      ProductsLst = getProducts();
    });
  }

  validate() {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      int ProductID  =int.parse(ProductIDController.text);
      String ProductName=ProductNameController.text;

      Update(ProductID,ProductName);
      refreshList();
      ProductNameController.text="";
      ProductIDController.text="Select Product From Bottom";
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
            onTap: () {
              setState(() {
                curUserId = int.parse(Cr.ProductID);
              });
              ProductNameController.text = Cr.ProductName;
              ProductIDController.text   = Cr.ProductID.toString();
            },
          ),
          DataCell(
            Text(Cr.ProductName),
            onTap: () {
              setState(() {
                curUserId = int.parse(Cr.ProductID);
              });
              ProductNameController.text = Cr.ProductName;
              ProductIDController.text   = Cr.ProductID.toString();
            },
          ),
        ]),).toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'PHP Update Data',
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: Text("PHP Update Data"),
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
                      validator: (val) => val.length == 0 ? 'Select ProductName From Bottom' : null,
                      onSaved: (val) => ProductName = val,
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
                          'Update Product',
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