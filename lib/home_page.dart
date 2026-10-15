import 'package:flutter/material.dart';
import 'movie.dart';
import 'movie_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isGrid = false;
  String searchText = '';

  @override
  Widget build(BuildContext context) {
    final filteredMovies = movies.where((movie) {
      final query = searchText.toLowerCase();
      return movie.title.toLowerCase().contains(query) ||
          movie.genre.toLowerCase().contains(query);
    }).toList();

    final width = MediaQuery.of(context).size.width;
    final crossAxisCount = width > 600 ? 4 : 2;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie Library'),
        actions: [
          IconButton(
            icon: Icon(isGrid ? Icons.list : Icons.grid_view),
            onPressed: () {
              setState(() {
                isGrid = !isGrid;
              });
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  searchText = value;
                });
              },
              decoration: const InputDecoration(
                hintText: 'Search movies...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('${filteredMovies.length} movies found'),
            ),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: filteredMovies.isEmpty
                ? const Center(child: Text('No movies found'))
                : (isGrid
                ? GridView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: filteredMovies.length,
              gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 1.4,
              ),
              itemBuilder: (context, index) {
                return MovieCard(movie: filteredMovies[index]);
              },
            )
                : ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: filteredMovies.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: MovieCard(movie: filteredMovies[index]),
                );
              },
            )),
          ),
        ],
      ),
    );
  }
}