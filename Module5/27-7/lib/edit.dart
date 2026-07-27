import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class EditPage extends StatefulWidget
{
  String docID;
  EditPage({required this.docID});

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage>
{
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  CollectionReference updateUser = FirebaseFirestore.instance.collection('Students');
  bool _isLoaded = false;
  @override
  Widget build(BuildContext context)
  {

    return FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>
      (
      future: FirebaseFirestore.instance
          .collection('Students')
          .doc(widget.docID)
          .get(),
      builder: (BuildContext context, AsyncSnapshot<DocumentSnapshot<Map<String, dynamic>>> snapshot)
      {

        if (snapshot.hasError)
        {
          print('Something Wrong in HomePage');
        }
        if (snapshot.connectionState == ConnectionState.waiting)
        {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (!_isLoaded && snapshot.hasData) {
          var data = snapshot.data?.data();
          nameController.text = data?['Name'] ?? '';
          emailController.text = data?['Email'] ?? '';
          passwordController.text = data?['Password'] ?? '';
          _isLoaded = true;
        }



        return Scaffold
          (
          appBar: AppBar
            (
            title: Text("User : "),
          ),
          body: Form
            (
            key: _formkey,
            child: ListView
              (
              children:
              [
                Container
                  (
                  margin: const EdgeInsets.symmetric
                    (
                    vertical: 18,
                    horizontal: 15,
                  ),
                  child: TextFormField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      labelText: 'Name',
                      labelStyle: TextStyle(fontSize: 18),
                      errorStyle: TextStyle(color: Colors.red, fontSize: 15),
                      border: OutlineInputBorder
                        (
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    validator: (val) {
                      if (val == null || val.isEmpty) {
                        return 'Please Enter Name';
                      }
                      // if (!val.contains('@')) {
                      //   return 'Please Enter Valid Email';
                      // }
                      return null;
                    },
                  ),
                ),

                Container
                  (
                  margin: const EdgeInsets.symmetric
                    (
                    vertical: 18,
                    horizontal: 15,
                  ),
                  child: TextFormField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(fontSize: 18),
                      errorStyle: TextStyle(color: Colors.red, fontSize: 15),
                      border: OutlineInputBorder
                        (
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    validator: (val) {
                      if (val == null || val.isEmpty) {
                        return 'Please Enter Email';
                      }
                      if (!val.contains('@')) {
                        return 'Please Enter Valid Email';
                      }
                      return null;
                    },
                  ),
                ),

                Container
                  (
                  margin: const EdgeInsets.symmetric
                    (
                    vertical: 18,
                    horizontal: 15,
                  ),
                  child: TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: const InputDecoration
                      (
                      labelText: 'Password',
                      labelStyle: TextStyle(fontSize: 18),
                      errorStyle: TextStyle(color: Colors.red, fontSize: 15),
                      border: OutlineInputBorder
                        (
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    validator: (val) {
                      if (val == null || val.isEmpty) {
                        return 'Please Enter Password';
                      }
                      // if (!val.contains('@')) {
                      //   return 'Please Enter Valid Email';
                      // }
                      return null;
                    },
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: ()
                      {
                        if (_formkey.currentState!.validate()) {
                          _updateUser(
                            widget.docID,
                            nameController.text,
                            emailController.text,
                            passwordController.text,
                          );
                          Navigator.pop(context);
                        }
                      },
                      child: const Text('Update'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        nameController.clear();
                        emailController.clear();
                        passwordController.clear();
                      },
                      style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(Colors.red),
                      ),
                      child: const Text('Reset'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );

      },);
  }

  Future<void> _updateUser(String docID, name, email, pass)
  {
    return updateUser
        .doc(docID)
        .update(
        {
          'Name': name, 'Email': email, 'Password': pass
        })
        .then((value) => print("User Updated"))
        .catchError((error) => print("Failed to update user: $error"));
  }


}