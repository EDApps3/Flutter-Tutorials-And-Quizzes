import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() => runApp(PHP_GetData());

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


class PHP_GetData extends StatefulWidget {
  @override
  _PHP_GetData_State createState() => _PHP_GetData_State();
}

class _PHP_GetData_State extends State<PHP_GetData> {
  Future<List<Products>> ProductsLst;

  Future<List<Products>> getProducts() async {
    var url = 'https://httpfluttertest.000webhostapp.com/GetPrd.php';
    http.Response response = await http.get(url);
    var maps = jsonDecode(response.body);
    List<Products> ProductArr = [];
    if (maps.length > 0) {
      for (int i = 0; i < maps.length; i++) {
        ProductArr.add(Products.fromMap(maps[i]));
      }
    }
    return ProductArr;
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
        rows: PrdLst.map((Pr) => DataRow(cells: [
          DataCell(Text(Pr.ProductID.toString()),),
          DataCell(Text(Pr.ProductName),),
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