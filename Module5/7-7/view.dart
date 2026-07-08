import 'dart:convert';

import 'package:drawerex1/add.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'model.dart';



class ViewData extends StatefulWidget {
  const ViewData({super.key});

  @override
  State<ViewData> createState() => _ViewDataState();
}

class _ViewDataState extends State<ViewData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Json Crud")),
      body: FutureBuilder
        (
          future: getdata(),
          builder:(context,snapshot)
          {
            if(snapshot.hasError)
            {
              print("Network not found");
            }
            if(snapshot.hasData)
            {
              return Model(list:snapshot.data);
            }
            return CircularProgressIndicator();
          }),
          floatingActionButton: FloatingActionButton(onPressed: ()
          {
            Navigator.pushReplacement((context),MaterialPageRoute(builder: (context) => AddData()));

          },child: Icon(Icons.add),)
    );
  }

  getdata() async
  {
    var url = Uri.parse("https://prakrutitech.xyz/hetvi/view.php");
    var resp = await http.get(url);
    return jsonDecode(resp.body);
  }
}
