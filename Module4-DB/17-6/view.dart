import 'package:flutter/material.dart';

import 'add.dart';

class MyApp extends StatefulWidget
{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("View Data"),),
        body: Center
          (

          ),
        floatingActionButton: FloatingActionButton(onPressed: ()
        {
          Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => AddData()));
        },child: Icon(Icons.add),),
      );
  }
}
