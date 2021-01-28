/// Library containing all logic and accessors to make calls to Radarr's API.
library radarr_commands;

import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'models.dart';

// Credits
part 'src/commands/credits.dart';
part 'src/commands/credits/get_credits.dart';

// Extra File
part 'src/commands/extrafile.dart';
part 'src/commands/extrafile/get_extra_files.dart';

// Credits
part 'src/commands/history.dart';
part 'src/commands/history/get_movie_history.dart';

// Movie
part 'src/commands/movie.dart';
part 'src/commands/movie/get_movie.dart';
part 'src/commands/movie/get_all_movies.dart';

// Movie File
part 'src/commands/moviefile.dart';
part 'src/commands/moviefile/get_movie_file.dart';

// Quality Profile
part 'src/commands/qualityprofile.dart';
part 'src/commands/qualityprofile/get_quality_profile.dart';
part 'src/commands/qualityprofile/get_all_quality_profiles.dart';
