import 'package:flutter/material.dart';

class Checkboxex extends StatefulWidget 
{
  const Checkboxex({super.key});

  @override
  State<Checkboxex> createState() => _CheckboxexState();
}

class _CheckboxexState extends State<Checkboxex> 
{
    bool first = false;
    bool second = false;
    bool third = false;

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Checkbox Example"),),
        body: Center
          (
            child: Column
              (
                children: 
                [
                    CheckboxListTile
                      (
                        value: first,
                        onChanged:(value)
                        {
                              setState(() {
                                  this.first = value!;

                              });
                        },title: Text("Java"),),

                      CheckboxListTile
                      (
                        value: second,
                        onChanged:(value)
                        {
                          setState(() {
                            this.second = value!;
                          });

                        },title: Text("Python"),
                      ),
                      CheckboxListTile
                      (
                        value: third,
                        onChanged:(value)
                        {
                          setState(() {
                            this.third = value!;
                          });


                        },title: Text("Php"),
                      )
                  
                ],
              ),
          ),
      );
  }
}
