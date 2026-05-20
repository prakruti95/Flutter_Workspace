import 'package:flutter/material.dart';
import 'package:test123/abcd.dart';


class FormEx extends StatefulWidget
{
  const FormEx({super.key});

  @override
  State<FormEx> createState() => _FormExState();
}

class _FormExState extends State<FormEx>
{
  TextEditingController name = TextEditingController();
  TextEditingController surname = TextEditingController();
  TextEditingController city = TextEditingController();
  var _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("My Form"),),
        body: Form(
          key: _formkey,
          child: Center
            (
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column
                  (
                    children:
                    [
                        TextFormField(controller:name,decoration: InputDecoration(hintText: "Enter Name",border: OutlineInputBorder(),prefixIcon: Icon(Icons.email)),

                          validator:(value)
                          {
                            if(value!.isEmpty)
                              {
                                return "please enter name";
                              }
                          },),
                        SizedBox(height: 10,),
                      TextFormField(controller:surname,decoration: InputDecoration(hintText: "Enter Surname",border: OutlineInputBorder(),prefixIcon: Icon(Icons.password)),
                        validator:(value)
                        {
                          if(value!.isEmpty)
                          {
                            return "please enter surname";
                          }
                        },),
                        SizedBox(height: 10,),
                      TextFormField(controller:city,decoration: InputDecoration(hintText: "Enter City",border: OutlineInputBorder(),prefixIcon: Icon(Icons.email)),

                        validator:(value)
                        {
                          if(value!.isEmpty)
                          {
                            return "please enter city";
                          }
                        },),

                        ElevatedButton(onPressed: ()
                        {
                            String n = name.text.toString();
                            String s = surname.text.toString();
                            String c = city.text.toString();
                          if(_formkey.currentState!.validate())
                            {
                                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => MyData(name:n,surname:s,city:c)));
                            }

                        }, child: Text("OK"))

                    ],
                  ),
              ),
            ),
        ),
      );
  }
}
