/// Library containing all model definitions for Radarr data.
library radarr_models;

/// Shared
export 'src/models/image.dart';

/// Commands
export 'src/models/command/command.dart';
export 'src/models/command/command_body.dart';

/// Custom Formats
export 'src/models/customformat/custom_format.dart';
export 'src/models/customformat/custom_format_specifications.dart';
export 'src/models/customformat/custom_format_specifications_fields.dart';

/// Exclusions
export 'src/models/exclusions/exclusion.dart';

/// Extra File
export 'src/models/extrafile/extra_file.dart';

/// History
export 'src/models/history/history.dart';
export 'src/models/history/history_record.dart';

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

/// Root Folder
export 'src/models/root_folder/root_folder.dart';
export 'src/models/root_folder/unmapped_folder.dart';

/// Tag
export 'src/models/tag/tag.dart';
