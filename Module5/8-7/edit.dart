import 'package:drawerex1/view.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class EditData extends StatefulWidget {

  var pname;
  var pprice;
  var pdes;
  var id;
  var ploca;
  EditData({required this.id,required this.pname,required this.pprice,required this.pdes,required this.ploca});

  @override
  State<EditData> createState() => _EditPageState();
}

class _EditPageState extends State<EditData>
{
  TextEditingController pn = TextEditingController();
  TextEditingController pp = TextEditingController();
  TextEditingController pd = TextEditingController();
  TextEditingController pl = TextEditingController();

  @override
  void initState() {
   pn.text=widget.pname;
   pp.text=widget.pprice;
   pd.text=widget.pdes;
   pl.text=widget.ploca;

  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar(title: Text("${widget.id}"),),
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

              updatedata(pname,pprice,pdes,plocation,widget.id);
              Navigator.pushReplacement((context),MaterialPageRoute(builder: (context) => ViewData()));
            }, child: Text("Add"))


          ],
        ),
      ),
    );
  }

  void updatedata(String pname, String pprice, String pdes, String plocation, id)
  {
    var url = Uri.parse("https://prakrutitech.xyz/hetvi/update.php");
    var resp = http.post(url,body:
    {
      "p_name":pname,
      "p_price":pprice,
      "p_des":pdes,
      "p_location":plocation,
      "id":id
    });

    print(resp.toString());
  }
}
