import 'package:flutter/material.dart';
import 'package:flutterpractice/imageViewerFullScreen/data.dart';
import 'package:flutterpractice/imageViewerFullScreen/full_screen.dart';
class GalleryScreen extends StatefulWidget {
  const GalleryScreen({super.key});

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
     backgroundColor: Colors.black,
     body: GridView.builder(
       itemCount: images.length,
         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
       crossAxisCount: 2,
       childAspectRatio: 1,
       crossAxisSpacing: 1
     ), itemBuilder: (context,index){
         return GestureDetector(
           onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>FullScreen(imageUrl:images[index])));

           },
             child: Card(
               child: Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: Image(image: NetworkImage(images[index])),
               ),
             ));

     }),
    );
  }
}
