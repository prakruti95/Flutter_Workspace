import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:googlemapex/data.dart';

void main()
{
  runApp(MaterialApp(home:MyApp2()));
}
class MyApp extends StatefulWidget
{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  LatLng latLng = LatLng(22.290245059399275, 70.77527706011296);

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Google Map Ex1"),),
        body: GoogleMap
          (
            initialCameraPosition:CameraPosition(target: latLng,zoom: 20.00)

        )
      );
  }
}

