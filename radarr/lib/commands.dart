/// Library containing all logic and accessors to make calls to Radarr's API.
library radarr_commands;

import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'models.dart';

// Commands
part 'src/commands/command.dart';
part 'src/commands/command/backup.dart';
part 'src/commands/command/missing_movie_search.dart';
part 'src/commands/command/movies_search.dart';
part 'src/commands/command/refresh_movie.dart';
part 'src/commands/command/rss_sync.dart';

// Credits
part 'src/commands/credits.dart';
part 'src/commands/credits/get_credits.dart';

// Extra File
part 'src/commands/extrafile.dart';
part 'src/commands/extrafile/get_extra_files.dart';

// History
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

// Root Folder
part 'src/commands/root_folder.dart';
part 'src/commands/root_folder/get_root_folders.dart';

// Tags
part 'src/commands/tag.dart';
part 'src/commands/tag/add_tag.dart';
part 'src/commands/tag/delete_tag.dart';
part 'src/commands/tag/get_all_tags.dart';
part 'src/commands/tag/get_tag.dart';
part 'src/commands/tag/update_tag.dart';
