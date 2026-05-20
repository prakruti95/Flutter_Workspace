import 'package:flutter/material.dart';

class Radiobuttonex extends StatefulWidget
{
  const Radiobuttonex({super.key});

  @override
  State<Radiobuttonex> createState() => _RadiobuttonexState();
}
enum company{TCS,CAP}
class _RadiobuttonexState extends State<Radiobuttonex>
{

  company _com = company.TCS;

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("RadioButton Example"),),
        body: Center
          (
            child: Column
              (
                children: 
                [
                      ListTile(leading: Radio
                        (
                          value: company.TCS,
                          onChanged: (value)
                          {
                                setState(() {

                                  _com = value!;

                                });
                          },groupValue:_com ,),title: Text("TCS"),),


                  ListTile(leading: Radio
                    (
                    value: company.CAP,
                    onChanged: (value)
                    {
                      setState(() {

                        _com = value!;

                      });
                    },groupValue:_com ,),title: Text("CAP"),)
                  
                ],
              ),
          ),
      );
  }
}
