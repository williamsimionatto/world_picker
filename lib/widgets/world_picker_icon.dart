library world_picker;

import 'package:flutter/material.dart';

import 'package:world_picker/world_picker.dart';

class WorldPickerIcon extends StatefulWidget {
  final ValueChanged<Country> onSelect;
  final Country? selectedCountry;
  final double? size;
  final bool showIsoCode;
  final bool showName;
  final bool showCurrencyCode;

  const WorldPickerIcon({
    super.key,
    required this.onSelect,
    this.selectedCountry,
    this.size,
    this.showIsoCode = false,
    this.showName = false,
    this.showCurrencyCode = false,
  });

  @override
  State<WorldPickerIcon> createState() => _WorldPickerIconState();
}

class _WorldPickerIconState extends State<WorldPickerIcon> {
  late List<Country> _countries;
  bool _isLoading = false;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();

    _countries = WorldPickerService.loadCountries();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: widget.size,
        height: widget.size,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: _isLoading
            ? const Center(child: CircularProgressIndicator())
            : _errorMessage != null
                ? Center(child: Text('Error: $_errorMessage'))
                : widget.selectedCountry != null
                    ? Text('test')
                    : const Icon(Icons.public, size: 24, color: Colors.grey),
      ),
    );
  }
}
