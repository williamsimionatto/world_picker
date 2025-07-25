# 🌍 World Picker

A comprehensive Flutter package for country selection with detailed metadata including flags, currencies, phone codes, zip code formats, languages, and timezones.

[![pub package](https://img.shields.io/pub/v/world_picker.svg)](https://pub.dev/packages/world_picker)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## ✨ Features

- 🏁 **Complete Country Data**: All 195 UN-recognized countries
- 🎌 **High-Quality Flags**: SVG flags for all countries
- 💰 **Currency Information**: Names, codes, and symbols
- 📞 **Phone Codes**: International dialing codes
- 🗣️ **Languages**: Official languages with native names
- ⏰ **Timezones**: Complete timezone information
- 📮 **ZIP Codes**: Postal code formats and patterns
- 🌍 **Regional Organization**: Countries organized by continents
- 🔍 **Search & Filter**: Powerful search functionality
- 🎨 **Customizable UI**: Flexible theming and styling options

## 📦 Installation

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  world_picker: ^1.0.0
```

Then run:

```bash
flutter pub get
```

## Quick Start

```dart
import 'package:flutter/material.dart';
import 'package:world_picker/world_picker.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Country? selectedCountry;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: WorldPickerIcon(
          onSelect: (country) {
            setState(() {
              selectedCountry = country;
            });
          },
          selectedCountry: selectedCountry,
        ),
      ),
    );
  }
}
```

## 📖 API Reference

### WorldPickerIcon

A widget that displays a country selector with flag and customizable display options.

| Property          | Type                    | Description                                                 | Required | Default |
|-------------------|-------------------------|-------------------------------------------------------------|----------|---------|
| `onSelect`        | `Function(Country)`     | Callback function triggered when a country is selected     | ✅       | -       |
| `selectedCountry` | `Country?`              | The currently selected country                              | ❌       | `null`  |
| `showIsoCode`     | `bool`                  | Whether to show the country ISO code                       | ❌       | `true`  |
| `showName`        | `bool`                  | Whether to show the country name                           | ❌       | `false` |
| `showCurrencyCode`| `bool`                  | Whether to show the country currency code                  | ❌       | `false` |
| `showDialCode`    | `bool`                  | Whether to show the country dial code                      | ❌       | `false` |
| `size`            | `double`                | The size of the flag icon                                  | ❌       | `24.0`  |
| `options`         | `WorldPickerOptions?`   | Customization options for the picker dialog               | ❌       | `null`  |

#### Example Usage

```dart
WorldPickerIcon(
  onSelect: (country) {
    print('Selected: ${country.name}');
  },
  selectedCountry: WorldPickerService.fromIsoCode('US'),
  showIsoCode: true,
  showName: true,
  showDialCode: true,
  size: 32.0,
  options: WorldPickerOptions(
    placeholder: 'Search countries...',
    showCurrencyCode: true,
    showDialCode: true,
  ),
)
```

### WorldPickerOptions

Configuration options for customizing the country picker dialog.

| Property          | Type                    | Description                                                 | Default |
|-------------------|-------------------------|-------------------------------------------------------------|---------|
| `placeholder`     | `String?`               | Placeholder text for the search field                      | `'Search...'` |
| `showCurrencyCode`| `bool`                  | Show currency codes in the country list                    | `false` |
| `showIsoCode`     | `bool`                  | Show ISO codes in the country list                         | `true`  |
| `showDialCode`    | `bool`                  | Show dial codes in the country list                        | `false` |
| `inputDecoration` | `InputDecoration?`      | Custom decoration for the search input field               | `null`  |

### Country Model

The `Country` class contains comprehensive information about each country:

```dart
class Country {
  final String name;              // Country name (e.g., "United States")
  final String isoCode;           // ISO 3166-1 alpha-2 code (e.g., "US")
  final Continent continent;      // Continent information
  final List<Language> languages; // Official languages
  final List<Currency> currencies; // Currencies used
  final String dialCode;          // International dialing code (e.g., "+1")
  final String phonePattern;     // Phone number regex pattern
  final String zipCodePattern;   // ZIP/postal code regex pattern
  final List<String> timezones;  // Timezone identifiers
  final String flagAssetPath;    // Path to flag asset
}
```

### WorldPickerService

Utility service for country operations:

```dart
// Get country by ISO code
Country? country = WorldPickerService.fromIsoCode('BR');

// Get all countries
List<Country> allCountries = WorldPickerService.getAllCountries();

// Get countries by continent
List<Country> asianCountries = WorldPickerService.getCountriesByContinent('AS');

// Search countries
List<Country> results = WorldPickerService.searchCountries('united');
```

## 🌍 Supported Countries

This package includes all **195 UN-recognized countries** organized by continents:

- **Africa**: 54 countries
- **Asia**: 49 countries  
- **Europe**: 44 countries
- **North America**: 23 countries
- **Oceania**: 14 countries
- **South America**: 12 countries
- **Caribbean**: 13 countries
- **Central America**: 7 countries

## 🎨 Customization

### Custom Search Input

```dart
WorldPickerIcon(
  onSelect: (country) => {},
  options: WorldPickerOptions(
    placeholder: 'Find your country...',
    inputDecoration: InputDecoration(
      labelText: 'Country Selection',
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      prefixIcon: Icon(Icons.search),
      suffixIcon: Icon(Icons.public),
    ),
  ),
)
```

### Display Customization

```dart
WorldPickerIcon(
  onSelect: (country) => {},
  showIsoCode: true,
  showName: true,
  showDialCode: true,
  showCurrencyCode: false,
  size: 40.0,
)
```

## 📱 Example App

Check out the `/example` directory for a complete implementation showing:

- Country selection with search
- Detailed country information display
- Custom styling and theming
- All available features in action

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request. For major changes, please open an issue first to discuss what you would like to change.

### Development Setup

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- Country data sourced from official UN records
- Flag icons provided as SVG for crisp display at any size
- Timezone data based on IANA Time Zone Database

---

**Made with ❤️ for the Flutter community**
