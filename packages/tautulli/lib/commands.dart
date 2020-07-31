/// Library containing all logic and accessors to make calls to Tautulli's API through this package.
library tautulli_commands;

import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:tautulli/utilities.dart';
import 'types.dart';
import 'models.dart';

// Activity
part 'src/commands/activity.dart';
part 'src/commands/activity/get_activity.dart';
part 'src/commands/activity/terminate_session.dart';
// History
part 'src/commands/history.dart';
part 'src/commands/history/delete_history.dart';
part 'src/commands/history/get_history.dart';
// Library
part 'src/commands/library.dart';
part 'src/commands/library/delete_all_library_history.dart';
part 'src/commands/library/delete_library.dart';
part 'src/commands/library/refresh_libraries_list.dart';
part 'src/commands/library/update_metadata_details.dart';
part 'src/commands/library/undelete_library.dart';
// Miscellaneous
part 'src/commands/miscellaneous.dart';
part 'src/commands/miscellaneous/arnold.dart';
part 'src/commands/miscellaneous/get_date_formats.dart';
part 'src/commands/miscellaneous/get_geoip_lookup.dart';
// Notification
part 'src/commands/notifications.dart';
part 'src/commands/notifications/add_newsletter_config.dart';
part 'src/commands/notifications/add_notifier_config.dart';
part 'src/commands/notifications/register_device.dart';
part 'src/commands/notifications/set_mobile_device_config.dart';
part 'src/commands/notifications/set_newsletter_config.dart';
part 'src/commands/notifications/set_notifier_config.dart';
// System
part 'src/commands/system.dart';
part 'src/commands/system/backup_config.dart';
part 'src/commands/system/backup_db.dart';
part 'src/commands/system/delete_cache.dart';
part 'src/commands/system/delete_hosted_images.dart';
part 'src/commands/system/delete_image_cache.dart';
part 'src/commands/system/delete_login_log.dart';
part 'src/commands/system/delete_lookup_info.dart';
part 'src/commands/system/delete_media_info_cache.dart';
part 'src/commands/system/restart.dart';
part 'src/commands/system/status.dart';
part 'src/commands/system/update.dart';
part 'src/commands/system/update_check.dart';
// User
part 'src/commands/user.dart';
part 'src/commands/user/delete_all_user_history.dart';
part 'src/commands/user/refresh_users_list.dart';
part 'src/commands/user/undelete_user.dart';
