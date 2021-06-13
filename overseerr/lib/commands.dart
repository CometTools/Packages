/// Library containing all logic and accessors to make calls to Overseerr's API.
library overseerr_commands;

import 'package:dio/dio.dart';
import 'models.dart';
import 'types.dart';

// Status
part 'src/commands/status.dart';
part 'src/commands/status/get_status.dart';
part 'src/commands/status/get_status_appdata.dart';

// User
part 'src/commands/users.dart';
part 'src/commands/users/get_users.dart';
