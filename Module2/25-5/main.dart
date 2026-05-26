import 'package:flutter/material.dart';
import 'package:testproj1/file1.dart';
import 'package:testproj1/file2.dart';

void main() {
  runApp(MaterialApp(home: MyApp(),initialRoute: '/',
    routes: {
      '/a': (context) => const File1(),
      '/second': (context) => const File2(),
  },));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>
  [
    Text('Home Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Search Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Profile Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center
        (
        child: _widgetOptions.elementAt(_selectedIndex),
          // child: SingleChildScrollView(
          //   child: Column
          //     (
          //       children:
          //       [
          //         ListTile(leading: Icon(Icons.home),title: Text("Home"),
          //           onTap: ()
          //           {
          //             Navigator.pop(context);
          //           },),
          //         ListTile(leading: Icon(Icons.home),title: Text("Home"),
          //           onTap: ()
          //           {
          //             Navigator.pop(context);
          //           },),
          //         ListTile(leading: Icon(Icons.home),title: Text("Home"),
          //           onTap: ()
          //           {
          //             Navigator.pop(context);
          //           },),
          //         ListTile(leading: Icon(Icons.home),title: Text("Home"),
          //           onTap: ()
          //           {
          //             Navigator.pop(context);
          //           },),
          //         ListTile(leading: Icon(Icons.home),title: Text("Home"),
          //           onTap: ()
          //           {
          //             Navigator.pop(context);
          //           },),
          //         ListTile(leading: Icon(Icons.home),title: Text("Home"),
          //           onTap: ()
          //           {
          //             Navigator.pop(context);
          //           },),
          //         ListTile(leading: Icon(Icons.home),title: Text("Home"),
          //           onTap: ()
          //           {
          //             Navigator.pop(context);
          //           },),
          //         ListTile(leading: Icon(Icons.home),title: Text("Home"),
          //           onTap: ()
          //           {
          //             Navigator.pop(context);
          //           },),
          //         ListTile(leading: Icon(Icons.home),title: Text("Home"),
          //           onTap: ()
          //           {
          //             Navigator.pop(context);
          //           },), ListTile(leading: Icon(Icons.home),title: Text("Home"),
          //         onTap: ()
          //         {
          //           Navigator.pop(context);
          //         },),
          //         ListTile(leading: Icon(Icons.home),title: Text("Home"),
          //           onTap: ()
          //           {
          //             Navigator.pop(context);
          //           },),
          //         ListTile(leading: Icon(Icons.home),title: Text("Home"),
          //           onTap: ()
          //           {
          //             Navigator.pop(context);
          //           },),
          //         ListTile(leading: Icon(Icons.home),title: Text("Home"),
          //           onTap: ()
          //           {
          //             Navigator.pop(context);
          //           },),
          //         ListTile(leading: Icon(Icons.home),title: Text("Home"),
          //           onTap: ()
          //           {
          //             Navigator.pop(context);
          //           },),
          //         ListTile(leading: Icon(Icons.home),title: Text("Home"),
          //           onTap: ()
          //           {
          //             Navigator.pop(context);
          //           },),
          //         ListTile(leading: Icon(Icons.home),title: Text("Home"),
          //           onTap: ()
          //           {
          //             Navigator.pop(context);
          //           },),
          //         ListTile(leading: Icon(Icons.home),title: Text("Home"),
          //           onTap: ()
          //           {
          //             Navigator.pop(context);
          //           },), ListTile(leading: Icon(Icons.home),title: Text("Home"),
          //         onTap: ()
          //         {
          //           Navigator.pop(context);
          //         },),
          //         ListTile(leading: Icon(Icons.home),title: Text("Home"),
          //           onTap: ()
          //           {
          //             Navigator.pop(context);
          //           },),
          //         ListTile(leading: Icon(Icons.home),title: Text("Home"),
          //           onTap: ()
          //           {
          //             Navigator.pop(context);
          //           },),
          //         ListTile(leading: Icon(Icons.home),title: Text("Home"),
          //           onTap: ()
          //           {
          //             Navigator.pop(context);
          //           },),
          //
          //
          //       ],
          //     ),
          // ),
        ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader
              (
                currentAccountPicture: CircleAvatar(),
                accountName: Text("Tops Tech"),
                accountEmail: Text("tops@gmail.com"),
              ),
            Column
              (
                children:
                [
                  ListTile(leading: Icon(Icons.home),title: Text("Home"),
                    onTap: ()
                    {
                      Navigator.pop(context);
                    },),
                  Divider(),
                  ListTile(leading: Icon(Icons.home),title: Text("Home"),
                    onTap: ()
                    {
                      Navigator.pop(context);
                    },),
                  Divider(),
                  ListTile(leading: Icon(Icons.home),title: Text("Home"),
                    onTap: ()
                    {
                      Navigator.pop(context);
                    },),
                  Divider(),

                ],
              )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: ()
      {
        Navigator.pushNamed(context, '/second');
      },child: Icon(Icons.add),),
      bottomNavigationBar: BottomNavigationBar(
          items:
        [
          BottomNavigationBarItem(icon: Icon(Icons.eighteen_mp), label:'Home',
              backgroundColor: Colors.green),
          BottomNavigationBarItem(icon: Icon(Icons.eighteen_mp), label:'About',
              backgroundColor: Colors.green),
          BottomNavigationBarItem(icon: Icon(Icons.eighteen_mp),label:'Contact',
              backgroundColor: Colors.green),
        ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }

  void _onItemTapped(int value)
  {
    setState(() {
      _selectedIndex = value;
    });
  }
}

