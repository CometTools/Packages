/// Library containing all logic and accessors to make calls to Tautulli's API through this package.
library tautulli_commands;

import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:tautulli/utilities.dart';
import 'types.dart';
import 'models.dart';

// Activity
part 'src/commands/activity.dart';
part 'src/commands/activity/delete_temp_sessions.dart';
part 'src/commands/activity/get_activity.dart';
part 'src/commands/activity/terminate_session.dart';
// History
part 'src/commands/history.dart';
part 'src/commands/history/delete_history.dart';
part 'src/commands/history/get_history.dart';
// Libraries
part 'src/commands/libraries.dart';
part 'src/commands/libraries/delete_all_library_history.dart';
part 'src/commands/libraries/delete_library.dart';
part 'src/commands/libraries/delete_recently_added.dart';
part 'src/commands/libraries/edit_library.dart';
part 'src/commands/libraries/refresh_libraries_list.dart';
part 'src/commands/libraries/update_metadata_details.dart';
part 'src/commands/libraries/undelete_library.dart';
// Miscellaneous
part 'src/commands/miscellaneous.dart';
part 'src/commands/miscellaneous/arnold.dart';
part 'src/commands/miscellaneous/get_date_formats.dart';
part 'src/commands/miscellaneous/get_geoip_lookup.dart';
part 'src/commands/miscellaneous/get_server_friendly_name.dart';
part 'src/commands/miscellaneous/get_server_id.dart';
part 'src/commands/miscellaneous/get_server_identity.dart';
part 'src/commands/miscellaneous/get_whois_lookup.dart';
part 'src/commands/miscellaneous/pms_image_proxy.dart';
// Notification
part 'src/commands/notifications.dart';
part 'src/commands/notifications/add_newsletter_config.dart';
part 'src/commands/notifications/add_notifier_config.dart';
part 'src/commands/notifications/delete_mobile_device.dart';
part 'src/commands/notifications/delete_newsletter.dart';
part 'src/commands/notifications/delete_notifier.dart';
part 'src/commands/notifications/notify.dart';
part 'src/commands/notifications/notify_newsletter.dart';
part 'src/commands/notifications/notify_recently_added.dart';
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
part 'src/commands/system/delete_newsletter_log.dart';
part 'src/commands/system/delete_notification_log.dart';
part 'src/commands/system/restart.dart';
part 'src/commands/system/status.dart';
part 'src/commands/system/update.dart';
part 'src/commands/system/update_check.dart';
// Users
part 'src/commands/users.dart';
part 'src/commands/users/delete_all_user_history.dart';
part 'src/commands/users/delete_user.dart';
part 'src/commands/users/edit_user.dart';
part 'src/commands/users/get_users_table.dart';
part 'src/commands/users/refresh_users_list.dart';
part 'src/commands/users/undelete_user.dart';
