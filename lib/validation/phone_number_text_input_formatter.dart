import 'package:flutter/services.dart';
import 'phone_number_formatter.dart';

/// TextInputFormatter that formats phone numbers according to the selected country's pattern.
class WorldPickerPhoneNumberTextInputFormatter extends TextInputFormatter {
  final String isoCode;

  WorldPickerPhoneNumberTextInputFormatter({required this.isoCode});

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final formatted = WorldPickerPhoneNumberFormatter.formatPhoneNumber(
      isoCode: isoCode,
      phoneNumber: newValue.text,
    );

    return newValue.copyWith(
      text: formatted,
      selection: TextSelection.collapsed(offset: formatted.length),
    );
  }
}
