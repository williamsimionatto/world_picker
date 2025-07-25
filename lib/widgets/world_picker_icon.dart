library world_picker;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:world_picker/world_picker.dart';

class WorldPickerIcon extends StatelessWidget {
  final ValueChanged<Country> onSelect;
  final Country? selectedCountry;
  final double? size;
  final bool showIsoCode;
  final bool showName;
  final bool showCurrencyCode;
  final bool showDialCode;
  final String defaultCountryIsoCode;
  final WorldPickerOptions options;

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
      builder: (context) {
        return WorldPicker(
            key: Key('world_picker'),
            countries: WorldPickerService.countries,
            size: size,
            onSelect: onSelect,
            options: options);
      },
    );
  }
}
