/// Library containing all model definitions for Radarr data.
library radarr_models;

/// Shared
export 'src/models/image.dart';

/// Extra File
export 'src/models/extrafile/extra_file.dart';

/// Movie
export 'src/models/movie/alternate_titles.dart';
export 'src/models/movie/collection.dart';
export 'src/models/movie/credits.dart';
export 'src/models/movie/movie.dart';
export 'src/models/movie/movie_file.dart';
export 'src/models/movie/movie_file_media_info.dart';
export 'src/models/movie/movie_file_quality.dart';
export 'src/models/movie/movie_file_quality_revision.dart';
export 'src/models/movie/movie_file_quality_quality.dart';
export 'src/models/movie/rating.dart';

/// Quality Profile
export 'src/models/qualityprofile/format_item.dart';
export 'src/models/qualityprofile/item.dart';
export 'src/models/qualityprofile/item_quality.dart';
export 'src/models/qualityprofile/language.dart';
export 'src/models/qualityprofile/quality_profile.dart';
