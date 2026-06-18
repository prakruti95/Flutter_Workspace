import 'package:dbex1/db.dart';
import 'package:dbex1/view.dart';
import 'package:flutter/material.dart';

class AddData extends StatefulWidget
{
  const AddData({super.key});

  @override
  State<AddData> createState() => _AddDataState();
}

class _AddDataState extends State<AddData>
{
  MyDb db = MyDb();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    db.open();
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Add data"),),
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
                TextFormField(controller:password,decoration: InputDecoration(hintText: "Enter Password"),),
                SizedBox(height: 10,),
                ElevatedButton(onPressed: ()
                {
                  String a = name.text.toString();
                  String b = email.text.toString();
                  String c = password.text.toString();
                  db.db.rawInsert("insert into students(name,email,password) values (?,?,?)",[a,b,c]);
                  print("Inserted");
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => MyApp()));
                }, child: Text("Add"))
              ],
            ),
          ),
        ),
      );
  }
}
