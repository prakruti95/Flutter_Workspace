import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
        appBar: AppBar(title: Text("Widgets"),),
        body: Center
          (
            child: ElevatedButton(onPressed: ()
            {
              Fluttertoast.showToast(
                  msg: "This is Center Short Toast",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.0
              );
            }, child: Text("Click Me")),
          ),
      );
  }
}
