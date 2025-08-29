import 'package:flutter/material.dart';
import 'package:flutterpractice/imageViewerFullScreen/imageViewerFullScreenwithprovider/full_image_screen.dart';
import 'package:flutterpractice/imageViewerFullScreen/imageViewerFullScreenwithprovider/image_provider.dart';
import 'package:provider/provider.dart';
class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key});

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: Colors.black,
      body: Consumer<GalleryProvider>(
        builder: (context,galleryProvider,child){
          return GridView.builder(
          itemCount: galleryProvider.images.length,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    childAspectRatio: .8,
    crossAxisSpacing: .8
    ), itemBuilder: (context,index){
    return GestureDetector(
    onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>FullImageScreen(imageUrl: galleryProvider.images[index],)));

    },
    child: Card(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Image(fit: BoxFit.contain,
          image: NetworkImage(galleryProvider.images[index]),),
        ),
      ),
    ));

    });
        },

    ));
  }
}
