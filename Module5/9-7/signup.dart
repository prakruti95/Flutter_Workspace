import 'package:drawerex1/signin.dart';
import 'package:drawerex1/view.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SignupData extends StatefulWidget
{
  const SignupData({super.key});

  @override
  State<SignupData> createState() => _SignupDataState();
}

class _SignupDataState extends State<SignupData>
{
  TextEditingController name = TextEditingController();
  TextEditingController surname = TextEditingController();
  TextEditingController mobile = TextEditingController();
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
            TextField(decoration: InputDecoration(hintText: "Enter Name"),controller: name,),
            SizedBox(height: 10,),
            TextField(decoration: InputDecoration(hintText: "Enter Surname"),controller: surname,),
            SizedBox(height: 10,),
            TextField(decoration: InputDecoration(hintText: "Enter Mobile"),controller: mobile,),
            SizedBox(height: 10,),
            TextField(decoration: InputDecoration(hintText: "Enter Email"),controller: email,),
            SizedBox(height: 10,),
            TextField(decoration: InputDecoration(hintText: "Enter Password"),controller: pass,),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: ()
            {
              String name1 = name.text.toString();
              String sname1 = surname.text.toString();
              String mobile1 = mobile.text.toString();
              String email1 = email.text.toString();
              String pass1 = pass.text.toString();


              signup(name1,sname1,mobile1,email1,pass1);
             // Navigator.pushReplacement((context),MaterialPageRoute(builder: (context) => ViewData()));
            }, child: Text("Signup")),
            TextButton(onPressed: ()
            {
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => SigninData()));
            }, child: Text("Do you want to Login?"))


          ],
        ),
      ),
    );
  }

  void signup(String name1, String sname1, String mobile1, String email1, String pass1)
  {

var url = Uri.parse("https://prakrutitech.xyz/hetvi/signup.php");
var resp = http.post(url,body:
{
"name":name1,
"surname":sname1,
"mobile":mobile1,
"email":email1,
"pass":pass1
});

  }







}
