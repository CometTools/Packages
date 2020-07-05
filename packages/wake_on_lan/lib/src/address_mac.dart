import 'package:convert/convert.dart';

class MACAddress {
    static const String _REGEX = r"^([0-9A-Fa-f]{2}[:]){5}([0-9A-Fa-f]{2})$";
    final String _address;
    final List<int> _bytes;

    MACAddress._internal(this._address, this._bytes);
    /// Creates [MACAddress] from the string [address].
    /// 
    /// The address should first be validated using the static function [MACAddress.validate(address)].
    /// On an invalidly formatted [address] string, [FormatException] will be thrown.
    factory MACAddress.from(String address) {
        if(!MACAddress.validate(address)) throw FormatException('Not a valid MAC address string');
        List<int> bytes = address.split(":").map((octet) => hex.decode(octet)[0]).toList();
        return MACAddress._internal(address, bytes);
    }

    /// String representation of the address
    String get address => _address;
    /// Byte representation of the address
    List<int> get bytes => _bytes;

    /// Validate that a MAC address in string [address] is correctly formatted.
    /// Expects that the delimiter between each hex octet is a colon (:).
    /// 
    /// Returns [true] on a valid address, [false] on a poorly formatted [address].
    static bool validate(String address) {
        if(address == null) return false;
        RegExp exp = RegExp(_REGEX);
        return exp.hasMatch(address);
    }
}
