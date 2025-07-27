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

  /// Lista de isoCodes dos países favoritos.
  final List<String> favoriteCountries;

  /// Creates a new [WorldPickerOptions] instance.
  ///
  /// All display options default to `false` if not specified.
  const WorldPickerOptions({
    this.placeholder,
    this.showIsoCode = false,
    this.showCurrencyCode = false,
    this.inputDecoration,
    this.showDialCode = false,
    this.favoriteCountries = const [],
  });
}

/// A searchable country picker widget.
///
/// This widget displays a list of countries with search functionality,
/// allowing users to filter and select countries. The appearance can
/// be customized using [WorldPickerOptions].
class WorldPicker extends StatefulWidget {
  /// Controlador de rolagem para integração com DraggableScrollableSheet.
  final ScrollController? scrollController;

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
  /// [favoriteCountries] lista de isoCodes dos países favoritos.
  /// [size] determines the flag size.
  /// [onSelect] is called when a country is selected.
  /// [options] provides display customization.
  const WorldPicker({
    super.key,
    required this.countries,
    required this.size,
    required this.onSelect,
    this.options = const WorldPickerOptions(),
    this.scrollController,
  });

  @override
  State<WorldPicker> createState() => _WorldPickerState();
}

class _WorldPickerState extends State<WorldPicker> {
  late List<Country> _favoriteCountries;
  late List<Country> _othersCountries;

  @override
  void initState() {
    super.initState();
    _sortCountries(widget.countries);
  }

  void _filterCountries(String value) {
    final filtered = value.isEmpty
        ? widget.countries
        : WorldPickerService.fromCountryName(value)
            .where((c) => widget.countries.contains(c))
            .toList();

    setState(() {
      _sortCountries(filtered);
    });
  }

  List<Country> _sortCountries(List<Country> countries) {
    _favoriteCountries =
        WorldPickerService.fromIsoCodes(widget.options.favoriteCountries)
            .where((c) => countries.contains(c))
            .toList();

    _othersCountries = countries
        .where((c) =>
            !widget.options.favoriteCountries.contains(c.isoCode.toUpperCase()))
        .toList();

    return [..._favoriteCountries, ..._othersCountries];
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
            child: Builder(
              builder: (context) {
                final List<Widget> children = [];
                if (_favoriteCountries.isNotEmpty) {
                  children.addAll(_favoriteCountries
                      .map((country) => _buildCountryTile(country)));
                }

                if (_favoriteCountries.isNotEmpty &&
                    _othersCountries.isNotEmpty) {
                  children.add(
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey[400],
                      ),
                    ),
                  );
                }

                if (_othersCountries.isNotEmpty) {
                  children.addAll(_othersCountries
                      .map((country) => _buildCountryTile(country)));
                }

                return ListView(
                  controller: widget.scrollController,
                  children: children,
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCountryTile(Country country) {
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
  }
}
