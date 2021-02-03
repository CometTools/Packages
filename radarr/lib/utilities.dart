/// Library containing all utility functions for Radarr data.
library radarr_utilities;

import 'types.dart';

/// [RadarrUtilities] gives access to static, functional operations. These are mainly used for the (de)serialization of received JSON data.
/// 
/// [RadarrUtilities] cannot be initialized, all available functions are available statically.
class RadarrUtilities {
    RadarrUtilities._();

    static DateTime dateTimeFromJson(String date) => DateTime.tryParse(date ?? '');
    static String dateTimeToJson(DateTime date) => date?.toIso8601String();

    /**
     * Radarr Types
     */

    /// Converts a string to a [RadarrAvailability] object.
    static RadarrAvailability availabilityFromJson(String type) => RadarrAvailability.ANNOUNCED.from(type);
    /// Converts a [RadarrAvailability] object back to its string representation.
    static String availabilityToJson(RadarrAvailability type) => type?.value;

    /// Converts a string to a [RadarrCreditType] object.
    static RadarrCreditType creditTypeFromJson(String type) => RadarrCreditType.CREW.from(type);
    /// Converts a [RadarrCreditType] object back to its string representation.
    static String creditTypeToJson(RadarrCreditType type) => type?.value;

    /// Converts a string to a [RadarrEventType] object.
    static RadarrEventType eventTypeFromJson(String type) => RadarrEventType.GRABBED.from(type);
    /// Converts a [RadarrEventType] object back to its string representation.
    static String eventTypeToJson(RadarrEventType type) => type?.value;

    /// Converts a string to a [RadarrHistorySortKey] object.
    static RadarrHistorySortKey historySortKeyFromJson(String type) => RadarrHistorySortKey.DATE.from(type);
    /// Converts a [RadarrHistorySortKey] object back to its string representation.
    static String historySortKeyToJson(RadarrHistorySortKey type) => type?.value;

    /// Converts a string to a [RadarrSortDirection] object.
    static RadarrSortDirection sortDirectionFromJson(String type) => RadarrSortDirection.ASCENDING.from(type);
    /// Converts a [RadarrSortDirection] object back to its string representation.
    static String sortDirectionToJson(RadarrSortDirection type) => type?.value;
}
