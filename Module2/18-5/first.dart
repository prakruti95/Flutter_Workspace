import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'dashboard_screen.dart';

class SplashScreen extends StatefulWidget
{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
{
  @override
  void initState() {
    // TODO: implement initState
    checkconnectivity();
    //Timer(Duration(seconds: 3),() => Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => DashboardScreen())));
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        body: Center
          (
              child: Lottie.asset("assets/anim.json"),
          ),
      );
  }
  checkconnectivity() async
  {
    var connection = await Connectivity().checkConnectivity();
    if(connection.contains(ConnectivityResult.mobile))
    {
      Timer(Duration(seconds: 2), () => Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardScreen())));

      //print("Mobile Data");
    }
    else if(connection.contains(ConnectivityResult.wifi))
    {
      Timer(Duration(seconds: 2), () => Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardScreen())));

      //print("Wifi Data");
    }
    else
    {
      //Alert
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Internet is not connected")));
    }
  }
}
