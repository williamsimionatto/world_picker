import 'package:world_picker/model/country_model.dart';

/// Represents a phone number with its associated country ISO code.
class PhoneNumber {
  /// ISO code of the country (e.g., 'BR', 'US').
  final String? isoCode;

  /// The country associated with the phone number.
  final Country? country;

  /// The phone number string.
  final String? phoneNumber;

  /// Dial code of the country (e.g., '+55' for Brazil).
  final String? dialCode;

  /// Creates a [PhoneNumber] instance.
  ///
  /// [isoCode]: ISO code of the country.
  /// [phoneNumber]: The phone number value.
  /// [dialCode]: The dial code of the country.
  PhoneNumber({
    this.isoCode,
    this.phoneNumber,
    this.dialCode,
    this.country,
  });

  @override
  String toString() {
    return 'PhoneNumber(isoCode: $isoCode, phoneNumber: $phoneNumber, dialCode: $dialCode)';
  }
}
