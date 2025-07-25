import 'package:flutter/material.dart';

import 'package:world_picker/world_picker.dart';

/// Configuration options for the WorldPicker widget.
///
/// This class provides customization options for how the country picker
/// displays information and behaves.
class WorldPickerOptions {
  /// Whether to show the ISO country code (e.g., 'US', 'BR').
  final bool showIsoCode;

  /// Whether to show the currency code (e.g., 'USD', 'EUR').
  final bool showCurrencyCode;

  /// Whether to show the international dial code (e.g., '+1', '+55').
  final bool showDialCode;

  /// Placeholder text for the search input field.
  final String? placeholder;

  /// Custom input decoration for the search field.
  final InputDecoration? inputDecoration;

  /// Creates a new [WorldPickerOptions] instance.
  ///
  /// All display options default to `false` if not specified.
  const WorldPickerOptions({
    this.placeholder,
    this.showIsoCode = false,
    this.showCurrencyCode = false,
    this.inputDecoration,
    this.showDialCode = false,
  });
}

/// A searchable country picker widget.
///
/// This widget displays a list of countries with search functionality,
/// allowing users to filter and select countries. The appearance can
/// be customized using [WorldPickerOptions].
class WorldPicker extends StatefulWidget {
  /// The list of countries to display in the picker.
  final List<Country> countries;

  /// The size of the country flags displayed.
  final double? size;

  /// Callback function called when a country is selected.
  final ValueChanged<Country> onSelect;

  /// Configuration options for the picker display and behavior.
  final WorldPickerOptions options;

  /// Creates a new [WorldPicker] widget.
  ///
  /// [countries] is the list of countries to display.
  /// [size] determines the flag size.
  /// [onSelect] is called when a country is selected.
  /// [options] provides display customization.
  const WorldPicker({
    super.key,
    required this.countries,
    required this.size,
    required this.onSelect,
    this.options = const WorldPickerOptions(),
  });

  @override
  State<WorldPicker> createState() => _WorldPickerState();
}

class _WorldPickerState extends State<WorldPicker> {
  late List<Country> _filteredCountries;

  @override
  void initState() {
    super.initState();
    _filteredCountries = widget.countries;
  }

  void _filterCountries(String value) {
    setState(() {
      _filteredCountries = WorldPickerService.fromCountryName(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: widget.options.inputDecoration ??
                  InputDecoration(
                    labelText: widget.options.placeholder ?? 'Search countries',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.search),
                  ),
              onChanged: _filterCountries,
            ),
          ),
          const Divider(height: 1),
          Expanded(
            child: ListView.separated(
              itemCount: _filteredCountries.length,
              separatorBuilder: (_, __) => Divider(height: 1),
              itemBuilder: (context, index) {
                final country = _filteredCountries[index];
                return InkWell(
                  onTap: () {
                    widget.onSelect(country);
                    Navigator.of(context).pop();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CountryFlag(
                          size: widget.size,
                          country: country,
                        ),
                        const SizedBox(width: 16.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              country.name,
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            if (widget.options.showDialCode)
                              Text(
                                country.dialCode,
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.grey[600],
                                ),
                              ),
                            if (widget.options.showIsoCode)
                              Text(
                                country.isoCode,
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.grey[600],
                                ),
                              ),
                            if (widget.options.showCurrencyCode)
                              Text(
                                country.currencies.first.code,
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.grey[600],
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
