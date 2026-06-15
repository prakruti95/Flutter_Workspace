import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class URLEx extends StatefulWidget
{
  const URLEx({super.key});

  @override
  State<URLEx> createState() => _URLExState();
}

class _URLExState extends State<URLEx>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(),
        body: Center
          (
            child: Column
              (
                children:
                [
                    ElevatedButton(onPressed: ()
                    {
                      mycall("7048470585");

                    }, child: Text("Call")),
                    SizedBox(height: 10,),
                    ElevatedButton(onPressed: ()
                    {
                      sendSMS("7048470585","Hello From Tops");
                    }, child: Text("Sms")),
                    SizedBox(height: 10,),
                    ElevatedButton(onPressed: ()
                    {

                    }, child: Text("Camera")),
                    SizedBox(height: 10,),
                    ElevatedButton(onPressed: ()
                    {

                    }, child: Text("Email")),

                ],
              ),
          ),
      );
  }

  mycall(String num)async
  {
    final Uri launchUri = Uri
      (
        scheme: 'tel',
        path: num,
      );
    await launchUrl(launchUri);
  }
}

Future<void> sendSMS(String phoneNumber, String message) async
{
  // Use the 'sms' scheme with the phone number as the path
  final Uri smsLaunchUri = Uri(
    scheme: 'sms',
    path: phoneNumber,
    queryParameters: <String, String>{
      'body': message,
    },
  );

  try {
    if (await canLaunchUrl(smsLaunchUri))
    {
      await launchUrl(smsLaunchUri);
    }
    else
    {
      // Handle the error if the messaging app cannot be opened
      print('Could not launch SMS');
    }
  }
  catch (e)
  {
    print('Error: $e');
  }
}
