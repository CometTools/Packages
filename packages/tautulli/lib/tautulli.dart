/// Dart library package to facilitate the connection to and from [Tautulli](https://tautulli.com)'s API:
/// a Python based monitoring and tracking tool for Plex Media Server.
library tautulli;

import 'dart:io';
import 'package:meta/meta.dart';
import 'package:dio/dio.dart';
import 'package:dio/adapter.dart';

// Core Manager
part './src/tautulli.dart';
// Commands - Activity
part './src/commands/activity.dart';
part './src/commands/activity/get_activity.dart';
part './src/commands/activity/models/activity.dart';
// Commands - Miscellaneous
part './src/commands/miscellaneous.dart';
part './src/commands/miscellaneous/arnold.dart';
