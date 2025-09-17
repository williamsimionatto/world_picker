import 'package:flutter/material.dart';

import 'package:world_picker/world_picker.dart';

/// Configuration options for the WorldPicker widget.
///
/// This class provides customization options for how the country picker
/// displays information and behaves.
class CurrencyWorldPickerOptions {
  /// Placeholder text for the search input field.
  final String? placeholder;

  /// Custom input decoration for the search field.
  final InputDecoration? inputDecoration;

  /// Creates a new [CurrencyWorldPickerOptions] instance.
  ///
  /// All display options default to `false` if not specified.
  const CurrencyWorldPickerOptions({
    this.placeholder,
    this.inputDecoration,
  });
}

/// A searchable country picker widget.
///
/// This widget displays a list of countries with search functionality,
/// allowing users to filter and select countries. The appearance can
/// be customized using [WorldPickerOptions].
class CurrencyWorldPicker extends StatefulWidget {
  /// The list of currencies to display in the picker.
  final List<Currency> currencies;

  /// The size of the country flags displayed.
  final double? size;

  /// Callback function called when a currency is selected.
  final ValueChanged<Currency> onSelect;

  /// Configuration options for the picker display and behavior.
  final CurrencyWorldPickerOptions options;

  /// Scroll controller for integration with DraggableScrollableSheet.
  final ScrollController? scrollController;

  /// Creates a new [CurrencyWorldPicker] widget.
  ///
  /// [countries] is the list of countries to display.
  /// [favoriteCountries] list contains ISO codes of countries to show at the top.
  /// [size] determines the flag size.
  /// [onSelect] is called when a country is selected.
  /// [options] provides display customization.
  /// [scrollController] is used for scrolling behavior in a bottom sheet.
  const CurrencyWorldPicker({
    super.key,
    required this.currencies,
    required this.size,
    required this.onSelect,
    this.options = const CurrencyWorldPickerOptions(),
    this.scrollController,
  });

  @override
  State<CurrencyWorldPicker> createState() => _CurrencyWorldPickerState();
}

class _CurrencyWorldPickerState extends State<CurrencyWorldPicker> {
  late List<Currency> _currencies;

  @override
  void initState() {
    super.initState();
    _currencies = widget.currencies;
  }

  void _filterCountries(String value) {
    final filtered = value.isEmpty
        ? widget.currencies
        : WorldPickerService.currencies(
            code: value,
            name: value,
            symbol: value,
          );

    print(filtered);

    setState(() {
      _currencies = filtered;
    });
  }

  @override
  Widget build(BuildContext context) {
    final maxHeight = MediaQuery.of(context).size.height * 0.7;
    return SafeArea(
      child: SizedBox(
        height: maxHeight,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: widget.options.inputDecoration ??
                    InputDecoration(
                      labelText: widget.options.placeholder ?? 'Search',
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

                  if (_currencies.isNotEmpty) {
                    children.addAll(_currencies
                        .map((currency) => _buildCurrencyTile(currency)));
                  }

                  return ListView(
                    controller: widget.scrollController,
                    children: children,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCurrencyTile(Currency currency) {
    return InkWell(
      onTap: () {
        widget.onSelect(currency);
        Navigator.of(context).pop();
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${currency.name} (${currency.code})',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
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
