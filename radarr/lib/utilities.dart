/// Library containing all utility functions for Radarr data.
library radarr_utilities;

/// [RadarrUtilities] gives access to static, functional operations. These are mainly used for the (de)serialization of received JSON data.
/// 
/// [RadarrUtilities] cannot be initialized, all available functions are available statically.
class RadarrUtilities {
    RadarrUtilities._();

    static DateTime dateTimeFromJson(String date) => DateTime.tryParse(date ?? '');
    static String dateTimeToJson(DateTime date) => date?.toIso8601String();
}
