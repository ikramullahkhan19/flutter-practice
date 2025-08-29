// import 'package:flutter/material.dart';
// import 'package:flutterpractice/movieApp/withoutProvider/movie.dart';
// import 'package:flutterpractice/movieApp/withoutProvider/movie_details_screen.dart';
//
//
// class MovieListScreen extends StatefulWidget {
//   const MovieListScreen({super.key});
//
//   @override
//   State<MovieListScreen> createState() => _MovieListScreenState();
// }
//
// class _MovieListScreenState extends State<MovieListScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         title: Text('Movie App'),
//         centerTitle: true,
//         backgroundColor: Colors.red,
//       ),
//       body: ListView.builder(
//         itemCount: movies.length,
//           itemBuilder: (context,index){
//         return InkWell(
//           onTap: (){
//             Navigator.push(context, MaterialPageRoute(builder: (context)=>MovieDetailsScreen(movie: movies[index])));
//           },
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Card(
//               color: Colors.grey[900],
//               child: Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       flex:1,
//                       child: Image.asset(
//
//                           movies[index].image,
//                         width: 100,
//                         height: 150,
//                         fit: BoxFit.cover,),
//                     ),
//
//                   Expanded(
//                     flex: 3,
//
//                       child: Align(
//                         alignment: Alignment.topRight,
//                           child: Text(movies[index].name,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)))
//                   ],
//                 ),
//               ),
//             ),
//
//           ),
//         );
//       }),
//     );
//   }
// }
