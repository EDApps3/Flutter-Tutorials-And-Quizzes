import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() => runApp(PHP_DelAllData());

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


class PHP_DelAllData extends StatefulWidget {
  @override
  _PHP_DelAllData_State createState() => _PHP_DelAllData_State();
}

class _PHP_DelAllData_State extends State<PHP_DelAllData> {
  Future<List<Products>> ProductsLst;

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


  Future<List<Products>> DelAllProducts() async {
    var url = 'http://httpfluttertest.000webhostapp.com/DeleteAllPrd.php';
    await http.post(url);
    List<Products> ProductsArr = [];
    return ProductsArr;
  }

  @override
  void initState() {
    super.initState();
    refreshList();
  }

  refreshList() {
    setState(() {
      ProductsLst = getProducts();
    });
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
          DataCell(Text(Cr.ProductID.toString()),),
          DataCell(Text(Cr.ProductName),),
        ]),).toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PHP GetData',
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: Text("PHP GetData"),
        ),
        body:
        ListView(
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
                    'Delete All Products',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed:(){
                    DelAllProducts();
                    refreshList();
                  },
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