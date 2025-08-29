// import 'package:flutter/material.dart';
//
// import 'package:flutterpractice/screen/movie.dart';
//
// class MovieDetailsScreen extends StatefulWidget {
//   final Movie movie;  // Receive movie object
//
//   const MovieDetailsScreen({super.key,required this.movie});
//
//   @override
//   State<MovieDetailsScreen> createState() => _MovieDetailsScreenState();
// }
//
//
// class _MovieDetailsScreenState extends State<MovieDetailsScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//
//       appBar: AppBar(
//
//         centerTitle: true,
//         title: Text('Movie Details'),
//         backgroundColor: Colors.red,
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.only(bottom:120,left: 20,right: 20),
//           child: Card(
//             color: Colors.grey[900],
//
//             child: Column(
//               children: [
//                 Padding(
//
//                   padding: const EdgeInsets.all(8.0),
//                   child: SizedBox(
//                     height: 400,
//                     width: double.infinity,
//                     child: Image.asset(
//                         widget.movie.imagePath,fit: BoxFit.cover,),
//                   ),
//                 ),
//                 SizedBox(height: 10),
//                 Text(widget.movie.name, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.white)),
//                 SizedBox(height: 10),
//                 Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: Text(
//                     textAlign: TextAlign.center,
//                       widget.movie.description,maxLines: 5,style: TextStyle(color: Colors.white),),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       )
//       ,
//     );
//   }
// }
