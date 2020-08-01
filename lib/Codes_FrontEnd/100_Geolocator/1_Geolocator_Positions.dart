import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter/services.dart';


void main() {
  runApp(Geolocator_Position_Run());
}

class Geolocator_Position_Run extends StatefulWidget {
  @override
  Geolocator_Position_State createState() => new Geolocator_Position_State();
}

class Geolocator_Position_State extends State<Geolocator_Position_Run> {
  String CurLat="Waiting...";
  String CurLon="Waiting...";
  String LKPLat="Waiting...";
  String LKPLon="Waiting...";
  String PosChangeLon="Waiting...";
  String PosChangeLat="Waiting...";
  double distanceInMetersCurLKP;


  GetCurrentPos() async{
    Position position = await Geolocator().getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high
    );
    setState((){
      CurLat=position.latitude.toString();
      CurLon=position.longitude.toString();
    });
  }

  GetLastKnownPos() async{
    Position position = await Geolocator().getLastKnownPosition(
      desiredAccuracy: LocationAccuracy.high
    );
    setState((){
      LKPLat=position.latitude.toString();
      LKPLon=position.longitude.toString();
    });
  }

  GetChangePos() async{
    var geolocator = Geolocator();
    var locationOptions = LocationOptions(
      accuracy: LocationAccuracy.high,
      distanceFilter: 10
    );

    StreamSubscription<Position> positionStream = geolocator.getPositionStream(locationOptions).listen(
    (Position position) {
      if(position!=null){
        PosChangeLat= position.latitude.toString();
        PosChangeLon= position.longitude.toString();
      }
    });
  }


  Future<void> DistanceBtw() async {
    distanceInMetersCurLKP = await Geolocator().distanceBetween(
      double.parse(CurLat),
      double.parse(LKPLat),
      double.parse(CurLat),
      double.parse(LKPLon),
    );
    Scaffold.of(context).showSnackBar(SnackBar(
      backgroundColor: Theme.of(context).primaryColorDark,
      content: Text('Distance Between Current And Last Known:\n$distanceInMetersCurLKP metter'),
    ));
  }




  @override
  void initState(){
    super.initState();
    GetCurrentPos();
    GetLastKnownPos();
    GetChangePos();
    DistanceBtw();
  }
 
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Scaffold(
       appBar:AppBar(
          title:Text("Geolocator Position"),
        ),
        body:Container(
          width : MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child:Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.start, 
              children: <Widget>[   

                (CurLat!=null)?Text("Current Lattitude:\n$CurLat"):Container(width:20,height:20,child:CircularProgressIndicator()),
                SizedBox(height:5),
                (CurLon!=null)?Text("Current Longitude:\n$CurLon"):Container(width:20,height:20,child:CircularProgressIndicator()),
                SizedBox(height:5),
                (LKPLat!=null)?Text("Last Known Lattitude:\n$LKPLat"):Container(width:20,height:20,child:CircularProgressIndicator()),
                SizedBox(height:5),
                (LKPLon!=null)?Text("Last Known Longitude:\n$LKPLon"):Container(width:20,height:20,child:CircularProgressIndicator()),
                SizedBox(height:5),
                (PosChangeLat!=null)?Text("Pos Change Lattitude:\n$PosChangeLat"):Container(width:20,height:20,child:CircularProgressIndicator()),
                SizedBox(height:5),
                (PosChangeLon!=null)?Text("Pos Change Longitude:\n$PosChangeLon"):Container(width:20,height:20,child:CircularProgressIndicator()),

                RaisedButton(
                  child:Text("Get Position"),
                  onPressed: () async {
                    setState(() { 
                      CurLat=null;
                      CurLon=null;
                      LKPLat=null;
                      LKPLon=null;
                      PosChangeLat=null;
                      PosChangeLon=null;
                    });
                    await GetCurrentPos();
                    await GetLastKnownPos();
                    await GetChangePos();
                    await DistanceBtw();

                  }
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }


}