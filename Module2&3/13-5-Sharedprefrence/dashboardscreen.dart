import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'loginscreen.dart';

class DashboardScreen extends StatefulWidget 
{
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> 
{
  DateTime? backPressTime;
  late SharedPreferences sharedPreferences;
  var data;
  @override
  void initState() {

    checkvalue();

  }


  Future<bool> onWillPop() async {
    DateTime now = DateTime.now();

    // First Back Press
    if (backPressTime == null ||
        now.difference(backPressTime!) >
            const Duration(seconds: 2)) {
      backPressTime = now;

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Press back again to exit"),
          duration: Duration(seconds: 2),
        ),
      );

      return false;
    }
    return true;
  }


  @override
  Widget build(BuildContext context) 
  {
    return PopScope(
        canPop: false,
        onPopInvoked:(didPop) async
        {
          if (didPop) return;

          bool shouldExit = await onWillPop();

          if (shouldExit) {
            //Navigator.of(context).pop();
            exit(0);
          }
        },
        child: Scaffold
      (
      appBar: AppBar(title: Text("Welcome: $data"),actions:
      [
        IconButton(onPressed: ()
        {
          sharedPreferences.setBool("tops", true);
          Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => LoginScreen()));

        }, icon: Icon(Icons.logout))
      ],),
      body: Center
        (
        child: SingleChildScrollView(
          child: Column
            (
            children:
            [
              Row
                (
                children:
                [
                  CircleAvatar(backgroundImage: AssetImage("assets/a.png"),radius: 30,),
                  SizedBox(width: 30,),
                  Text("Person1")

                ],
              ),
              SizedBox(height: 10,),
              Row
                (
                children:
                [
                  CircleAvatar(backgroundImage: AssetImage("assets/a.png"),radius: 30,),
                  SizedBox(width: 30,),
                  Text("Person2")

                ],
              ),
              SizedBox(height: 10,),
              Row
                (
                children:
                [
                  CircleAvatar(backgroundImage: AssetImage("assets/a.png"),radius: 30,),
                  SizedBox(width: 30,),
                  Text("Person3")

                ],
              ),
              SizedBox(height: 10,),
              Row
                (
                children:
                [
                  CircleAvatar(backgroundImage: AssetImage("assets/a.png"),radius: 30,),
                  SizedBox(width: 30,),
                  Text("Person4")

                ],
              ),
              SizedBox(height: 10,),
              Row
                (
                children:
                [
                  CircleAvatar(backgroundImage: AssetImage("assets/a.png"),radius: 30,),
                  SizedBox(width: 30,),
                  Text("Person1")

                ],
              ),
              SizedBox(height: 10,),
              Row
                (
                children:
                [
                  CircleAvatar(backgroundImage: AssetImage("assets/a.png"),radius: 30,),
                  SizedBox(width: 30,),
                  Text("Person2")

                ],
              ),
              SizedBox(height: 10,),
              Row
                (
                children:
                [
                  CircleAvatar(backgroundImage: AssetImage("assets/a.png"),radius: 30,),
                  SizedBox(width: 30,),
                  Text("Person3")

                ],
              ),
              SizedBox(height: 10,),
              Row
                (
                children:
                [
                  CircleAvatar(backgroundImage: AssetImage("assets/a.png"),radius: 30,),
                  SizedBox(width: 30,),
                  Text("Person4")

                ],
              ),
              SizedBox(height: 10,),
              Row
                (
                children:
                [
                  CircleAvatar(backgroundImage: AssetImage("assets/a.png"),radius: 30,),
                  SizedBox(width: 30,),
                  Text("Person1")

                ],
              ),
              SizedBox(height: 10,),
              Row
                (
                children:
                [
                  CircleAvatar(backgroundImage: AssetImage("assets/a.png"),radius: 30,),
                  SizedBox(width: 30,),
                  Text("Person2")

                ],
              ),
              SizedBox(height: 10,),
              Row
                (
                children:
                [
                  CircleAvatar(backgroundImage: AssetImage("assets/a.png"),radius: 30,),
                  SizedBox(width: 30,),
                  Text("Person3")

                ],
              ),
              SizedBox(height: 10,),
              Row
                (
                children:
                [
                  CircleAvatar(backgroundImage: AssetImage("assets/a.png"),radius: 30,),
                  SizedBox(width: 30,),
                  Text("Person4")

                ],
              ),
              SizedBox(height: 10,),
              Row
                (
                children:
                [
                  CircleAvatar(backgroundImage: AssetImage("assets/a.png"),radius: 30,),
                  SizedBox(width: 30,),
                  Text("Person1")

                ],
              ),
              SizedBox(height: 10,),
              Row
                (
                children:
                [
                  CircleAvatar(backgroundImage: AssetImage("assets/a.png"),radius: 30,),
                  SizedBox(width: 30,),
                  Text("Person2")

                ],
              ),
              SizedBox(height: 10,),
              Row
                (
                children:
                [
                  CircleAvatar(backgroundImage: AssetImage("assets/a.png"),radius: 30,),
                  SizedBox(width: 30,),
                  Text("Person3")

                ],
              ),
              SizedBox(height: 10,),
              Row
                (
                children:
                [
                  CircleAvatar(backgroundImage: AssetImage("assets/a.png"),radius: 30,),
                  SizedBox(width: 30,),
                  Text("Person4")

                ],
              ),
              SizedBox(height: 10,),

            ],
          ),
        ),
      ),
    ));
      

      

  }

   checkvalue() async
   {
     sharedPreferences = await SharedPreferences.getInstance();
     data = sharedPreferences.getString("myemail");
   }
}
