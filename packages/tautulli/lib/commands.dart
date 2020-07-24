/// Library containing all logic and accessors to make calls to Tautulli's API through this package.
library tautulli_commands;

import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'models.dart';

// Activity
part 'src/commands/activity.dart';
part 'src/commands/activity/get_activity.dart';
part 'src/commands/activity/terminate_session.dart';
// Library
part 'src/commands/library.dart';
// Miscellaneous
part 'src/commands/miscellaneous.dart';
part 'src/commands/miscellaneous/arnold.dart';
// System
part 'src/commands/system.dart';
part 'src/commands/system/backup_config.dart';
part 'src/commands/system/backup_db.dart';
part 'src/commands/system/delete_cache.dart';
part 'src/commands/system/delete_image_cache.dart';
part 'src/commands/system/delete_login_log.dart';
part 'src/commands/system/restart.dart';
part 'src/commands/system/update.dart';
part 'src/commands/system/update_check.dart';
// User
part 'src/commands/user.dart';
