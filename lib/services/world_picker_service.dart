import 'package:world_picker/data/data.dart';

import '../model/model.dart';

/// Service responsible for loading and managing country data.
class WorldPickerService {
  /// Cached list of countries to avoid repeated file reads.
  static List<Country>? _countries;

  static List<Country> get countries => loadCountries();

  /// Loads all countries from the JSON asset file.
  ///
  /// Returns a list of [Country] objects parsed from the JSON data.
  /// The result is cached after the first load for better performance.
  static List<Country> loadCountries() {
    if (_countries != null) return _countries!;

    return allCountries()..sort((a, b) => a.name.compareTo(b.name));
  }

  /// Finds a country by its ISO code.
  ///
  /// [isoCode] - The 2-letter ISO country code (e.g., 'BR', 'US').
  /// Returns the [Country] if found, null otherwise.
  static Country? fromIsoCode(String isoCode) {
    final countries = loadCountries();
    try {
      return countries.firstWhere(
        (country) => country.isoCode.toUpperCase() == isoCode.toUpperCase(),
      );
    } catch (e) {
      return null;
    }
  }

  /// Finds countries by continent code.
  ///
  /// [continentCode] - The continent code (e.g., 'SA', 'EU', 'AS').
  /// Returns a list of countries in the specified continent.
  static List<Country> fromContinentCode(String continentCode) {
    final countries = loadCountries();
    return countries
        .where((country) =>
            country.continent.code.toUpperCase() == continentCode.toUpperCase())
        .toList();
  }

  /// Searches countries by name (case-insensitive partial match).
  ///
  /// [query] - The search query string.
  /// Returns a list of countries whose names contain the query string.
  static List<Country> fromCountryName(String query) {
    if (query.isEmpty) return loadCountries();

    final countries = loadCountries();
    final lowercaseQuery = query.toLowerCase();

    return countries
        .where((country) => country.name.toLowerCase().contains(lowercaseQuery))
        .toList();
  }

  /// Gets all unique regions from the countries data.
  ///
  /// Returns a list of unique [Continent] objects.
  static List<Continent> continents() {
    final countries = loadCountries();
    final continentMap = <String, Continent>{};

    for (final country in countries) {
      continentMap[country.continent.code] = country.continent;
    }

    return continentMap.values.toList();
  }

  /// Gets all unique languages from the countries data.
  ///
  /// Returns a list of unique [Language] objects.
  static List<Language> languages() {
    final countries = loadCountries();
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
  static List<Currency> currencies() {
    final countries = loadCountries();
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
    _countries = null;
  }

  /// Gets the total count of countries.
  static int countriesCount() {
    final countries = loadCountries();
    return countries.length;
  }

  /// Finds countries that use a specific currency.
  ///
  /// [currencyCode] - The 3-letter currency code (e.g., 'USD', 'EUR').
  /// Returns a list of countries that use the specified currency.
  static List<Country> fromCurrency(String currencyCode) {
    final countries = loadCountries();
    return countries
        .where((country) => country.currencies.any((currency) =>
            currency.code.toUpperCase() == currencyCode.toUpperCase()))
        .toList();
  }

  /// Finds countries that speak a specific language.
  ///
  /// [languageCode] - The language code (e.g., 'en', 'es', 'pt').
  /// Returns a list of countries that have the specified language.
  static List<Country> fromLanguage(String languageCode) {
    final countries = loadCountries();
    return countries
        .where((country) => country.languages.any((language) =>
            language.code.toLowerCase().startsWith(languageCode.toLowerCase())))
        .toList();
  }

  static Country defaultCountry() {
    return fromIsoCode('BR') ??
        Country(
          name: 'Brazil',
          isoCode: 'BR',
          flagAssetPath: 'assets/flags/br.svg',
          continent: Continent(code: 'SA', name: 'South America'),
          languages: [
            Language(code: 'pt', name: 'Portuguese', nativeName: 'Português')
          ],
          currencies: [
            Currency(code: 'BRL', name: 'Brazilian Real', symbol: 'R\$'),
          ],
          dialCode: '+55',
          phonePattern: r'^\+55 \(\d{2}\) \d{4,5}-\d{4}$',
          zipCodePattern: r'^\d{5}-\d{3}$',
          timezones: ['America/Sao_Paulo'],
        );
  }
}
