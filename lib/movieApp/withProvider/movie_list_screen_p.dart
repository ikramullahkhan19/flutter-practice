import 'package:flutter/material.dart';
import 'package:flutterpractice/movieApp/withProvider/movie_details.dart';
import 'package:flutterpractice/movieApp/withProvider/movie_provider.dart';
import 'package:provider/provider.dart';

class MovieListScreenP extends StatefulWidget {
  const MovieListScreenP({super.key});

  @override
  State<MovieListScreenP> createState() => _MovieListScreenPState();
}

class _MovieListScreenPState extends State<MovieListScreenP> {
  @override
  Widget build(BuildContext context) {

    final movieProvider = Provider.of<MovieProvider>(context);

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Movie App'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
        itemCount: movieProvider.movies.length, // ✅ from provider
        itemBuilder: (context, index) {
          final movie = movieProvider.movies[index]; // ✅ from provider
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      MovieDetails(movie: movie), // ✅ pass movie
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.grey[900],
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Image.asset(
                          movie.imagePath,
                          width: 100,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            movie.title,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
