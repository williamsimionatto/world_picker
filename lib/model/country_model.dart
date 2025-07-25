/// Represents a geographical region of a country.
class Region {
  /// The region code (e.g., 'SA' for South America).
  final String code;

  /// The name of the region (e.g., 'South America').
  final String name;

  Region({
    required this.code,
    required this.name,
  });
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
}

/// Represents a country with its details.
class Country {
  /// The name of the country (e.g., 'Brazil').
  final String name;

  /// The ISO 3166-1 alpha-2 country code (e.g., 'BR').
  final String isoCode;

  /// The region where the country is located.
  final Region region;

  /// The list of languages spoken in the country.
  final List<Language> languages;

  /// The list of currencies used in the country.
  final List<Currency> currencies;

  /// The international dialing code (e.g., '+55').
  final String dialCode;

  /// The phone number pattern for the country.
  final String phonePattern;

  /// The zip code pattern for the country.
  final String zipCodePattern;

  /// The list of timezones in the country.
  final List<String> timezones;

  /// The asset path for the country's flag image.
  final String flagAssetPath;

  Country({
    required this.isoCode,
    required this.name,
    required this.region,
    required this.languages,
    required this.currencies,
    required this.dialCode,
    required this.phonePattern,
    required this.zipCodePattern,
    required this.timezones,
    required this.flagAssetPath,
  });
}
