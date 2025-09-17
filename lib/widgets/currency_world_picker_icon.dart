library world_picker_widgets;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:world_picker/world_picker.dart';

/// A customizable widget that displays a country selector with flag and metadata.
///
/// This widget shows a tappable interface displaying the selected country's flag
/// and optional information (ISO code, name, currency, dial code). When tapped,
/// it opens a bottom sheet with a searchable list of all countries.
///
/// Example usage:
/// ```dart
/// CurrencyWorldPickerIcon(
///   onSelect: (country) {
///     print('Selected: ${country.name}');
///   },
///   selectedCountry: selectedCountry,
///   showIsoCode: true,
///   showDialCode: true,
/// )
/// ```
class CurrencyWorldPickerIcon extends StatelessWidget {
  /// Callback function that is called when a currency is selected.
  /// The selected [Currency] object is passed as a parameter.
  final ValueChanged<Currency> onSelect;

  /// The currently selected Currency. If null, displays a default placeholder.
  final Currency? selectedCurrency;

  /// The size of the flag icon. Defaults to 32.0.
  final double? size;

  /// Whether to display the ISO country code (e.g., "US"). Defaults to false.
  final bool showIsoCode;

  /// Whether to display the country name (e.g., "United States"). Defaults to false.
  final bool showName;

  /// Whether to display the currency code (e.g., "USD"). Defaults to false.
  final bool showCurrencyCode;

  /// Whether to display the international dial code (e.g., "+1"). Defaults to false.
  final bool showDialCode;

  /// The default country ISO code to use when no country is selected. Defaults to "US".
  final String defaultCountryIsoCode;

  /// Configuration options for customizing the country picker dialog.
  final CurrencyWorldPickerOptions options;

  /// Creates a [WorldPickerIcon] widget.
  ///
  /// The [onSelect] callback is required and will be called when a user
  /// selects a country from the picker dialog.
  const CurrencyWorldPickerIcon({
    super.key,
    required this.onSelect,
    this.selectedCurrency,
    this.size = 32.0,
    this.showIsoCode = false,
    this.showName = false,
    this.showCurrencyCode = false,
    this.showDialCode = false,
    this.defaultCountryIsoCode = 'US',
    this.options = const CurrencyWorldPickerOptions(),
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _openCountryPicker(context);
      },
      child: Row(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: 8.0),
              Visibility(
                visible: showName,
                child: Text(
                  selectedCurrency?.name ?? '',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Text(
                selectedCurrency?.code ?? '',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(width: 8.0),
          Icon(
            CupertinoIcons.chevron_down,
            size: 16.0,
            color: Theme.of(context).iconTheme.color,
          ),
        ],
      ),
    );
  }

  void _openCountryPicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      showDragHandle: true,
      backgroundColor: Colors.white,
      isDismissible: true,
      enableDrag: true,
      isScrollControlled: true,
      elevation: 8.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(12.0),
        ),
      ),
      builder: (context) {
        return DraggableScrollableSheet(
          expand: false,
          snap: true,
          initialChildSize: 0.7,
          minChildSize: 0.4,
          maxChildSize: 0.95,
          builder: (context, scrollController) {
            return CurrencyWorldPicker(
              currencies: WorldPickerService.currencies(),
              onSelect: (_) {
                onSelect(_);
              },
              size: 24,
              options: options,
            );
          },
        );
      },
    );
  }
}
