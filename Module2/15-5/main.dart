import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'loginscreen.dart';

void main()
{
  runApp(MaterialApp(home:SplashScreen()));
}

class SplashScreen extends StatefulWidget
{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
{
  @override
  void initState()
  {
    // TODO: implement initState
    checkconnectivity();
    //
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      body: Center
        (
        child: ElevatedButton(onPressed: (){}, child: Text("Hii")),
      ),
    );
  }

  checkconnectivity() async
  {
    var connection = await Connectivity().checkConnectivity();
    if(connection.contains(ConnectivityResult.mobile))
    {
      Timer(Duration(seconds: 2), () => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen())));

      //print("Mobile Data");
    }
    else if(connection.contains(ConnectivityResult.wifi))
    {
      Timer(Duration(seconds: 2), () => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen())));

      //print("Wifi Data");
    }
    else
    {
      //Alert
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Internet is not connected")));
    }
  }
}
