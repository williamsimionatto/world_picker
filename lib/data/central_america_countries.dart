import 'package:world_picker/world_picker.dart';

List<Country> centralAmericaCountries() {
  final Continent continent = Continent(
    code: 'CA',
    name: 'Central America',
  );

  return [
    Country(
      isoCode: 'AG',
      name: 'Antigua and Barbuda',
      continent: continent,
      languages: [Language(code: 'en', name: 'English', nativeName: 'English')],
      currencies: [
        Currency(
            code: 'XCD', name: 'East Caribbean Dollar', symbol: 'EC\u000024')
      ],
      dialCode: '+1-268',
      phonePattern: r'^\+1-268\d{7}$',
      zipCodePattern: r'^$',
      timezones: ['America/Antigua'],
      flagAssetPath: 'packages/world_picker/assets/flags/AG.svg',
    ),
    Country(
      isoCode: 'BS',
      name: 'Bahamas',
      continent: continent,
      languages: [Language(code: 'en', name: 'English', nativeName: 'English')],
      currencies: [
        Currency(code: 'BSD', name: 'Bahamian Dollar', symbol: '\u000024')
      ],
      dialCode: '+1-242',
      phonePattern: r'^\+1-242\d{7}$',
      zipCodePattern: r'^$',
      timezones: ['America/Nassau'],
      flagAssetPath: 'packages/world_picker/assets/flags/BS.svg',
    ),
    Country(
      isoCode: 'BB',
      name: 'Barbados',
      continent: continent,
      languages: [Language(code: 'en', name: 'English', nativeName: 'English')],
      currencies: [
        Currency(code: 'BBD', name: 'Barbadian Dollar', symbol: 'Bds\u000024')
      ],
      dialCode: '+1-246',
      phonePattern: r'^\+1-246\d{7}$',
      zipCodePattern: r'^$',
      timezones: ['America/Barbados'],
      flagAssetPath: 'packages/world_picker/assets/flags/BB.svg',
    ),
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
      isoCode: 'DM',
      name: 'Dominica',
      continent: continent,
      languages: [Language(code: 'en', name: 'English', nativeName: 'English')],
      currencies: [
        Currency(
            code: 'XCD', name: 'East Caribbean Dollar', symbol: 'EC\u000024')
      ],
      dialCode: '+1-767',
      phonePattern: r'^\+1-767\d{7}$',
      zipCodePattern: r'^$',
      timezones: ['America/Dominica'],
      flagAssetPath: 'packages/world_picker/assets/flags/DM.svg',
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
      isoCode: 'GD',
      name: 'Grenada',
      continent: continent,
      languages: [Language(code: 'en', name: 'English', nativeName: 'English')],
      currencies: [
        Currency(
            code: 'XCD', name: 'East Caribbean Dollar', symbol: 'EC\u000024')
      ],
      dialCode: '+1-473',
      phonePattern: r'^\+1-473\d{7}$',
      zipCodePattern: r'^$',
      timezones: ['America/Grenada'],
      flagAssetPath: 'packages/world_picker/assets/flags/GD.svg',
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
    Country(
      isoCode: 'LC',
      name: 'Saint Lucia',
      continent: continent,
      languages: [Language(code: 'en', name: 'English', nativeName: 'English')],
      currencies: [
        Currency(
            code: 'XCD', name: 'East Caribbean Dollar', symbol: 'EC\u000024')
      ],
      dialCode: '+1-758',
      phonePattern: r'^\+1-758\d{7}$',
      zipCodePattern: r'^$',
      timezones: ['America/St_Lucia'],
      flagAssetPath: 'packages/world_picker/assets/flags/LC.svg',
    ),
    Country(
      isoCode: 'VC',
      name: 'Saint Vincent and the Grenadines',
      continent: continent,
      languages: [Language(code: 'en', name: 'English', nativeName: 'English')],
      currencies: [
        Currency(
            code: 'XCD', name: 'East Caribbean Dollar', symbol: 'EC\u000024')
      ],
      dialCode: '+1-784',
      phonePattern: r'^\+1-784\d{7}$',
      zipCodePattern: r'^$',
      timezones: ['America/St_Vincent'],
      flagAssetPath: 'packages/world_picker/assets/flags/VC.svg',
    ),
    Country(
      isoCode: 'KN',
      name: 'Saint Kitts and Nevis',
      continent: continent,
      languages: [Language(code: 'en', name: 'English', nativeName: 'English')],
      currencies: [
        Currency(
            code: 'XCD', name: 'East Caribbean Dollar', symbol: 'EC\u000024')
      ],
      dialCode: '+1-869',
      phonePattern: r'^\+1-869\d{7}$',
      zipCodePattern: r'^$',
      timezones: ['America/St_Kitts'],
      flagAssetPath: 'packages/world_picker/assets/flags/KN.svg',
    ),
    Country(
      isoCode: 'TT',
      name: 'Trinidad and Tobago',
      continent: continent,
      languages: [Language(code: 'en', name: 'English', nativeName: 'English')],
      currencies: [
        Currency(
            code: 'TTD',
            name: 'Trinidad and Tobago Dollar',
            symbol: 'TT\u000024')
      ],
      dialCode: '+1-868',
      phonePattern: r'^\+1-868\d{7}$',
      zipCodePattern: r'^$',
      timezones: ['America/Port_of_Spain'],
      flagAssetPath: 'packages/world_picker/assets/flags/TT.svg',
    ),
  ];
}
