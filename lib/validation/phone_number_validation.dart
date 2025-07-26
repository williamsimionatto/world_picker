import 'package:world_picker/world_picker.dart';

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
    final country = WorldPickerService.fromIsoCode(isoCode);

    if (country == null) {
      return false;
    }

    if (isRequired && (phoneNumber == null || phoneNumber.isEmpty)) {
      return false;
    }

    final phoneNumberPattern = country.phonePattern;

    if (phoneNumberPattern.isEmpty) {
      return false;
    }

    final RegExp phoneRegex = RegExp(phoneNumberPattern);

    return phoneRegex.hasMatch(phoneNumber!) && phoneNumber.isNotEmpty;
  }
}
