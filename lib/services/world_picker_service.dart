import 'package:world_picker/data/data.dart';

import '../model/model.dart';

/// A comprehensive service for managing and querying world country data.
///
/// This service provides static methods to access country information,
/// search and filter countries by various criteria, and retrieve
/// related geographical and cultural data.
///
/// All methods are optimized with caching for better performance.
/// The country data includes all 195 UN-recognized countries with
/// complete metadata including flags, currencies, languages, and more.
///
/// Example usage:
/// ```dart
/// // Get a specific country
/// Country? brazil = WorldPickerService.fromIsoCode('BR');
///
/// // Search countries
/// List<Country> results = WorldPickerService.fromCountryName('united');
///
/// // Get all countries in a continent
/// List<Country> europeanCountries = WorldPickerService.fromContinentCode('EU');
/// ```
class WorldPickerService {
  /// Internal cached list of countries to avoid repeated data loading.
  /// This improves performance after the first access.
  static List<Country>? _countries;

  /// Gets all countries with caching for improved performance.
  /// Returns a sorted list of all available countries.
  static List<Country> get countries => loadCountries();

  /// Loads and returns all countries from the data source.
  ///
  /// The countries are automatically sorted alphabetically by name.
  /// Results are cached after the first load to improve performance
  /// on subsequent calls.
  ///
  /// Returns a [List<Country>] containing all 195 UN-recognized countries.
  static List<Country> loadCountries() {
    if (_countries != null) return _countries!;

    return allCountries()..sort((a, b) => a.name.compareTo(b.name));
  }

  /// Finds a specific country by its ISO 3166-1 alpha-2 code.
  ///
  /// The search is case-insensitive, so both 'BR' and 'br' will work.
  ///
  /// [isoCode] The 2-letter ISO country code (e.g., 'BR' for Brazil, 'US' for United States).
  ///
  /// Returns the matching [Country] object if found, null otherwise.
  ///
  /// Example:
  /// ```dart
  /// Country? usa = WorldPickerService.fromIsoCode('US');
  /// Country? brazil = WorldPickerService.fromIsoCode('br'); // Case-insensitive
  /// ```
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

  /// Finds countries by a list of ISO codes.
  ///
  /// This method retrieves all countries whose ISO codes match any
  /// of the provided codes, ignoring case.
  /// [isoCodes] A list of ISO 3166-1 alpha-2 codes (e.g., ['BR', 'US']).
  ///
  /// Returns a [List<Country>] containing all matching countries.
  ///
  /// Example:
  /// ```dart
  /// List<Country> selectedCountries = WorldPickerService.fromIsoCodes(['BR', 'US']);
  /// // Returns: Brazil, United States
  /// ```
  static List<Country> fromIsoCodes(List<String> isoCodes) {
    final countries = loadCountries();
    return countries
        .where((country) => isoCodes.contains(country.isoCode.toUpperCase()))
        .toList();
  }

  /// Retrieves all countries within a specific continent.
  ///
  /// The search is case-insensitive and uses continent codes:
  /// - 'AF' for Africa
  /// - 'AS' for Asia
  /// - 'EU' for Europe
  /// - 'NA' for North America
  /// - 'SA' for South America
  /// - 'OC' for Oceania
  /// - 'CA' for Central America
  /// - 'CB' for Caribbean
  ///
  /// [continentCode] The continent code to filter by.
  ///
  /// Returns a [List<Country>] of all countries in the specified continent.
  ///
  /// Example:
  /// ```dart
  /// List<Country> europeanCountries = WorldPickerService.fromContinentCode('EU');
  /// List<Country> asianCountries = WorldPickerService.fromContinentCode('as');
  /// ```
  static List<Country> fromContinentCode(String continentCode) {
    final countries = loadCountries();
    return countries
        .where((country) =>
            country.continent.code.toUpperCase() == continentCode.toUpperCase())
        .toList();
  }

  /// Searches for countries by name using case-insensitive partial matching.
  ///
  /// This method performs a substring search on country names, making it
  /// useful for implementing search functionality with auto-completion.
  ///
  /// [query] The search query string. Can be a partial country name.
  ///
  /// Returns a [List<Country>] of countries whose names contain the query.
  /// If the query is empty, returns all countries.
  ///
  /// Example:
  /// ```dart
  /// List<Country> results = WorldPickerService.fromCountryName('united');
  /// // Returns: United States, United Kingdom, United Arab Emirates
  ///
  /// List<Country> allCountries = WorldPickerService.fromCountryName('');
  /// // Returns: All countries
  /// ```
  static List<Country> fromCountryName(String query) {
    if (query.isEmpty) return loadCountries();

    final countries = loadCountries();
    final lowercaseQuery = query.toLowerCase();

    return countries
        .where((country) => country.name.toLowerCase().contains(lowercaseQuery))
        .toList();
  }

  /// Retrieves all unique continents from the countries dataset.
  ///
  /// This method extracts and deduplicates all continent information
  /// from the country data, useful for creating continent filters
  /// or geographical categorization.
  ///
  /// Returns a [List<Continent>] of all unique continents.
  ///
  /// Example:
  /// ```dart
  /// List<Continent> allContinents = WorldPickerService.continents();
  /// // Returns: Africa, Asia, Europe, North America, etc.
  /// ```
  static List<Continent> continents() {
    final countries = loadCountries();
    final continentMap = <String, Continent>{};

    for (final country in countries) {
      continentMap[country.continent.code] = country.continent;
    }

    return continentMap.values.toList();
  }

  /// Retrieves all unique languages from the countries dataset.
  ///
  /// This method extracts and deduplicates all language information
  /// from all countries, useful for language-based filtering or
  /// linguistic analysis.
  ///
  /// Returns a [List<Language>] of all unique languages found across all countries.
  ///
  /// Example:
  /// ```dart
  /// List<Language> allLanguages = WorldPickerService.languages();
  /// // Returns: English, Spanish, French, Arabic, etc.
  /// ```
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

  /// Retrieves all unique currencies from the countries dataset.
  ///
  /// This method extracts and deduplicates all currency information
  /// from all countries, useful for financial applications or
  /// currency-based filtering.
  ///
  /// Returns a [List<Currency>] of all unique currencies found across all countries.
  ///
  /// Example:
  /// ```dart
  /// List<Currency> allCurrencies = WorldPickerService.currencies();
  /// // Returns: USD, EUR, GBP, JPY, etc.
  /// ```
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
