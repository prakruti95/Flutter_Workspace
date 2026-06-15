import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
      appBar: AppBar(
        title: Text("Tops Tech",), backgroundColor: Colors.blueGrey,),
      body: Center
        (
        child: Column
          (
          children:
          [
            Text("Divyraj", style: TextStyle(fontSize: 20.00,
                fontWeight: FontWeight.bold,
                color: Colors.amber),),
            Text("Nandan", style: TextStyle(fontSize: 20.00,
                fontWeight: FontWeight.bold,
                color: Colors.blue),),
            Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRv6Mlg1Iq6gIELXgJpMTVgRiZrJMqTUHNKmg&s",
              width: 250, height: 300,)
          ],
        ),


      ),
    );
  }
}