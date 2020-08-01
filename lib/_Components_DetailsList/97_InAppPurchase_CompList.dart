import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';
import 'package:get/get.dart';
import '../AppSoundPlay.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Courses/CmpWebView.dart';

var InAppPurchaseGlobal =ListTile(
    leading:Image.asset("Images/Dart_Logo.png"),
    title:Text("In App Purchase",),
    subtitle:Text("Tap Here To See The Official Documentation Provided On This Widget!",),
    onTap:(){
      PlayTapSound();
      Get.to(
      CmpWebViewPage(
        Title:"In App Purchase",
        GoUrl:"https://pub.dev/packages/in_app_purchase",
      )
      );
    },
);

List InAppPurchase_OffDoc=[
  SizedBox(height:10),
  InAppPurchaseGlobal,
];




String InAppPurchase_Explanation=
    "Soon!\n\n";



List InAppPurchase_list =[
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"What Is InAppPurchase?",),
              Divider(),
              CmpSubTitle(SubTitle:"A Flutter plugin for in-app purchases. Exposes APIs for making in-app purchases through the App Store (on iOS) and Google Play (on Android).\n",),
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Getting Started:",),
              Divider(),
              CmpSubTitle(SubTitle:"We Need To Import Into The Yaml The Plugin:",),
              SizedBox(height: 16,),
              Image.asset("Images/IAP_1.PNG",),
              CmpSubTitle(SubTitle:"\n\nDon't Forget To Get Packages!",),
              CmpSubTitle(SubTitle:"\n\nWe Need To Import:\nimport 'package:in_app_purchase/in_app_purchase.dart';\nimport 'package:toast/toast.dart';",),
            ]
        ),
      ),
    ),
  ),


   SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Add Billing Permission:",),
              Divider(),
              CmpSubTitle(SubTitle:"1-Head To Manifest:",),
              Image.asset("Images/AppName1.PNG"),
              CmpSubTitle(SubTitle:"\n2-Add:\n",),
              Image.asset("Images/IAP_2.PNG"),
              ]
        ),
      ),
    ),
  ),
  


  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Set Google Play Product:",),
              Divider(),
              CmpSubTitle(SubTitle:"Note:App Must Be Uploaded With Billing Permission Added In Manifest Before Continue To This Steps!\n\n",),

              CmpSubTitle(SubTitle:"1-Open Managed Product In App Product:",),
              Image.asset("Images/IAP_3.PNG"),

              CmpSubTitle(SubTitle:"\n2-Starting The Creation Of Product By Taping CREATE MANAGED PRODUCT:\n",),
              Image.asset("Images/IAP_4.PNG"),

              CmpSubTitle(SubTitle:"\n3-Set Product ID:\n",),
              Image.asset("Images/IAP_5.PNG"),

              CmpSubTitle(SubTitle:"\n4-Set Product Details With Active:\n",),
              Image.asset("Images/IAP_6.PNG"),

              CmpSubTitle(SubTitle:"\n5-Set Product Price:\n",),
              Image.asset("Images/IAP_7.PNG"),

              CmpSubTitle(SubTitle:"\n6-Finally Save:\n",),
              Image.asset("Images/IAP_8.PNG"),


              ]
        ),
      ),
    ),
  ),
  



  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Code:",),
              Divider(),

              CmpSubTitle(SubTitle:"\n1-Enable Purchase:",),
              CmpCode(
                CodeTxt:
                 "void main() {\n"
                 " InAppPurchaseConnection.enablePendingPurchases();\n"
                 " runApp(InAppPurchaseRun());\n"
                 "}\n",
              ),

              CmpSubTitle(SubTitle:"\n2-Create Variable To Consume And Enable Re-Buy Again:",),
              CmpCode(CodeTxt:"const bool kAutoConsume = true;"),

              CmpSubTitle(SubTitle:"\n3-Create List Of The ProductID To Fetch From GooglePlay Store:",),
              CmpCode(
                CodeTxt:
                 "const List<String> _kProductIds = <String>[\n"
                 " 'donate_iap',\n"
                 "];\n"
              ),

              CmpSubTitle(SubTitle:"\n4-Create InAppPurchase Connection:",),
              CmpCode(CodeTxt:"final InAppPurchaseConnection _connection = InAppPurchaseConnection.instance;"),

              CmpSubTitle(SubTitle:"\n5-Create Stream Subscription:",),
              CmpCode(CodeTxt:"StreamSubscription<List<PurchaseDetails>> _subscription;"),

              CmpSubTitle(SubTitle:"\n6-Create List That Will Store Products Once Fetched:",),
              CmpCode(CodeTxt:"List<ProductDetails> _products = [];"),

              CmpSubTitle(SubTitle:"\n7-Create List That Will Store Purchases Once Fetched:",),
              CmpCode(CodeTxt:"List<PurchaseDetails> _purchases = [];"),

              CmpSubTitle(SubTitle:"\n8-Create Pending Variable May Be Caused By Low Internet Connection In Purchase:",),
              CmpCode(CodeTxt:"bool _purchasePending = false;"),

              CmpSubTitle(SubTitle:"\n9-Create loading Variable Set To False When EveryThing Is Loaded:",),
              CmpCode(CodeTxt:"bool _loading = true;\n"),

              CmpSubTitle(SubTitle:"\n10-Initializing Purchases,Subscription And Store:",),
              CmpCode(
                CodeTxt:
                 "@override\n"
                 " void initState(){\n"
                 " Stream purchaseUpdated =InAppPurchaseConnection.instance.purchaseUpdatedStream;\n"
                 " _subscription = purchaseUpdated.listen((purchaseDetailsList) {\n"
                 "  _listenToPurchaseUpdated(purchaseDetailsList);\n"
                 " }, onDone: () {\n"
                 "  _subscription.cancel();\n"
                 " }, onError: (error) {});\n"
                 " initStoreInfo();\n"
                 "}\n"
              ),


              CmpSubTitle(SubTitle:"\n11-Listening To Pending Purchases Or Purchasing:",),
              CmpCode(
                CodeTxt:
                 "void _listenToPurchaseUpdated(List<PurchaseDetails> purchaseDetailsList) {\n"
                 " purchaseDetailsList.forEach((PurchaseDetails purchaseDetails) async {\n"
                 "  if (purchaseDetails.status == PurchaseStatus.pending) {\n"
                 "   showPendingUI();\n"
                 "  } else {\n"
                 "   if (purchaseDetails.status == PurchaseStatus.error) {\n"
                 "    handleError(purchaseDetails.error);\n"
                 "    Toast.show('Purchase Error!', context);\n"
                 "   }\n"
                 "   else if (purchaseDetails.status == PurchaseStatus.purchased) {\n"
                 "    bool valid = await _verifyPurchase(purchaseDetails);\n"
                 "    if (valid) {\n"
                 "     Toast.show('Donation Complete',context,duration:6);\n"
                 "    } else {\n"
                 "     _handleInvalidPurchase(purchaseDetails);\n"
                 "     return;\n"
                 "    }\n"
                 "   }\n"
                 "   if (Platform.isAndroid) {\n"
                 "    await InAppPurchaseConnection.instance.consumePurchase(purchaseDetails);\n" 
                 "   }\n"
                 "   if (purchaseDetails.pendingCompletePurchase) {\n"
                 "    await InAppPurchaseConnection.instance.completePurchase(purchaseDetails);\n"
                 "   }\n"
                 "  }\n"
                 " });\n"
                 "}\n"
              ),

              CmpSubTitle(SubTitle:"\n12-Handling Purchase Error:",),
              CmpCode(
                CodeTxt:
                 "void _handleInvalidPurchase(PurchaseDetails purchaseDetails) {\n"
                 " Toast.show('Purchase Failed!', context);\n"
                 "}\n"
              ),

              CmpSubTitle(SubTitle:"\n13-Handling If PurchasesVerified:",),
              CmpCode(
                CodeTxt:
                 "Future<bool> _verifyPurchase(PurchaseDetails purchaseDetails) {\n"
                 " return Future<bool>.value(true);\n"
                 "}\n"
              ),

              CmpSubTitle(SubTitle:"\n14-Handling Purchase Pending Error May Be Caused Due Internet Connection:",),
              CmpCode(
                CodeTxt:
                 "void handleError(IAPError error) {\n"
                 " setState(() {\n"
                 " _purchasePending = false;\n"
                 " });\n"
                 "}\n"
              ),

              CmpSubTitle(SubTitle:"\n15-Method Setting Pending To True:",),
              CmpCode(
                CodeTxt:
                 "void showPendingUI() {\n"
                 " setState(() {\n"
                 "  _purchasePending = true;\n"
                 " });\n"
                 "}\n"
              ),

              CmpSubTitle(SubTitle:"\n16-Building Product Widget Into Card:",),
              CmpCode(
                CodeTxt:
                 "Card _buildProductList() {\n\n"
                 " if (_loading) {\n"
                 "  return Card(\n"
                 "   child:ListTile(\n"
                 "    leading: CircularProgressIndicator(),\n"
                 "    title: Text('Fetching products...')\n"
                 "   ),\n"
                 "  );\n"
                 " }\n\n"
                 " List<ListTile> productList = <ListTile>[];\n"
                 " Map<String, PurchaseDetails> purchases = Map.fromEntries(_purchases.map((PurchaseDetails purchase) {\n"
                 "  if (purchase.pendingCompletePurchase) {\n"
                 "   InAppPurchaseConnection.instance.completePurchase(purchase);\n"
                 "  }\n"
                 "  return MapEntry<String, PurchaseDetails>(purchase.productID, purchase);\n"
                 " }));\n\n"
                 " productList.addAll(_products.map(\n"
                 " (ProductDetails productDetails) {\n"
                 "  PurchaseDetails previousPurchase = purchases[productDetails.id];\n"
                 "  return ListTile(\n"
                 "   leading:Icon(Icons.monetization_on),\n"
                 "   title:Text(productDetails.title,),\n"
                 "   subtitle: Text(productDetails.description,),\n"
                 "   trailing:FlatButton(\n"
                 "    child: Text(productDetails.price),\n"
                 "    color: Colors.green[800],\n"
                 "    textColor: Colors.white,\n"
                 "    onPressed: () {\n"
                 "      PurchaseParam purchaseParam = PurchaseParam(\n"
                 "      productDetails: productDetails,\n"
                 "      applicationUserName: null,\n"
                 "      sandboxTesting: true,\n"
                 "    );\n"
                 "    _connection.buyConsumable(\n"
                 "     purchaseParam: purchaseParam,\n"
                 "     autoConsume: kAutoConsume || Platform.isIOS,\n"
                 "    );\n"
                 "   },\n"
                 "  ),\n"
                 " );\n"
                 " ));\n\n"
                 " return Card(\n"
                 "  child:Column(\n"
                 "   children: <Widget>[\n"
                 "   ] +productList\n"
                 "  )\n"
                 " );\n\n"
                 "}"
              ),



              CmpSubTitle(SubTitle:"\n16-Initializing Store:",),
              CmpCode(
                CodeTxt:
                 "Future<void> initStoreInfo() async {\n"
                 " final bool isAvailable = await _connection.isAvailable();\n"
                 "  if (!isAvailable) {\n"
                 "   setState(() {\n"
                 "     _products  = [];\n"
                 "     _purchases = [];\n"
                 "     _purchasePending = false;\n"
                 "     _loading = false;\n"
                 "  });\n"
                 "  return;\n"
                 " }\n"
                 " ProductDetailsResponse productDetailResponse = await _connection.queryProductDetails(_kProductIds.toSet());\n"
                 " if (productDetailResponse.error != null || productDetailResponse.productDetails.isEmpty) {\n"
                 "  setState(() {\n"
                 "   _products = productDetailResponse.productDetails;\n"
                 "   _purchases = [];\n"
                 "   _purchasePending = false;\n"
                 "   _loading = false;\n"
                 "  });\n"
                 "  return;\n"
                 " }\n"
                 " final QueryPurchaseDetailsResponse purchaseResponse = await _connection.queryPastPurchases();\n"
                 " if (purchaseResponse.error != null) {\n"
                 "  //Do\n"
                 " }\n"
                 " final List<PurchaseDetails> verifiedPurchases = [];\n"
                 " for (PurchaseDetails purchase in purchaseResponse.pastPurchases) {\n"
                 "  if (await _verifyPurchase(purchase)) {\n"
                 "   verifiedPurchases.add(purchase);\n"
                 "  }\n"
                 " }\n"
                 " setState(() {\n"
                 "  _products = productDetailResponse.productDetails;\n"
                 "  _purchases = verifiedPurchases;\n"
                 "  _purchasePending = false;\n"
                 "  _loading = false;\n"
                 " });\n"
                 "}\n"
              ),

            ]
        ),
      ),
    ),
  ),
];


//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------

