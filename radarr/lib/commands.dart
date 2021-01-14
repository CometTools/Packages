/// Library containing all logic and accessors to make calls to Radarr's API.
library radarr_commands;

import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'models.dart';

// Movie
part 'src/commands/movie.dart';
part 'src/commands/movie/get_movie.dart';
part 'src/commands/movie/get_all_movies.dart';
