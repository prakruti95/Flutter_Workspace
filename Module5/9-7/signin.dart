import 'dart:convert';

import 'package:drawerex1/signup.dart';
import 'package:drawerex1/view.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SigninData extends StatefulWidget
{
  const SigninData({super.key});

  @override
  State<SigninData> createState() => _SigninDataState();
}

class _SigninDataState extends State<SigninData>
{
 
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();


  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar(),
      body: Center
        (
        child: Column
          (
          children:
          [

            TextField(decoration: InputDecoration(hintText: "Enter Email"),controller: email,),
            SizedBox(height: 10,),
            TextField(decoration: InputDecoration(hintText: "Enter Password"),controller: pass,),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: ()
            {
              
              String email1 = email.text.toString();
              String pass1 = pass.text.toString();


              signin(email1,pass1);
              //Navigator.pushReplacement((context),MaterialPageRoute(builder: (context) => ViewData()));
            }, child: Text("Login")),

            TextButton(onPressed: ()
            {
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => SignupData()));
            }, child: Text("Do you want to signup?"))


          ],
        ),
      ),
    );
  }

  void signin(String email1, String pass1) async
  {
    var url = Uri.parse("https://prakrutitech.xyz/hetvi/signin.php");
    var resp = await http.post(url,body:
    {
      "e1":email1,
      "p1":pass1
    });
    var data = json.decode(resp.body);
    if(data==0)
    {
      print("Login Fail");
    }
    else
    {
      print("Login Success");
    }
  }

  







}
