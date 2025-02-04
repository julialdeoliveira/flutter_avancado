import 'package:all_in_one_concepts/src/presenter/ui/movies/widgets/drawer_movies.dart';
import 'package:flutter/material.dart';

import 'widgets/body_movies.dart';

class MoviesPage extends StatelessWidget {
  const MoviesPage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerMovies(),
      body: BodyMoviesPage(),
    );
  }
}
