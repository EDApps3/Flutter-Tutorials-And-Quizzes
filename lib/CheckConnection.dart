import 'dart:io';
import 'package:http/http.dart' as http;


 bool IsUserConnected=false;

Future<bool> CheckUserConnected() async {
  try {
    final result = await InternetAddress.lookup('google.com');
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      IsUserConnected=true;
      print('User Connected To The Internet');
    }
  } on SocketException catch (_) {
    IsUserConnected=false;
    print('User Not Connected To The Internet');
  }
}


Future<void> CheckConnection() async {
  var url = 'https://google.com';
  try{
    http.Response response=await http.get(url);
    IsUserConnected=true;
  }
  catch (e){
    IsUserConnected=false;
  }
}

