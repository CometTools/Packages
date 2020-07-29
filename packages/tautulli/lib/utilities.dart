/// Library containing all utilty functions for Tautulli data.
library tautulli_utilities;

/// [TautulliUtilities] gives access to static, functional operations. These are mainly used for the (de)serialization of received JSON data.
/// 
/// [TautulliUtilities] can not be initialized, all available functions are available statically.
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
    static String dateTimeToStringMilliseconds(DateTime date) {
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
}
