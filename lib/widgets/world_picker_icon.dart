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
/// WorldPickerIcon(
///   onSelect: (country) {
///     print('Selected: ${country.name}');
///   },
///   selectedCountry: selectedCountry,
///   showIsoCode: true,
///   showDialCode: true,
/// )
/// ```
class WorldPickerIcon extends StatelessWidget {
  /// Callback function that is called when a country is selected.
  /// The selected [Country] object is passed as a parameter.
  final ValueChanged<Country> onSelect;

  /// The currently selected country. If null, displays a default placeholder.
  final Country? selectedCountry;

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
  final WorldPickerOptions options;

  /// Creates a [WorldPickerIcon] widget.
  ///
  /// The [onSelect] callback is required and will be called when a user
  /// selects a country from the picker dialog.
  const WorldPickerIcon({
    super.key,
    required this.onSelect,
    this.selectedCountry,
    this.size = 32.0,
    this.showIsoCode = false,
    this.showName = false,
    this.showCurrencyCode = false,
    this.showDialCode = false,
    this.defaultCountryIsoCode = 'US',
    this.options = const WorldPickerOptions(),
  });

  @override
  Widget build(BuildContext context) {
    final defaultCountry = WorldPickerService.defaultCountry();

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
              CountryFlag(
                size: size,
                country: selectedCountry ?? defaultCountry,
              ),
              const SizedBox(width: 8.0),
              Visibility(
                visible: showName,
                child: Text(
                  selectedCountry?.name ?? defaultCountry.name,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Visibility(
                visible: showIsoCode,
                child: Text(
                  selectedCountry?.isoCode ?? defaultCountry.isoCode,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Visibility(
                visible: showCurrencyCode,
                child: Text(
                  selectedCountry?.currencies.first.code ??
                      defaultCountry.currencies.first.code,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Visibility(
                visible: showDialCode,
                child: Text(
                  selectedCountry?.dialCode ?? defaultCountry.dialCode,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
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
            return WorldPicker(
              key: Key('world_picker'),
              countries: WorldPickerService.countries,
              size: size,
              onSelect: onSelect,
              options: options,
              scrollController: scrollController,
              // Adiciona o scrollController para permitir o arrasto
            );
          },
        );
      },
    );
  }
}
