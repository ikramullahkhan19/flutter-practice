import 'package:flutter/material.dart';
class FullImageScreen extends StatelessWidget {
  final String imageUrl;


  const FullImageScreen({super.key,required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Full Screen'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(

        child: Image.network(imageUrl,fit: BoxFit.cover,),

      ),

    ) ;
  }
}
