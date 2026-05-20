import 'package:flutter/material.dart';

class Switchex extends StatefulWidget
{
  const Switchex({super.key});

  @override
  State<Switchex> createState() => _SwitchexState();
}
enum company{TCS,CAP}
class _SwitchexState extends State<Switchex>
{
  bool myvalue = false;
  String mydata ="SWITCH IS OFF";
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Switch Example"),),
        body: Center
          (
              child: Column
                (
                  children:
                  [
                      Switch
                        (
                          value: myvalue,
                          onChanged:(value)
                          {
                              setState(()
                              {
                                myvalue = value;
                                if(mydata=="SWITCH IS OFF")
                                {
                                  setState(() {
                                    mydata="SWITCH IS ON";
                                  });

                                }
                                else
                                {
                                  setState(() {
                                    mydata="SWITCH IS OFF";
                                  });


                                }

                              });
                          },
                      activeColor: Colors.blue,
                      activeThumbColor: Colors.yellow,
                      inactiveThumbColor: Colors.orange,
                      inactiveTrackColor: Colors.black,)
                      ,Text("$mydata")

                  ],
                ),
          )
      );
  }
}
