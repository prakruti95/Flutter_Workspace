import 'package:flutter/material.dart';

class FourthScreen extends StatefulWidget {
  const FourthScreen({super.key});

  @override
  State<FourthScreen> createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen>
{
  bool _ishappy = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
        appBar: AppBar(title: Text("Toggle Screen"),),
        body: Center
          (
            child: Column
              (
                children: 
                [
                  Text
                    (
                      _ishappy ? '😊 Happy' : '😔 Sad',
                      style: TextStyle(fontSize: 24),
                    ),
                    ElevatedButton(onPressed: ()
                    {
                        setState(() {

                          _ishappy = !_ishappy;

                        });

                    }, child: Text("Change Mood"))
                  
                  
                ],
              ),
          ),
      );
  }
}
