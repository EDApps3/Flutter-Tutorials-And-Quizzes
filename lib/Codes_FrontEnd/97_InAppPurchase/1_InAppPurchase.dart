import 'package:flutter/material.dart';
import 'dart:async';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'dart:io';
import 'package:toast/toast.dart';


void main() {
  InAppPurchaseConnection.enablePendingPurchases();
  runApp(InAppPurchaseRun());
}

const bool kAutoConsume = true;

const List<String> _kProductIds = <String>[
  "donate_iap",
];

class InAppPurchaseRun extends StatefulWidget {
  @override
  TokensPageState createState() => new TokensPageState();
}

class TokensPageState extends State<InAppPurchaseRun> {
  final InAppPurchaseConnection _connection = InAppPurchaseConnection.instance;
  StreamSubscription<List<PurchaseDetails>> _subscription;
  List<ProductDetails> _products = [];
  List<PurchaseDetails> _purchases = [];
  bool _purchasePending = false;
  bool _loading = true;

  @override
  void initState(){
    Stream purchaseUpdated =InAppPurchaseConnection.instance.purchaseUpdatedStream;
    _subscription = purchaseUpdated.listen((purchaseDetailsList) {
      _listenToPurchaseUpdated(purchaseDetailsList);
    }, onDone: () {
      _subscription.cancel();
    }, onError: (error) {
    });
    initStoreInfo();
    super.initState();
  }

  @override
  void dispose(){
    super.dispose();
    _subscription.cancel();
  }

  
  Future<void> initStoreInfo() async {
    final bool isAvailable = await _connection.isAvailable();
    if (!isAvailable) {
      setState(() {
        _products = [];
        _purchases = [];
        _purchasePending = false;
        _loading = false;
      });
      return;
    }

    ProductDetailsResponse productDetailResponse = await _connection.queryProductDetails(_kProductIds.toSet());
    if (productDetailResponse.error != null || productDetailResponse.productDetails.isEmpty) {
      setState(() {
        _products = productDetailResponse.productDetails;
        _purchases = [];
        _purchasePending = false;
        _loading = false;
      });
      return;
    }

    final QueryPurchaseDetailsResponse purchaseResponse = await _connection.queryPastPurchases();
      if (purchaseResponse.error != null) {
      // handle query past purchase error..
      }
      final List<PurchaseDetails> verifiedPurchases = [];
      for (PurchaseDetails purchase in purchaseResponse.pastPurchases) {
        if (await _verifyPurchase(purchase)) {
          verifiedPurchases.add(purchase);
        }
      }
      setState(() {
        _products = productDetailResponse.productDetails;
        _purchases = verifiedPurchases;
        _purchasePending = false;
        _loading = false;
      });
   }

  
  Card _buildProductList() {
    if (_loading) {
      return Card(
          child: (ListTile(
              leading: CircularProgressIndicator(),
              title: Text('Fetching products...'))));
    }

    List<ListTile> productList = <ListTile>[];
    

    Map<String, PurchaseDetails> purchases =
        Map.fromEntries(_purchases.map((PurchaseDetails purchase) {
      if (purchase.pendingCompletePurchase) {
        InAppPurchaseConnection.instance.completePurchase(purchase);
      }
      return MapEntry<String, PurchaseDetails>(purchase.productID, purchase);
    }));
    productList.addAll(_products.map(
      (ProductDetails productDetails) {
        PurchaseDetails previousPurchase = purchases[productDetails.id];
        return ListTile(
            leading:Icon(Icons.monetization_on),
            title:Text(productDetails.title.replaceAll("(Flutter Tutorials And Quizzes)",""),), 
            subtitle: Text(productDetails.description,),
            trailing:FlatButton(
                    child: Text(productDetails.price),
                    color: Colors.green[800],
                    textColor: Colors.white,
                    onPressed: () {
                      PurchaseParam purchaseParam = PurchaseParam(
                          productDetails: productDetails,
                          applicationUserName: null,
                          sandboxTesting: true);
                        _connection.buyConsumable(
                            purchaseParam: purchaseParam,
                            autoConsume: kAutoConsume || Platform.isIOS);
                    },
                  ));
      },
    ));

    return Card(
        child:Column(
          children: <Widget>[
          ] +productList
        )
        );
  }

  



  void showPendingUI() {
    setState(() {
      _purchasePending = true;
    });
  }



  void handleError(IAPError error) {
    setState(() {
      _purchasePending = false;
    });
  }

  Future<bool> _verifyPurchase(PurchaseDetails purchaseDetails) {
    return Future<bool>.value(true);
  }

  void _handleInvalidPurchase(PurchaseDetails purchaseDetails) {
    Toast.show("Purchase Failed!", context);
  }

  void _listenToPurchaseUpdated(List<PurchaseDetails> purchaseDetailsList) {
    purchaseDetailsList.forEach((PurchaseDetails purchaseDetails) async {
      if (purchaseDetails.status == PurchaseStatus.pending) {
        showPendingUI();
      } else {
        if (purchaseDetails.status == PurchaseStatus.error) {
          handleError(purchaseDetails.error);
          Toast.show("Purchase Error!", context);
        } 
        else if (purchaseDetails.status == PurchaseStatus.purchased) {
          bool valid = await _verifyPurchase(purchaseDetails);
          if (valid) {
            Toast.show(
              "Donation Complete,Thank You!",
              context,
              duration:6
            );
          } else {
            _handleInvalidPurchase(purchaseDetails);
            return;
          }
        }
        if (Platform.isAndroid) {
            await InAppPurchaseConnection.instance.consumePurchase(purchaseDetails);  
        }
        if (purchaseDetails.pendingCompletePurchase) {
          await InAppPurchaseConnection.instance.completePurchase(purchaseDetails);
        }
      }
    });
  }



  Widget build(BuildContext context) {
    return Scaffold(
       appBar:AppBar(
          leading:IconButton(
            onPressed:(){},
            icon:Icon(Icons.monetization_on),
          ),
          title:Text("In App Purchase"),
        ),
        body:_buildProductList(),
    );
  }


}