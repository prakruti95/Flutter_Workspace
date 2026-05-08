import 'package:flutter/material.dart';

import 'mygridviewex.dart';

class FormEx extends StatefulWidget
{
  const FormEx({super.key});

  @override
  State<FormEx> createState() => _FormExState();
}

class _FormExState extends State<FormEx>
{

  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  var _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Login Form"),),
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
                        TextFormField(controller:email,decoration: InputDecoration(hintText: "Enter Email",border: OutlineInputBorder(),prefixIcon: Icon(Icons.email)),

                          validator:(value)
                          {
                            if(value!.isEmpty)
                              {
                                return "please enter email";
                              }
                          },),
                        SizedBox(height: 10,),
                      TextFormField(controller:pass,decoration: InputDecoration(hintText: "Enter Password",border: OutlineInputBorder(),prefixIcon: Icon(Icons.password)),obscureText: true,
                        validator:(value)
                        {
                          if(value!.isEmpty)
                          {
                            return "please enter password";
                          }
                        },),
                        SizedBox(height: 10,),
                        ElevatedButton(onPressed: ()
                        {
                            String e = email.text.toString();
                            String p = pass.text.toString();
                          if(_formkey.currentState!.validate())
                            {
                              if(e=="nandan@gmail.com" && p=="1234")
                              {
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login Success")));
                                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => MyGridView()));
                              }
                              else
                              {
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login Fail")));

                              }
                            }

                        }, child: Text("Login"))

                    ],
                  ),
              ),
            ),
        ),
      );
  }
}
