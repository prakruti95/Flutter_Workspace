import 'package:flutter/material.dart';

class FifthScreen extends StatelessWidget {
  const FifthScreen({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Profile Screen"),),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container
            (
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row
                  (
                    children:
                    [
                        CircleAvatar(backgroundImage:AssetImage("assets/a.png"),radius: 40,),

                        Column
                          (
                            children:
                            [
                              //SizedBox(height: 20,width: 20,),
                              Text("A"),
                              Text("B"),
                            ],
                          )
                    ],
                  ),
              ),
              color: Colors.lightBlue,
              width: MediaQuery.of(context).size.width,
              height: 100,
          ),
        ),
      );
  }
}
