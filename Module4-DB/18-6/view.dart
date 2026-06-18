import 'package:flutter/material.dart';

import 'add.dart';
import 'db.dart';
import 'edit.dart';

class MyApp extends StatefulWidget
{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  MyDb db = MyDb();
  List slist=[];
  @override
  void initState() {
    // TODO: implement initState
    db.open();
    getdata();
  }
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("View Data"),),
        body: Center
          (
              child: Column
                (
                  children:slist.map((tops)
                  {
                      return Card
                        (
                          child: ListTile
                            (
                              leading:  Icon(Icons.person),
                              title: Text(tops["name"]),
                              subtitle: Text(tops["email"]),
                              trailing: Wrap
                                (
                                  children:
                                  [
                                      IconButton(onPressed: ()
                                      {
                                        Navigator.push(context,MaterialPageRoute(builder: (context) => EditPage(name:tops["name"],email:tops["email"])));
                                      }, icon: Icon(Icons.edit)),
                                      IconButton(onPressed: ()
                                      {
                                        db.db.rawDelete("delete from students where email=?",[tops["email"]]);
                                        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => MyApp()));
                                      }, icon: Icon(Icons.delete)),

                                  ],
                                ),
                          )
                        );
                  }).toList(),
                ),
          ),
        floatingActionButton: FloatingActionButton(onPressed: ()
        {
          Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => AddData()));
        },child: Icon(Icons.add),),
      );
  }

  getdata()
  {
    Future.delayed(Duration(milliseconds: 500),()async
    {
      slist = await db.db.rawQuery('SELECT * FROM students');
      setState(()
      {

      });
    });
  }

  }

