import 'package:flutter/foundation.dart';

class Movies {
  final String title;
  final String imagePath;
  final String description;

  Movies(this.title, this.imagePath, this.description);
}

class MovieProvider with ChangeNotifier {
  final List<Movies> _movies = [
    Movies(
      'Inception',
      "assets/images/inception.jpg",
      "A skilled thief who steals secrets through dream invasion is offered a chance to have his past crimes forgiven. To succeed, he must achieve the impossible task of planting an idea into someone’s subconscious, leading to a thrilling journey through layers of dreams.",
    ),
    Movies(
      'The Dark Knight',
      "assets/images/TheDarkKnight.jpg",
      "Batman faces his greatest psychological and physical test when the Joker, a criminal mastermind, wreaks havoc on Gotham City. As chaos spreads, Batman must confront his limits and make sacrifices to protect the people he swore to defend.",
    ),
    Movies(
      'Dark',
      "assets/images/Dark.jpg",
      "A German sci-fi thriller about four interconnected families unraveling a time travel conspiracy that spans generations. When children start disappearing, hidden secrets and twisted timelines come to light, raising haunting questions about fate and free will.",
    ),
    Movies(
      'Interstellar',
      "assets/images/Interstellar.jpg",
      "In a future where Earth is dying, a team of explorers travels through a wormhole in search of a new habitable planet. Led by Cooper, they face the limits of time, space, and human endurance in a profound story about love and survival.",
    ),
  ];

  List<Movies> get movies => _movies;

  void addMovie(Movies movie) {
    _movies.add(movie);
    notifyListeners();
  }

  void removeMovie(Movies movie) {
    _movies.remove(movie);
    notifyListeners();
  }

  void updateMovie(int index, Movies newMovie) {
    _movies[index] = newMovie;
    notifyListeners();
  }

  void clearMovies() {
    _movies.clear();
    notifyListeners();
  }
}
