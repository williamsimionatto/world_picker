/// Represents a geographical continent.
class Continent {
  /// The continent code (e.g., 'SA' for South America).
  final String code;

  /// The name of the continent (e.g., 'South America').
  final String name;

  Continent({
    required this.code,
    required this.name,
  });

  /// Creates a Continent instance from a JSON map.
  factory Continent.fromJson(Map<String, dynamic> json) {
    return Continent(
      code: json['code'] as String,
      name: json['name'] as String,
    );
  }

  /// Converts the Region instance to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'name': name,
    };
  }

  @override
  String toString() => 'Region(code: $code, name: $name)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Continent && other.code == code && other.name == name;
  }

  @override
  int get hashCode => code.hashCode ^ name.hashCode;
}

/// Represents a language spoken in a country.
class Language {
  /// The language code (e.g., 'pt' for Portuguese).
  final String code;

  /// The native name of the language (e.g., 'Português').
  final String nativeName;

  /// The English name of the language (e.g., 'Portuguese').
  final String name;

  Language({
    required this.code,
    required this.name,
    required this.nativeName,
  });

  /// Creates a Language instance from a JSON map.
  factory Language.fromJson(Map<String, dynamic> json) {
    return Language(
      code: json['code'] as String,
      name: json['name'] as String,
      nativeName: json['nativeName'] as String,
    );
  }

  /// Converts the Language instance to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'name': name,
      'nativeName': nativeName,
    };
  }

  @override
  String toString() =>
      'Language(code: $code, name: $name, nativeName: $nativeName)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Language &&
        other.code == code &&
        other.name == name &&
        other.nativeName == nativeName;
  }

  @override
  int get hashCode => code.hashCode ^ name.hashCode ^ nativeName.hashCode;
}

/// Represents a currency used in a country.
class Currency {
  /// The currency code (e.g., 'BRL' for Brazilian Real).
  final String code;

  /// The name of the currency (e.g., 'Brazilian Real').
  final String name;

  /// The symbol of the currency (e.g., 'R$').
  final String symbol;

  Currency({
    required this.code,
    required this.name,
    required this.symbol,
  });

  /// Creates a Currency instance from a JSON map.
  factory Currency.fromJson(Map<String, dynamic> json) {
    return Currency(
      code: json['code'] as String,
      name: json['name'] as String,
      symbol: json['symbol'] as String,
    );
  }

  /// Converts the Currency instance to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'name': name,
      'symbol': symbol,
    };
  }

  @override
  String toString() => 'Currency(code: $code, name: $name, symbol: $symbol)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Currency &&
        other.code == code &&
        other.name == name &&
        other.symbol == symbol;
  }

  @override
  int get hashCode => code.hashCode ^ name.hashCode ^ symbol.hashCode;
}

/// Represents a country with comprehensive metadata and information.
///
/// This class contains all relevant information about a country including
/// its geographical location, languages, currencies, contact information,
/// and administrative details.
///
/// Example usage:
/// ```dart
/// Country brazil = Country(
///   name: 'Brazil',
///   isoCode: 'BR',
///   continent: southAmerica,
///   languages: [portuguese],
///   currencies: [real],
///   dialCode: '+55',
///   // ... other properties
/// );
/// ```
class Country {
  /// The official name of the country (e.g., 'Brazil', 'United States').
  final String name;

  /// The ISO 3166-1 alpha-2 country code (e.g., 'BR', 'US').
  /// This is a standardized two-letter code used internationally.
  final String isoCode;

  /// The continent where the country is geographically located.
  final Continent continent;

  /// The list of official languages spoken in the country.
  /// Multiple languages indicate multilingual countries.
  final List<Language> languages;

  /// The list of official currencies used in the country.
  /// Some countries may have multiple currencies.
  final List<Currency> currencies;

  /// The international dialing code used for phone calls (e.g., '+55', '+1').
  /// Also known as country calling code.
  final String dialCode;

  /// A regex pattern for validating phone numbers in this country.
  /// Used for input validation and formatting.
  final String phonePattern;

  /// A regex pattern for validating postal/ZIP codes in this country.
  /// Empty string indicates no standardized postal code system.
  final String zipCodePattern;

  /// The list of IANA timezone identifiers used in the country.
  /// Countries spanning multiple time zones will have multiple entries.
  final List<String> timezones;

  /// The asset path to the country's flag image (SVG format).
  /// Used for displaying the flag in the UI.
  final String flagAssetPath;

  /// Creates a new [Country] instance.
  ///
  /// All parameters except [timezones] are required. The [timezones] parameter
  /// defaults to an empty list if not provided.
  Country({
    required this.isoCode,
    required this.name,
    required this.continent,
    required this.languages,
    required this.currencies,
    required this.dialCode,
    required this.phonePattern,
    required this.zipCodePattern,
    this.timezones = const [],
    required this.flagAssetPath,
  });

  /// Returns the primary language (first in the list) or null if none exist.
  ///
  /// This is useful when you need a single language to represent the country,
  /// typically the most widely spoken or official language.
  Language? get primaryLanguage =>
      languages.isNotEmpty ? languages.first : null;

  /// Returns the primary currency (first in the list) or null if none exist.
  ///
  /// This is useful when you need a single currency to represent the country,
  /// typically the main or most commonly used currency.
  Currency? get primaryCurrency =>
      currencies.isNotEmpty ? currencies.first : null;

  @override
  String toString() {
    return 'Country(name: $name, isoCode: $isoCode, continent: ${continent.name})';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Country && other.isoCode == isoCode;
  }

  @override
  int get hashCode => isoCode.hashCode;
}
