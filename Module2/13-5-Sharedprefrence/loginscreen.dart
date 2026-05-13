import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'dashboardscreen.dart';

class LoginScreen extends StatefulWidget
{
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
{

  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  var _formkey = GlobalKey<FormState>();
  late SharedPreferences sharedPreferences;
  var newuser;
  @override
  void initState()
  {
    checkvalue();

  }

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
                      sharedPreferences.setBool("tops", false);
                      sharedPreferences.setString("myemail",e);
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login Success")));
                      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => DashboardScreen()));
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

  checkvalue()async
  {
    sharedPreferences = await SharedPreferences.getInstance();
    newuser = sharedPreferences.getBool("tops")??true;
      if(newuser==false)
      {
        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => DashboardScreen()));
      }
  }
}
