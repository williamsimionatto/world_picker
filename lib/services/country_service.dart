import 'dart:convert';
import 'package:flutter/services.dart';
import '../model/country_model.dart';

/// Service responsible for loading and managing country data.
class CountryService {
  static const String _countriesJsonPath =
      'packages/world_picker/assets/data/countries.json';

  /// Cached list of countries to avoid repeated file reads.
  static List<Country>? _cachedCountries;

  /// Loads all countries from the JSON asset file.
  ///
  /// Returns a list of [Country] objects parsed from the JSON data.
  /// The result is cached after the first load for better performance.
  static Future<List<Country>> loadCountries() async {
    if (_cachedCountries != null) {
      return _cachedCountries!;
    }

    try {
      // Verifica se o arquivo existe e não está vazio
      final String jsonString = await rootBundle.loadString(_countriesJsonPath);

      if (jsonString.isEmpty) {
        throw Exception(
            'Countries JSON file is empty at path: $_countriesJsonPath');
      }

      final List<dynamic> jsonList = json.decode(jsonString);

      if (jsonList.isEmpty) {
        throw Exception('Countries JSON file contains an empty array');
      }

      _cachedCountries = jsonList
          .map((json) => Country.fromJson(json as Map<String, dynamic>))
          .toList();

      return _cachedCountries!;
    } on FormatException catch (e) {
      throw Exception('Invalid JSON format in countries file: $e');
    } on Exception catch (e) {
      if (e.toString().contains('Unable to load asset')) {
        throw Exception('Asset file not found: $_countriesJsonPath. '
            'Make sure the file exists and is properly declared in pubspec.yaml. '
            'Original error: $e');
      }
      rethrow;
    } catch (e) {
      throw Exception(
          'Failed to load countries data from $_countriesJsonPath: $e');
    }
  }

  /// Finds a country by its ISO code.
  ///
  /// [isoCode] - The 2-letter ISO country code (e.g., 'BR', 'US').
  /// Returns the [Country] if found, null otherwise.
  static Future<Country?> fromIsoCode(String isoCode) async {
    final countries = await loadCountries();
    try {
      return countries.firstWhere(
        (country) => country.isoCode.toUpperCase() == isoCode.toUpperCase(),
      );
    } catch (e) {
      return null;
    }
  }

  /// Finds countries by region code.
  ///
  /// [regionCode] - The region code (e.g., 'SA', 'EU', 'AS').
  /// Returns a list of countries in the specified region.
  static Future<List<Country>> fromRegionCode(String regionCode) async {
    final countries = await loadCountries();
    return countries
        .where((country) =>
            country.region.code.toUpperCase() == regionCode.toUpperCase())
        .toList();
  }

  /// Searches countries by name (case-insensitive partial match).
  ///
  /// [query] - The search query string.
  /// Returns a list of countries whose names contain the query string.
  static Future<List<Country>> fromCountryName(String query) async {
    if (query.isEmpty) return [];

    final countries = await loadCountries();
    final lowercaseQuery = query.toLowerCase();

    return countries
        .where((country) => country.name.toLowerCase().contains(lowercaseQuery))
        .toList();
  }

  /// Gets all unique regions from the countries data.
  ///
  /// Returns a list of unique [Region] objects.
  static Future<List<Region>> regions() async {
    final countries = await loadCountries();
    final regionMap = <String, Region>{};

    for (final country in countries) {
      regionMap[country.region.code] = country.region;
    }

    return regionMap.values.toList();
  }

  /// Gets all unique languages from the countries data.
  ///
  /// Returns a list of unique [Language] objects.
  static Future<List<Language>> languages() async {
    final countries = await loadCountries();
    final languageMap = <String, Language>{};

    for (final country in countries) {
      for (final language in country.languages) {
        languageMap[language.code] = language;
      }
    }

    return languageMap.values.toList();
  }

  /// Gets all unique currencies from the countries data.
  ///
  /// Returns a list of unique [Currency] objects.
  static Future<List<Currency>> currencies() async {
    final countries = await loadCountries();
    final currencyMap = <String, Currency>{};

    for (final country in countries) {
      for (final currency in country.currencies) {
        currencyMap[currency.code] = currency;
      }
    }

    return currencyMap.values.toList();
  }

  /// Clears the cached countries data.
  ///
  /// This will force the next call to [loadCountries] to reload from the asset file.
  static void clearCache() {
    _cachedCountries = null;
  }

  /// Gets the total count of countries.
  static Future<int> countriesCount() async {
    final countries = await loadCountries();
    return countries.length;
  }

  /// Finds countries that use a specific currency.
  ///
  /// [currencyCode] - The 3-letter currency code (e.g., 'USD', 'EUR').
  /// Returns a list of countries that use the specified currency.
  static Future<List<Country>> fromCurrency(String currencyCode) async {
    final countries = await loadCountries();
    return countries
        .where((country) => country.currencies.any((currency) =>
            currency.code.toUpperCase() == currencyCode.toUpperCase()))
        .toList();
  }

  /// Finds countries that speak a specific language.
  ///
  /// [languageCode] - The language code (e.g., 'en', 'es', 'pt').
  /// Returns a list of countries that have the specified language.
  static Future<List<Country>> fromLanguage(String languageCode) async {
    final countries = await loadCountries();
    return countries
        .where((country) => country.languages.any((language) =>
            language.code.toLowerCase().startsWith(languageCode.toLowerCase())))
        .toList();
  }
}
