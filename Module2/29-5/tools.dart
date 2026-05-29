import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class WidgetEx extends StatefulWidget {
  const WidgetEx({super.key});

  @override
  State<WidgetEx> createState() => _WidgetExState();
}

class _WidgetExState extends State<WidgetEx>
{
  String selectedcity = "Select City";
  var city = ["Select City","Rajkot","Ahmedabad","Baroda","Surat"];
  bool isSwitched = false;
  var textValue = 'Switch is OFF';
  double rating = 3;
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("DropDown Example"),),
        body: Center
          (
            child: Column
              (
                children:
                [
                    DropdownButton
                      (
                        value: selectedcity,
                        isExpanded: true,
                        items: city.map((item) => DropdownMenuItem
                          (
                          value: item,
                          child: Text(item),
                          ),).toList()
                ,
                onChanged: (String? value)
                {
                  setState(() {
                    selectedcity = value!;
                  });
                },
                    ),
                  Switch
                    (
                        value: isSwitched,
                        onChanged:  toggleSwitch,
                    activeColor: Colors.blue,
                    activeTrackColor: Colors.yellow,
                    inactiveThumbColor: Colors.redAccent,
                    inactiveTrackColor: Colors.orange,

                  ),
                  Text('$textValue', style: TextStyle(fontSize: 20),)
                  ,
                  SizedBox(height: 10),

                  // RATING BAR
                  Text("Rating:"),
                  RatingBar.builder(
                    initialRating: rating,
                    minRating: 1,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (value) {
                      setState(() {
                        rating = value;
                      });
                    },
                  ),

          ExpansionTile(
            title: Text("What is Flutter?"),
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text("Flutter is UI toolkit by Google."),
              )
            ],
          ),

          Chip(
            label: Text("Flutter"),
            avatar: Icon(Icons.code),
          ),

          Center(
            child: CircularProgressIndicator(),
          )

                ],
              ),
          ),
      );
  }

  void toggleSwitch(bool value)
  {
    if(isSwitched == false)
    {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    }
    else
    {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }
}
