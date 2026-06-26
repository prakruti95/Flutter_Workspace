import 'dart:math';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class MyApp2 extends StatefulWidget
{
  const MyApp2({super.key});

  @override
  State<MyApp2> createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2>
{

  late GoogleMapController mapController;
  double lattitude=0.00;
  double longitude=0.00;
  LatLng? latLng;
  String _locationMessage="";

  @override
  void initState()
  {
    // TODO: implement initState

    _getcurrentlocation();
  }


  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar(title: Text("Google Map Example"),),
      body: GoogleMap
        (
        initialCameraPosition:
        CameraPosition
          (
            target:latLng!,
            zoom: 16.0
        ),

      ),
    );
  }

  Future<void> _getcurrentlocation() async
  {
    // Check for location permission
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied)
    {
      permission = await Geolocator.requestPermission();
    }

    if (permission == LocationPermission.deniedForever)
    {
      setState(() {
        _locationMessage = "Location permissions are permanently denied.";
      });

      return;
    }

    // Get the current position
    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );

    setState(() {
     // _locationMessage =
      //"Latitude: ${position.latitude}, Longitude: ${position.longitude}";
      lattitude = position.latitude;
      longitude = position.longitude;
      latLng = LatLng(lattitude, longitude);
      print(lattitude);
      print("tops $longitude");
    });
  }
}