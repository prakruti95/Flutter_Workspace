import 'package:flutter/material.dart';

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
            );
      },);
  }
}
