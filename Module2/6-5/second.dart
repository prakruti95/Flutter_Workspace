import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreeen extends StatelessWidget 
{
  const SecondScreeen({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("My Products"),),
        body: SingleChildScrollView(
          child: Center
            (
              child: Column
                (
                  children: 
                  [
                      Image.network("https://www.amuldairy.com/assets/img/product/9/afghandryfruit.jpg",width: 200,height: 200,),
                      Text("Ice Cream"),
                      Image.network("https://m.media-amazon.com/images/I/717ES5w9peL._AC_UF894,1000_QL80_.jpg",width: 200,height: 200,),
                      Text("Butter Cookies"),
                      Image.network("https://assets.hyperpure.com/data/images/products/b64b2a8d9166a39a4c97aa709a22f9c7.png",width: 200,height: 200,),
                      Text("Butter Cookies"),
                      Image.network("https://www.amuldairy.com/assets/img/product/9/afghandryfruit.jpg",width: 200,height: 200,),
                      Text("Ice Cream"),
                      Image.network("https://m.media-amazon.com/images/I/717ES5w9peL._AC_UF894,1000_QL80_.jpg",width: 200,height: 200,),
                      Text("Butter Cookies"),
                      Image.network("https://assets.hyperpure.com/data/images/products/b64b2a8d9166a39a4c97aa709a22f9c7.png",width: 200,height: 200,),
                      Text("Butter Cookies"),
          
                    
                  ],
                ),
            ),
        ),
      );
  }
}
