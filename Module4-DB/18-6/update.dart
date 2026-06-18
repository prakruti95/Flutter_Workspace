import 'package:dbex1/view.dart';
import 'package:flutter/material.dart';

import 'db.dart';

class EditPage extends StatefulWidget
{
  String name,email;
  EditPage({required this.name,required this.email});

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage>
{
  MyDb db = MyDb();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  //TextEditingController password = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    db.open();
    name.text= widget.name;
    email.text=widget.email;
  }
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Edit"),),
        body: Center
          (
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column
                (
                children:
                [
                  TextFormField(controller:name,decoration: InputDecoration(hintText: "Enter Name"),),
                  SizedBox(height: 10,),
                  TextFormField(controller:email,decoration: InputDecoration(hintText: "Enter Email"),),
                  SizedBox(height: 10,),
                  //TextFormField(controller:password,decoration: InputDecoration(hintText: "Enter Password"),),
                 // SizedBox(height: 10,),
                  ElevatedButton(onPressed: ()
                  {
                    String a = name.text.toString();
                    String b = email.text.toString();
                    print("Test $a and $b");
                   // String c = password.text.toString();
                    //db.db.rawUpdate("update students set name=?,email=? where email=?",[a,b,b]);
                    db.db.rawUpdate("update students set name=?,email=? where email=?",[a,b,widget.email]);
                    print("Updated");
                    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => MyApp()));
                  }, child: Text("Update"))
                ],
              ),
            ),
          ),
      );
  }
}
