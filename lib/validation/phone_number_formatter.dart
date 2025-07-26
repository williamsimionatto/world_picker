import 'package:phone_numbers_parser/phone_numbers_parser.dart';

class WorldPickerPhoneNumberFormatter {
  static String formatPhoneNumber({
    required String isoCode,
    required String phoneNumber,
  }) {
    try {
      final phone = PhoneNumber.parse(phoneNumber,
          destinationCountry: IsoCode.fromJson(isoCode));

      if (!phone.isValid()) {
        return phoneNumber;
      }

      return phone.formatNsn(
        format: NsnFormat.national,
        isoCode: IsoCode.fromJson(isoCode),
      );
    } catch (e) {
      return phoneNumber;
    }
  }
}
