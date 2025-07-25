import 'package:world_picker/world_picker.dart';

List<Country> centralAmericaCountries() {
  final Continent continent = Continent(
    code: 'CA',
    name: 'Central America',
  );

  return [
    Country(
      isoCode: 'BZ',
      name: 'Belize',
      continent: continent,
      languages: [Language(code: 'en', name: 'English', nativeName: 'English')],
      currencies: [
        Currency(code: 'BZD', name: 'Belize Dollar', symbol: 'BZ\u000024')
      ],
      dialCode: '+501',
      phonePattern: r'^\+501\d{7}$',
      zipCodePattern: r'^$',
      timezones: ['America/Belize'],
      flagAssetPath: 'packages/world_picker/assets/flags/BZ.svg',
    ),
    Country(
      isoCode: 'CR',
      name: 'Costa Rica',
      continent: continent,
      languages: [Language(code: 'es', name: 'Spanish', nativeName: 'Español')],
      currencies: [
        Currency(code: 'CRC', name: 'Costa Rican Colón', symbol: '₡')
      ],
      dialCode: '+506',
      phonePattern: r'^\+506\d{8}$',
      zipCodePattern: r'^\d{5}$',
      timezones: ['America/Costa_Rica'],
      flagAssetPath: 'packages/world_picker/assets/flags/CR.svg',
    ),
    Country(
      isoCode: 'SV',
      name: 'El Salvador',
      continent: continent,
      languages: [Language(code: 'es', name: 'Spanish', nativeName: 'Español')],
      currencies: [
        Currency(code: 'USD', name: 'US Dollar', symbol: '\u000024')
      ],
      dialCode: '+503',
      phonePattern: r'^\+503\d{8}$',
      zipCodePattern: r'^$',
      timezones: ['America/El_Salvador'],
      flagAssetPath: 'packages/world_picker/assets/flags/SV.svg',
    ),
    Country(
      isoCode: 'GT',
      name: 'Guatemala',
      continent: continent,
      languages: [Language(code: 'es', name: 'Spanish', nativeName: 'Español')],
      currencies: [Currency(code: 'GTQ', name: 'Quetzal', symbol: 'Q')],
      dialCode: '+502',
      phonePattern: r'^\+502\d{8}$',
      zipCodePattern: r'^\d{5}$',
      timezones: ['America/Guatemala'],
      flagAssetPath: 'packages/world_picker/assets/flags/GT.svg',
    ),
    Country(
      isoCode: 'HN',
      name: 'Honduras',
      continent: continent,
      languages: [Language(code: 'es', name: 'Spanish', nativeName: 'Español')],
      currencies: [Currency(code: 'HNL', name: 'Lempira', symbol: 'L')],
      dialCode: '+504',
      phonePattern: r'^\+504\d{8}$',
      zipCodePattern: r'^$',
      timezones: ['America/Tegucigalpa'],
      flagAssetPath: 'packages/world_picker/assets/flags/HN.svg',
    ),
    Country(
      isoCode: 'NI',
      name: 'Nicaragua',
      continent: continent,
      languages: [Language(code: 'es', name: 'Spanish', nativeName: 'Español')],
      currencies: [Currency(code: 'NIO', name: 'Córdoba', symbol: 'C\u000024')],
      dialCode: '+505',
      phonePattern: r'^\+505\d{8}$',
      zipCodePattern: r'^$',
      timezones: ['America/Managua'],
      flagAssetPath: 'packages/world_picker/assets/flags/NI.svg',
    ),
    Country(
      isoCode: 'PA',
      name: 'Panama',
      continent: continent,
      languages: [Language(code: 'es', name: 'Spanish', nativeName: 'Español')],
      currencies: [
        Currency(code: 'PAB', name: 'Balboa', symbol: 'B/.'),
        Currency(code: 'USD', name: 'US Dollar', symbol: '\u000024')
      ],
      dialCode: '+507',
      phonePattern: r'^\+507\d{7}$',
      zipCodePattern: r'^$',
      timezones: ['America/Panama'],
      flagAssetPath: 'packages/world_picker/assets/flags/PA.svg',
    ),
  ];
}
