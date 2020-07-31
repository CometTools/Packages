/// Library containing all utilty functions for Tautulli data.
library tautulli_utilities;

import 'package:tautulli/types.dart';

/// [TautulliUtilities] gives access to static, functional operations. These are mainly used for the (de)serialization of received JSON data.
/// 
/// [TautulliUtilities] cannot be initialized, all available functions are available statically.
class TautulliUtilities {
    TautulliUtilities._();

    /** 
     * String <-> Integer 
     */

    /// Converts a string to an integer. Returns null on an invalid string.
    static int stringToInteger(String value) => int.tryParse(value);
    /// Converts an integer to a string. Returns an empty string on an invalid/null integer.
    static String integerToString(int value) => value?.toString() ?? '';

    /**
     * Integer <-> Boolean
     */

    /// Converts an integer to a boolean. 0 is false, any other value is true.
    static bool integerToBoolean(int value) => value == null ? null : value == 0 ? false : true;
    /// Converts a boolean to an integer. False = 0, True = 1.
    static int booleanToInteger(bool value) => value == null ? null : value ? 1 : 0;

    /**
     * String <-> Boolean 
     */

    /// Converts a string to a boolean. '0' is false, anything else is true.
    static bool stringToBoolean(String value) => value == null || value == '' ? null : value == '0' ? false : true;
    /// Converts a boolean to a string. False = '0', True = '1'
    static String booleanToString(bool value) => value == null ? '' : value ? '1' : '0';

    /** 
     * String <-> Double
     */

    /// Converts a string to a double. Returns null on an invalid string.
    static double stringToDouble(String value) => double.tryParse(value);
    /// Converts a double to a string. Returns an empty string on an invalid/null double.
    static String doubleToString(double value) => value?.toString() ?? '';

    /**
     * Integer <-> DateTime
     */

    /// Converts an integer containing a unix/Epoch millisecond value to a [DateTime] object. Returns null on an invalid/null integer.
    static DateTime millisecondsIntegerToDateTime(int date) {
        try { return DateTime.fromMillisecondsSinceEpoch(date*1000); } catch (_) {};
        return null;
    }

    /// Converts a [DateTime] object to an integer containing a unix/Epoch millisecond value. Returns an empty string on an invalid/null [DateTime] object.
    static int dateTimeToIntegerMilliseconds(DateTime date) {
        try { return (date.millisecondsSinceEpoch/1000).floor(); } catch (_) {};
        return null;
    }

    /** 
     * String <-> DateTime 
     */

    /// Converts a date-formatted string to a [DateTime] object. Returns null on a poorly formatted string.
    static DateTime stringToDateTime(String date) => DateTime.tryParse(date);
    /// Converts a String containing a unix/Epoch millisecond value to a [DateTime] object. Returns null on a poorly formatted string.
    static DateTime millisecondsStringToDateTime(String date) {
        try { return DateTime.fromMillisecondsSinceEpoch(int.parse(date)*1000); } catch (_) {};
        return null;
    }
    /// Converts a [DateTime] object to a string containing a unix/Epoch millisecond value. Returns an empty string on an invalid/null [DateTime] object.
    static String dateTimeToMillisecondsString(DateTime date) {
        try { return (date.millisecondsSinceEpoch/1000).floor().toString(); } catch (_) {};
        return "";
    }

    /**
     * List<String> <-> List<int>
     */

    /// Converts a list of strings to a list of integers. Individual indexes are null on a poorly formatted string.
    static List<int> stringListToIntegerList(List<dynamic> list) => list?.map((item) => int.tryParse(item))?.toList();
    /// Converts a list of integers to a list of strings. Individual indexes are an empty string on an invalid/null integer.
    static List<String> integerListToStringList(List<int> list) => list?.map((item) => item?.toString() ?? "")?.toList();

    /**
     * String <-> List<String>
     */

    /// Converts a string to a List<String>. The split pattern is a comma (,).
    static List<String> stringToListString(String list) => list?.split(',') ?? null;
    /// Converts a List<String> to a string. The separator is a comma (,). 
    static String listStringToString(List<String> list) => list?.join(',');

    /**
     * Integer <-> Duration
     */

    /// Converts an integer of seconds to a [Duration] object. Returns null on an invalid/null integer.
    static Duration secondsIntegerToDuration(int duration) => duration == null ? null : Duration(seconds: duration);
    /// Converts a [Duration] object to an integer in seconds. Returns null on an invalid/null [Duration] object.
    static int durationToSecondsInteger(Duration duration) => duration?.inSeconds ?? null;

    /**
     * String <-> Duration
     */

    /// Converts a string of milliseconds to a [Duration] object. Returns null on an invalid/null String.
    static Duration millisecondsStringToDuration(String duration) {
        try { return Duration(milliseconds: int.parse(duration)); } catch(_) {};
        return null;
    }
    /// Converts a [Duration] object to a string in milliseconds. Returns an empty string on an invalid/null [Duration] object.
    static String durationToMillisecondsString(Duration duration) => duration?.inMilliseconds?.toString() ?? null;

    /**
     * Tautulli types <-> String
     */

    /// Converts a string to a [TautulliMediaType] object.
    static TautulliMediaType mediaTypeToObject(String type) => TautulliMediaType.MOVIE.from(type);
    /// Converts a [TautulliMediaType] object back to its string representation.
    static String mediaTypeToString(TautulliMediaType type) => type?.value;

    /// Converts a string to a [TautulliSessionState] object.
    static TautulliSessionState sessionStateToObject(String state) => TautulliSessionState.BUFFERING.from(state);
    /// Converts a [TautulliSessionState] object back to its string representation.
    static String sessionStateToString(TautulliSessionState state) => state?.value;

    /// Conerts a string to a [TautulliSessionLocation] object.
    static TautulliSessionLocation sessionLocationToObject(String location) => TautulliSessionLocation.LAN.from(location);
    /// Converts a [TautulliSessionLocation] object back to its string representation.
    static String sessionLocationToString(TautulliSessionLocation location) => location?.value;

    /// Converts a string to a [TautulliTranscodeDecision] object.
    static TautulliTranscodeDecision transcodeDecisionToObject(String decision) => TautulliTranscodeDecision.COPY.from(decision);
    /// Converts a [TautulliTranscodeDecision] object back to its string representation.
    static String transcodeDecisionToString(TautulliTranscodeDecision decision) => decision?.value;

    /// Converts a double to a [TautulliWatchedStatus] object.
    static TautulliWatchedStatus watchedStatusToObject(num watched) => TautulliWatchedStatus.WATCHED.from(watched);
    /// Converts a [TautulliWatchedStatus] object back to its double representation.
    static num watchedStatusToDouble(TautulliWatchedStatus watched) => watched?.value;
}
