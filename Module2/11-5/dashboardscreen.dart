import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget 
{
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> 
{
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Products"),),
        body: Center
          (
            child: SingleChildScrollView(
              child: Column
                (
                  children: 
                  [
                      Row
                        (
                          children: 
                          [
                              CircleAvatar(backgroundImage: AssetImage("assets/a.png"),radius: 30,),
                              SizedBox(width: 30,),
                              Text("Person1")
                            
                          ],
                        ),
                    SizedBox(height: 10,),
                    Row
                      (
                      children:
                      [
                        CircleAvatar(backgroundImage: AssetImage("assets/a.png"),radius: 30,),
                        SizedBox(width: 30,),
                        Text("Person2")
              
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row
                      (
                      children:
                      [
                        CircleAvatar(backgroundImage: AssetImage("assets/a.png"),radius: 30,),
                        SizedBox(width: 30,),
                        Text("Person3")
              
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row
                      (
                      children:
                      [
                        CircleAvatar(backgroundImage: AssetImage("assets/a.png"),radius: 30,),
                        SizedBox(width: 30,),
                        Text("Person4")
              
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row
                      (
                      children:
                      [
                        CircleAvatar(backgroundImage: AssetImage("assets/a.png"),radius: 30,),
                        SizedBox(width: 30,),
                        Text("Person1")
              
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row
                      (
                      children:
                      [
                        CircleAvatar(backgroundImage: AssetImage("assets/a.png"),radius: 30,),
                        SizedBox(width: 30,),
                        Text("Person2")
              
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row
                      (
                      children:
                      [
                        CircleAvatar(backgroundImage: AssetImage("assets/a.png"),radius: 30,),
                        SizedBox(width: 30,),
                        Text("Person3")
              
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row
                      (
                      children:
                      [
                        CircleAvatar(backgroundImage: AssetImage("assets/a.png"),radius: 30,),
                        SizedBox(width: 30,),
                        Text("Person4")
              
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row
                      (
                      children:
                      [
                        CircleAvatar(backgroundImage: AssetImage("assets/a.png"),radius: 30,),
                        SizedBox(width: 30,),
                        Text("Person1")
              
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row
                      (
                      children:
                      [
                        CircleAvatar(backgroundImage: AssetImage("assets/a.png"),radius: 30,),
                        SizedBox(width: 30,),
                        Text("Person2")
              
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row
                      (
                      children:
                      [
                        CircleAvatar(backgroundImage: AssetImage("assets/a.png"),radius: 30,),
                        SizedBox(width: 30,),
                        Text("Person3")
              
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row
                      (
                      children:
                      [
                        CircleAvatar(backgroundImage: AssetImage("assets/a.png"),radius: 30,),
                        SizedBox(width: 30,),
                        Text("Person4")
              
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row
                      (
                      children:
                      [
                        CircleAvatar(backgroundImage: AssetImage("assets/a.png"),radius: 30,),
                        SizedBox(width: 30,),
                        Text("Person1")
              
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row
                      (
                      children:
                      [
                        CircleAvatar(backgroundImage: AssetImage("assets/a.png"),radius: 30,),
                        SizedBox(width: 30,),
                        Text("Person2")
              
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row
                      (
                      children:
                      [
                        CircleAvatar(backgroundImage: AssetImage("assets/a.png"),radius: 30,),
                        SizedBox(width: 30,),
                        Text("Person3")
              
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row
                      (
                      children:
                      [
                        CircleAvatar(backgroundImage: AssetImage("assets/a.png"),radius: 30,),
                        SizedBox(width: 30,),
                        Text("Person4")
              
                      ],
                    ),
                    SizedBox(height: 10,),
                    
                  ],
                ),
            ),
          ),
      );
  }
}
