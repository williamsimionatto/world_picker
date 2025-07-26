import 'package:phone_numbers_parser/phone_numbers_parser.dart';

/// Class responsible for validating phone numbers according to the country's pattern.
///
/// Uses the WorldPicker service to obtain the phone pattern for the specified country.
class WorldPickerPhoneNumberValidation {
  /// Validates if the provided phone number matches the country's pattern.
  ///
  /// [isoCode]: ISO code of the country (e.g., 'BR', 'US').
  ///
  /// [phoneNumber]: Phone number to be validated.
  ///
  /// [isRequired]: Whether the phone number is required. If `true`, an empty phone number will return `false`.
  ///
  /// Returns `true` if the number is valid for the country, `false` otherwise.
  static bool isValidPhoneNumber({
    required String isoCode,
    String? phoneNumber,
    bool isRequired = true,
  }) {
    if (isRequired && (phoneNumber == null || phoneNumber.isEmpty)) {
      return false;
    }

    try {
      final phone = PhoneNumber.parse(phoneNumber!,
          destinationCountry: IsoCode.fromJson(isoCode));

      return phone.isValid();
    } catch (e) {
      return false;
    }
  }
}
