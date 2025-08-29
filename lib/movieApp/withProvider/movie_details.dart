import 'package:flutter/material.dart';
import 'package:flutterpractice/movieApp/withProvider/movie_provider.dart';


class MovieDetails extends StatefulWidget {
  final Movies movie;  // Receive movie object

  const MovieDetails({super.key,required this.movie});

  @override
  State<MovieDetails> createState() => _MovieDetailsState();
}


class _MovieDetailsState extends State<MovieDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(

        centerTitle: true,
        title: Text('Movie Details'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom:120,left: 20,right: 20),
          child: Card(
            color: Colors.grey[900],

            child: Column(
              children: [
                Padding(

                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 400,
                    width: double.infinity,
                    child: Image.asset(
                      widget.movie.imagePath,fit: BoxFit.cover,),
                  ),
                ),
                SizedBox(height: 10),
                Text(widget.movie.title, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.white)),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    textAlign: TextAlign.center,
                    widget.movie.description,maxLines: 5,style: TextStyle(color: Colors.white),),
                ),
              ],
            ),
          ),
        ),
      )
      ,
    );
  }
}
