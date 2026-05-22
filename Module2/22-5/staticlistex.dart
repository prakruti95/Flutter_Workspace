import 'package:flutter/material.dart';

class MyListEx extends StatelessWidget
{
  const MyListEx({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Static List"),),
        body: ListView
          (
            children:
            [
                  ListTile(leading: Icon(Icons.add),title: Text("Add"),subtitle: Text("XYZ"),trailing: Icon(Icons.deblur),),
              ListTile(leading: Icon(Icons.add),title: Text("Add"),subtitle: Text("XYZ"),trailing: Icon(Icons.deblur),),
              ListTile(leading: Icon(Icons.add),title: Text("Add"),subtitle: Text("XYZ"),trailing: Icon(Icons.deblur),)



            ],
          ),
      );
  }
}
