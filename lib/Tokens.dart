import 'package:flutter/material.dart';
import 'SettingPage.dart';
import 'AuthCheck.dart';
import 'AppSoundPlay.dart';
import 'main.dart';
import '0_Quizzes/0_GenerateRandomQuizzes.dart';
import 'Samples.dart';
import 'LeaderBoard.dart';
import 'dart:async';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'dart:io';
import 'UserDataInfo.dart';
import 'package:toast/toast.dart';
import 'MyPurchases.dart';
import 'Gifts.dart';
import 'package:http/http.dart' as http;

const bool kAutoConsume = true;

const List<String> _kProductIds = <String>[
  "tp1",
  "tp2"
];

class TokensPage extends StatefulWidget {
  AuthCheckState parent;
  TokensPage(this.parent);

  @override
  TokensPageState createState() => new TokensPageState();
}

class TokensPageState extends State<TokensPage> {
  final InAppPurchaseConnection _connection = InAppPurchaseConnection.instance;
  StreamSubscription<List<PurchaseDetails>> _subscription;
  List<ProductDetails> _products = [];
  List<PurchaseDetails> _purchases = [];
  bool _isAvailable = false;
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


  Future<void> AddPurchase(Package) async {
    var url  = 'https://httpfluttertest.000webhostapp.com/Flutter_FTQ/AddPurchase.php';
    String D = new DateTime.now().toString();
    http.Response response = await http.post(url, body: {
        "AvatarName"    : AvatarName,
        "PurchaseDate"  : D,
        "Package"       : Package,
        "UID"           : UID,
    });
  }

  Future<void> initStoreInfo() async {
    final bool isAvailable = await _connection.isAvailable();
    if (!isAvailable) {
      setState(() {
        _isAvailable = isAvailable;
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
        _isAvailable = isAvailable;
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
        _isAvailable = isAvailable;
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
            leading:Image.asset("Images/coin.gif",width:30,height:30,),
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
            if(purchaseDetails.productID=="tp1"){
              await AddPurchase("4,000 Tokens");
              AvatarTokens=AvatarTokens+4000;
            }
            else if(purchaseDetails.productID=="tp2"){
              await AddPurchase("10,000 Tokens");
              AvatarTokens=AvatarTokens+10000;
            }
            UpdateDataFireStore();
            var dbApp = new DBApp();
            UserData US=new UserData("1",AvatarTokens,AvatarXp,AvatarName,AvatarImg,UID,PID,1);
            await dbApp.updateUserData(US);
            await dbApp.getAvatarInfo();
            Toast.show("Purchase Complete!", context);
            this.widget.parent.setState(() { });
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
       backgroundColor:ThemeBg,
       appBar:AppBar(
          backgroundColor:ThemeAppBar,
          leading:IconButton(
            onPressed:(){},
            icon:Image.asset("Images/coin.gif",width:20,height:20),
          ),
          title:Text("Tokens"),
          actions: <Widget>[
            FlatButton.icon(
              onPressed:(){
                Navigator.push(context,MaterialPageRoute(builder:(context)=>MyPurchasePage()));
              },
              icon: Icon(Icons.monetization_on),
              label: Text(
                "My Purchases",
                style:TextStyle(color:Colors.white),
              )
            ),
          ],
        ),
        body:ListView(
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "You Can Purchase Them:",
                style:TextStyle(
                  color:Colors.blueGrey,
                  fontFamily:"RaleWay",
                  fontSize:17,
                ),
              ),
            ),


            Container(
              height:200,
              child:_buildProductList(),
            ),
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "You Can Earn Tokens By:",
                style:TextStyle(
                  color:Colors.blueGrey,
                  fontFamily:"RaleWay",
                  fontSize:17,
                ),
              ),
            ),

            Card(
                            color:Colors.grey[200],
              child:ListTile(
                trailing:Icon(Icons.arrow_forward_ios),
              onTap:(){
                PlayTapSound();
                RandQuizz=true;
                Navigator.push(context,MaterialPageRoute(builder:(context)=>cl_RandomQuizz()));
              },
              leading:Image.asset("Images/Quizz.png",width:30,height:30,),
              title:Text(
                "Running Quizzzes",
                style:TextStyle(
                  color:Colors.blueGrey,
                  fontFamily:"RaleWay",
                  fontSize:15,
                ),
              ),
              subtitle:Text(
                "Specific Quizz Let You Earn 1\nRandom Quizz Ley You Earn 2",
                style:TextStyle(
                  color:Colors.blueGrey,
                  fontFamily:"RaleWay",
                  fontSize:12,
                ),
              ),
            )
            ),
            
            
            Card(
              color:Colors.grey[200],
              child:ListTile(
                trailing:Icon(Icons.arrow_forward_ios),
              onTap:(){
                 PlayTapSound();
                this.widget.parent.setState(() { 
                  ActivePage=LeaderBoard();
                });
              },
              leading:Image.asset("Images/trophy.png",width:30,height:30,),
              title:Text(
                "LeaderBoard Ranking",
                style:TextStyle(
                  color:Colors.blueGrey,
                  fontFamily:"RaleWay",
                  fontSize:15,
                ),
              ),
              subtitle:Text(
                "Prizes Go Between 100,60,30 For Rank 1,2,3 Each Week",
                style:TextStyle(
                  color:Colors.blueGrey,
                  fontFamily:"RaleWay",
                  fontSize:12,
                ),
              ),
            )
            ),


            Card(
              color:Colors.grey[200],
              child:ListTile(
                trailing:Icon(Icons.arrow_forward_ios),
              onTap:(){
                 PlayTapSound();
                this.widget.parent.setState(() { 
                  ActivePage=Gifts(this.widget.parent);
                });
              },
              leading:Image.asset("Images/Gift.gif",width:30,height:30,),  
              title:Text(
                "Notification Reward!",
                style:TextStyle(
                  color:Colors.blueGrey,
                  fontFamily:"RaleWay",
                  fontSize:15,
                ),
              ),
              subtitle:Text(
                "More Than 50 Tokens Will Be Sent Via Gift For Free!",
                style:TextStyle(
                  color:Colors.blueGrey,
                  fontFamily:"RaleWay",
                  fontSize:12,
                ),
              ),
            )
            ),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Tokens Used To:",
                style:TextStyle(
                  color:Colors.blueGrey,
                  fontFamily:"RaleWay",
                  fontSize:17,
                ),
              ),
            ),

                        
            Card(
              color:Colors.grey[200],
              child:ListTile(
                trailing:Icon(Icons.arrow_forward_ios),
              onTap:(){
                PlayTapSound();
                this.widget.parent.setState(() { 
                  ActivePage=Samples(this.widget.parent);
                });
              },
              leading:Image.asset("Images/Samples.gif",width:30,height:30,),
              title:Text(
                "Unlocking Samples",
                style:TextStyle(
                  color:Colors.blueGrey,
                  fontFamily:"RaleWay",
                  fontSize:15,
                ),
              ),
              subtitle:Text(
                "Allow Show Code And Details For Advanced UISamples",
                style:TextStyle(
                  color:Colors.blueGrey,
                  fontFamily:"RaleWay",
                  fontSize:12,
                ),
              ),
            )
            ),
            

          ],
        )
    );
  }


}