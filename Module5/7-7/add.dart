import 'package:drawerex1/view.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AddData extends StatefulWidget
{
  const AddData({super.key});

  @override
  State<AddData> createState() => _AddDataState();
}

class _AddDataState extends State<AddData>
{
  TextEditingController pn = TextEditingController();
  TextEditingController pp = TextEditingController();
  TextEditingController pd = TextEditingController();
  TextEditingController pl = TextEditingController();


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
                    TextField(decoration: InputDecoration(hintText: "Enter Product Name"),controller: pn,),
                    SizedBox(height: 10,),
                    TextField(decoration: InputDecoration(hintText: "Enter Product Price"),controller: pp,),
                    SizedBox(height: 10,),
                    TextField(decoration: InputDecoration(hintText: "Enter Product Description"),controller: pd,),
                    SizedBox(height: 10,),
                    TextField(decoration: InputDecoration(hintText: "Enter Product Location"),controller: pl,),
                    SizedBox(height: 10,),
                    ElevatedButton(onPressed: ()
                    {
                      String pname = pn.text.toString();
                      String pprice = pp.text.toString();
                      String pdes = pd.text.toString();
                      String plocation = pl.text.toString();

                      adddata(pname,pprice,pdes,plocation);
                      Navigator.pushReplacement((context),MaterialPageRoute(builder: (context) => ViewData()));
                    }, child: Text("Add"))


                ],
              ),
          ),
      );
  }

  void adddata(String pname, String pprice, String pdes, String plocation)
  {
      var url = Uri.parse("https://prakrutitech.xyz/hetvi/insert.php");
      var resp = http.post(url,body:
      {
        "p_name":pname,
        "p_price":pprice,
        "p_des":pdes,
        "p_location":plocation
      });

      print(resp.toString());
  }


}
