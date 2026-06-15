import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget
{
  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Counting"),),
        body: Center
          (
            child: Column
              (
                children:
                [
                    Text("Counter $counter"),

                    ElevatedButton(onPressed: ()
                    {
                        setState(() {
                          counter++;
                        });

                        print(counter);
                    }, child: Text("Click Me"))

                ],
              ),
          ),
      );
  }
}
