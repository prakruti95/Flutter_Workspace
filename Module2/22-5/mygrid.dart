import 'package:flutter/material.dart';

class MyGridView extends StatefulWidget {
  const MyGridView({super.key});

  @override
  State<MyGridView> createState() => _MyGridViewState();
}

class _MyGridViewState extends State<MyGridView>
{
  var image = ["https://thumbs.dreamstime.com/b/incredibly-beautiful-sunset-sun-lake-sunrise-landscape-panorama-nature-sky-amazing-colorful-clouds-fantasy-design-115177001.jpg","https://png.pngtree.com/background/20250207/original/pngtree-soft-pastel-floral-design-light-blue-background-picture-image_16257054.jpg","https://i0.wp.com/picjumbo.com/wp-content/uploads/picjumbo-premium-watercolor-backgrounds-30.jpeg?w=600&quality=80","https://i0.wp.com/picjumbo.com/wp-content/uploads/picjumbo-premium-watercolor-backgrounds-30.jpeg?w=600&quality=80","https://i0.wp.com/picjumbo.com/wp-content/uploads/picjumbo-premium-watercolor-backgrounds-30.jpeg?w=600&quality=80"];
  var text12 = ["A","B","C","D","E"];

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
        appBar: AppBar(),
        body: GridView.builder
          (
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder:(context,index)
              {
                  return ListTile
                    (
                      leading: Image.network(image[index]),
                      title: Text(text12[index]),);
              },itemCount:image.length),
            );
  }
}
