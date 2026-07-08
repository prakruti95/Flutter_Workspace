import 'package:drawerex1/view.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http show post;

import 'edit.dart';

class Model extends StatelessWidget
{
    var list;
    Model({required this.list});

  @override
  Widget build(BuildContext context)
  {
    return ListView.builder
      (
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index)
      {
          return ListTile
            (
            title: Text(list[index]["p_name"]),
            subtitle: Column
              (
                children:
                [
                  Text(list[index]["p_price"]),
                  Text(list[index]["p_des"]),
                  Text(list[index]["p_location"]),
                ],
              ),
            trailing: Wrap
              (
                children:
                [
                    IconButton(onPressed: ()
                    {
                      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => EditData(id: list[index]["id"], pname: list[index]["p_name"], pprice: list[index]["p_price"], pdes: list[index]["p_des"], ploca: list[index]["p_location"])));

                    }, icon: Icon(Icons.edit)),
                  IconButton(onPressed: ()
                  {
                    var url = Uri.parse("https://prakrutitech.xyz/hetvi/delete.php");
                    var resp = http.post(url,body:
                    {
                      "id":list[index]["id"]
                    });
                    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => ViewData()));
                  }, icon: Icon(Icons.delete)),

                ],
              ),
            );
      },);
  }
}
