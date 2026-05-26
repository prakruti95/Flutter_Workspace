import 'package:flutter/material.dart';

class File1 extends StatefulWidget {
  const File1({super.key});

  @override
  State<File1> createState() => _File1State();
}

class _File1State extends State<File1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Screen 1"),),);
  }
}
