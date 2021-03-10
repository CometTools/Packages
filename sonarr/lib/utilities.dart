/// Library containing all utility functions for Sonarr data.
library sonarr_utilities;

import 'package:sonarr/types.dart';

/// [SonarrUtilities] gives access to static, functional operations. These are mainly used for the (de)serialization of received JSON data.
/// 
/// [SonarrUtilities] cannot be initialized, all available functions are available statically.
class SonarrUtilities {
    SonarrUtilities._();

    static DateTime? dateTimeFromJson(String? date) => DateTime.tryParse(date ?? '');
    static String? dateTimeToJson(DateTime? date) => date?.toIso8601String();

    /**
     * Sonarr Types
     */

    /// Converts a string to a [SonarrHistoryEventType] object.
    static SonarrHistoryEventType? historyEventTypeFromJson(String? type) => SonarrHistoryEventType.GRABBED.from(type);
    /// Converts a [SonarrHistoryEventType] object back to its string representation.
    static String? historyEventTypeToJson(SonarrHistoryEventType? type) => type?.value;

    /// Converts a string to a [SonarrSeriesType] object.
    static SonarrSeriesType? seriesTypeFromJson(String? type) => SonarrSeriesType.STANDARD.from(type);
    /// Converts a [SonarrSeriesType] object back to its string representation.
    static String? seriesTypeToJson(SonarrSeriesType? type) => type?.value;

    /// Converts a string to a [SonarrHistorySortKey] object.
    static SonarrHistorySortKey? historySortKeyFromJson(String? key) => SonarrHistorySortKey.DATE.from(key);
    /// Converts a [SonarrHistorySortKey] object back to its string representation.
    static String? historySortKeyToJson(SonarrHistorySortKey? key) => key?.value;

    /// Converts a string to a [SonarrWantedMissingSortKey] object.
    static SonarrWantedMissingSortKey? wantedMissingSortKeyFromJson(String? key) => SonarrWantedMissingSortKey.AIRDATE_UTC.from(key);
    /// Converts a [SonarrWantedMissingSortKey] object back to its string representation.
    static String? wantedMissingSortKeyToJson(SonarrWantedMissingSortKey? key) => key?.value;
}
