import 'dart:io';
import 'package:flutter/material.dart';

class Alertex extends StatefulWidget
{
  @override
  State<Alertex> createState() => _AlertexState();
}
enum ConfirmAction { Cancel, Accept}
class _AlertexState extends State<Alertex>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
          appBar: AppBar(title: Text("Alert Example"),),
          body: Center
            (
              child: Column
                (
                  children:
                  [
                      TextButton(onPressed: ()
                      {
                        showmydialog();
                      },child: Text("Click Simple Dialog"),),

                      TextButton(onPressed: ()
                      {
                        showconfirmdialog();
                      },child: Text("Click Confirm Dialog"),),

                    TextButton(onPressed: ()
                    {

                    },child: Text("XYZ"),)

                  ],
                ),
            ),
      );
  }

  showmydialog()
  {
      AlertDialog alert = AlertDialog
        (
          title: Text("Warning"),
          content: Text("Data is not Secure"),
          actions: 
          [
              ElevatedButton(onPressed: ()
              {
                exit(0);
                
              }, child: Text("EXIT"))
          ],
        );
        showDialog(context: context,
            builder: (context)
            {
              return alert;
            });
  }

  showconfirmdialog()
  {
      return showDialog(context: context,
          builder: (context)
          {
            return AlertDialog
              (
                  title: Text("Confirmation"),
                  content: Text("Are you sure you want to delete?"),
                  actions:
                  [
                    ElevatedButton(onPressed: ()
                    {
                      Navigator.of(context).pop(ConfirmAction.Accept);
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Deleted")));
                    }, child: Text("YES")),
                    ElevatedButton(onPressed: ()
                    {
                      Navigator.of(context).pop(ConfirmAction.Cancel);
                    }, child: Text("NO")),
                  ],
              );
            });
  }
}
