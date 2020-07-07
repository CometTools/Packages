/// Dart library package to facilitate the connection to and from [Tautulli](https://tautulli.com)'s API:
/// a Python based monitoring and tracking tool for Plex Media Server.
/// 
/// This library contains all logic and access to make calls to Tautulli's API through this package.
library tautulli_commands;

import 'package:dio/dio.dart';
import './models.dart';

// Activity
part './src/commands/activity.dart';
part './src/commands/activity/get_activity.dart';
// Miscellaneous
part './src/commands/miscellaneous.dart';
part './src/commands/miscellaneous/arnold.dart';
// System
part './src/commands/system.dart';
part './src/commands/system/update.dart';
part './src/commands/system/update_check.dart';
