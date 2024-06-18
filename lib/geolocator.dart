import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';


class GeolocatorWidget extends StatefulWidget {
  const GeolocatorWidget({super.key});

  @override
  State<GeolocatorWidget> createState() => _GeolocatorWidgetState();
}

class _GeolocatorWidgetState extends State<GeolocatorWidget> {
  Position? postion;
  fetchLocation()async{
    bool serviceEnabeld= await Geolocator.isLocationServiceEnabled();
    LocationPermission permission=await Geolocator.checkPermission();

    if(serviceEnabeld==false){
      Fluttertoast.showToast(msg: "please enable location to use service");
    }
    if(permission==LocationPermission.denied){
      Fluttertoast.showToast(msg: "give permission to use service");
      permission=await Geolocator.checkPermission();
      if(permission==LocationPermission.deniedForever){
        Fluttertoast.showToast(msg: "denied location forever");
      }
    }
    Position currentLocation= await Geolocator.getCurrentPosition();
    setState(() {
      postion=currentLocation;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("location"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                postion != null?"location":postion.toString(),
              style: TextStyle(
                fontSize: 30
              ),
              ),
              ElevatedButton(onPressed: (){
                fetchLocation();
              }, child: Text('location'))
            ],
          ),
        ),
      ),
    );
  }
}
