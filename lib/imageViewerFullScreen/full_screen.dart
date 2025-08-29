import 'package:flutter/material.dart';
import 'package:flutterpractice/imageViewerFullScreen/data.dart';
class FullScreen extends StatefulWidget {
  final String imageUrl;

  const FullScreen({super.key,required this.imageUrl});

  @override
  State<FullScreen> createState() => _FullScreenState();
}

class _FullScreenState extends State<FullScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Full Screen'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Image.network(widget.imageUrl,fit: BoxFit.cover,),

      ),

    ) ;
  }
}
