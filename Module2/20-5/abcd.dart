import 'package:flutter/material.dart';

class MyData extends StatefulWidget
{
  String name,surname,city;
  MyData({required this.name,required this.surname,required this.city});

  @override
  State<MyData> createState() => _MyDataState();
}

class _MyDataState extends State<MyData> {
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Data"),),
        body: Center
          (
            child: Column
              (
                children:
                [
                    Text("Yout Name is ${widget.name}"),
                    Text("Yout Surname is ${widget.surname}"),
                    Text("Yout City is ${widget.city}")

                ],
              ),
          ),
      );
  }
}
