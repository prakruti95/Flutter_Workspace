import 'package:flutter/material.dart';

class TabEx extends StatefulWidget 
{
  const TabEx({super.key});

  @override
  State<TabEx> createState() => _TabExState();
}

class _TabExState extends State<TabEx> 
{
  @override
  Widget build(BuildContext context) 
  {
    return DefaultTabController(length: 3, child: Scaffold(appBar: AppBar(bottom: TabBar(
        tabs:
    [
      GestureDetector(child: Tab(icon: Icon(Icons.directions_car),text: "A",),onTap: ()
      {
        print("test1");
      },),
      InkWell(child: Tab(icon: Icon(Icons.directions_transit),text: "B",),onTap: ()
      {
        print("Test2");
      },),
      Tab(icon: Icon(Icons.directions_bike),text: "C",),

    ]),),body: Center
      (
        child:     ElevatedButton(onPressed: ()
        {
          // Fluttertoast.showToast(
          //     msg: "This is Center Short Toast",
          //     toastLength: Toast.LENGTH_SHORT,
          //     gravity: ToastGravity.CENTER,
          //     timeInSecForIosWeb: 2,
          //     backgroundColor: Colors.red,
          //     textColor: Colors.black,
          //     fontSize: 16.0
          // );
        }, child: Text("My Toast Msg")) ,
      ),));
  }
}
