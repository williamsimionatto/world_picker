import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:world_picker/world_picker.dart';

class WorldPickerOptions {
  final bool showIsoCode;
  final bool showCurrencyCode;
  final String? placeholder;

  const WorldPickerOptions({
    this.placeholder,
    this.showIsoCode = false,
    this.showCurrencyCode = false,
  });
}

class WorldPicker extends StatefulWidget {
  final List<Country> countries;
  final double? size;
  final ValueChanged<Country> onSelect;
  final WorldPickerOptions options;

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
              decoration: InputDecoration(
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
                        ClipOval(
                          child: SizedBox(
                            width: widget.size,
                            height: widget.size,
                            child: SvgPicture.asset(
                              country.flagAssetPath,
                              fit: BoxFit.cover,
                            ),
                          ),
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
