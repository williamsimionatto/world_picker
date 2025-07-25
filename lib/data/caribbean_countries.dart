import 'package:world_picker/world_picker.dart';

List<Country> caribbeanCountries() {
  final Continent continent = Continent(
    code: 'CB',
    name: 'Caribbean',
  );

  return [
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
  ];
}
