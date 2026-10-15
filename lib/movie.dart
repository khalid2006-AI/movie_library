class Movie {
  final String title;
  final String genre;
  final int year;
  final double rating;
  final String image;

  const Movie({
    required this.title,
    required this.genre,
    required this.year,
    required this.rating,
    required this.image,
  });
}

List<Movie> movies = const [
  Movie(
    title: 'Inception',
    genre: 'Action',
    year: 2010,
    rating: 8.8,
    image: 'assets/posters/poster1.png',
  ),
  Movie(
    title: 'Interstellar',
    genre: 'Sci-Fi',
    year: 2014,
    rating: 8.6,
    image: 'assets/posters/poster2.png',
  ),
  Movie(
    title: 'The Dark Knight',
    genre: 'Action',
    year: 2008,
    rating: 9.0,
    image: 'assets/posters/poster3.png',
  ),
  Movie(
    title: 'Titanic',
    genre: 'Romance',
    year: 1997,
    rating: 7.9,
    image: 'assets/posters/poster4.png',
  ),
  Movie(
    title: 'Joker',
    genre: 'Drama',
    year: 2019,
    rating: 8.4,
    image: 'assets/posters/poster5.png',
  ),
  Movie(
    title: 'The Matrix',
    genre: 'Sci-Fi',
    year: 1999,
    rating: 8.7,
    image: 'assets/posters/poster6.png',
  ),
  Movie(
    title: 'Avengers Endgame',
    genre: 'Action',
    year: 2019,
    rating: 8.4,
    image: 'assets/posters/poster7.png',
  ),
  Movie(
    title: 'Frozen',
    genre: 'Animation',
    year: 2013,
    rating: 7.4,
    image: 'assets/posters/poster8.png',
  ),
];