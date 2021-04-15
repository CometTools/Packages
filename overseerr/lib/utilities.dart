/// Library containing all utility functions for Overseerr data.
library overseerr_utilities;

/// [OverseerrUtilities] gives access to static, functional operations. These are mainly used for the (de)serialization of received JSON data.
/// 
/// [OverseerrUtilities] cannot be initialized, all available functions are available statically.
class OverseerrUtilities {
    OverseerrUtilities._();

    static DateTime? dateTimeFromJson(String? date) => DateTime.tryParse(date ?? '');
    static String? dateTimeToJson(DateTime? date) => date?.toIso8601String();
}
