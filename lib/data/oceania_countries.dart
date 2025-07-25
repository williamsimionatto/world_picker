import 'package:world_picker/world_picker.dart';

List<Country> oceaniaCountries() {
  final Continent continent = Continent(
    code: 'OC',
    name: 'Oceania',
  );

  return [
    Country(
      isoCode: 'AU',
      name: 'Australia',
      continent: continent,
      languages: [Language(code: 'en', name: 'English', nativeName: 'English')],
      currencies: [
        Currency(code: 'AUD', name: 'Australian Dollar', symbol: '\$')
      ],
      dialCode: '+61',
      phonePattern: r'^\+61\d{9}$',
      zipCodePattern: r'^\d{4}$',
      timezones: ['Australia/Sydney'],
      flagAssetPath: 'packages/world_picker/assets/flags/AU.svg',
    ),
    Country(
      isoCode: 'NZ',
      name: 'New Zealand',
      continent: continent,
      languages: [
        Language(code: 'en', name: 'English', nativeName: 'English'),
        Language(code: 'mi', name: 'Maori', nativeName: 'Māori')
      ],
      currencies: [
        Currency(code: 'NZD', name: 'New Zealand Dollar', symbol: '\$')
      ],
      dialCode: '+64',
      phonePattern: r'^\+64\d{9}$',
      zipCodePattern: r'^\d{4}$',
      timezones: ['Pacific/Auckland'],
      flagAssetPath: 'packages/world_picker/assets/flags/NZ.svg',
    ),
    Country(
      isoCode: 'FJ',
      name: 'Fiji',
      continent: continent,
      languages: [
        Language(code: 'en', name: 'English', nativeName: 'English'),
        Language(code: 'fj', name: 'Fijian', nativeName: 'Vosa Vakaviti'),
        Language(code: 'hi', name: 'Hindi', nativeName: 'हिन्दी')
      ],
      currencies: [
        Currency(code: 'FJD', name: 'Fijian Dollar', symbol: 'FJ\u000024')
      ],
      dialCode: '+679',
      phonePattern: r'^\+679\d{7}$',
      zipCodePattern: r'^$',
      timezones: ['Pacific/Fiji'],
      flagAssetPath: 'packages/world_picker/assets/flags/FJ.svg',
    ),
    Country(
      isoCode: 'PG',
      name: 'Papua New Guinea',
      continent: continent,
      languages: [
        Language(code: 'en', name: 'English', nativeName: 'English'),
        Language(code: 'ho', name: 'Hiri Motu', nativeName: 'Hiri Motu'),
        Language(code: 'me', name: 'Motu', nativeName: 'Motu'),
        Language(code: 'tpi', name: 'Tok Pisin', nativeName: 'Tok Pisin')
      ],
      currencies: [Currency(code: 'PGK', name: 'Kina', symbol: 'K')],
      dialCode: '+675',
      phonePattern: r'^\+675\d{7}$',
      zipCodePattern: r'^$',
      timezones: ['Pacific/Port_Moresby'],
      flagAssetPath: 'packages/world_picker/assets/flags/PG.svg',
    ),
    Country(
      isoCode: 'SB',
      name: 'Solomon Islands',
      continent: continent,
      languages: [Language(code: 'en', name: 'English', nativeName: 'English')],
      currencies: [
        Currency(
            code: 'SBD', name: 'Solomon Islands Dollar', symbol: 'SI\u000024')
      ],
      dialCode: '+677',
      phonePattern: r'^\+677\d{7}$',
      zipCodePattern: r'^$',
      timezones: ['Pacific/Guadalcanal'],
      flagAssetPath: 'packages/world_picker/assets/flags/SB.svg',
    ),
    Country(
      isoCode: 'VU',
      name: 'Vanuatu',
      continent: continent,
      languages: [
        Language(code: 'bi', name: 'Bislama', nativeName: 'Bislama'),
        Language(code: 'en', name: 'English', nativeName: 'English'),
        Language(code: 'fr', name: 'French', nativeName: 'Français')
      ],
      currencies: [Currency(code: 'VUV', name: 'Vatu', symbol: 'Vt')],
      dialCode: '+678',
      phonePattern: r'^\+678\d{5}$',
      zipCodePattern: r'^$',
      timezones: ['Pacific/Efate'],
      flagAssetPath: 'packages/world_picker/assets/flags/VU.svg',
    ),
    Country(
      isoCode: 'TO',
      name: 'Tonga',
      continent: continent,
      languages: [
        Language(code: 'en', name: 'English', nativeName: 'English'),
        Language(code: 'to', name: 'Tongan', nativeName: 'Faka Tonga')
      ],
      currencies: [Currency(code: 'TOP', name: 'Paʻanga', symbol: 'T\u000024')],
      dialCode: '+676',
      phonePattern: r'^\+676\d{5}$',
      zipCodePattern: r'^$',
      timezones: ['Pacific/Tongatapu'],
      flagAssetPath: 'packages/world_picker/assets/flags/TO.svg',
    ),
    Country(
      isoCode: 'WS',
      name: 'Samoa',
      continent: continent,
      languages: [
        Language(code: 'en', name: 'English', nativeName: 'English'),
        Language(code: 'sm', name: 'Samoan', nativeName: 'Gagana Samoa')
      ],
      currencies: [Currency(code: 'WST', name: 'Tala', symbol: 'WS\u000024')],
      dialCode: '+685',
      phonePattern: r'^\+685\d{5}$',
      zipCodePattern: r'^$',
      timezones: ['Pacific/Apia'],
      flagAssetPath: 'packages/world_picker/assets/flags/WS.svg',
    ),
    Country(
      isoCode: 'KI',
      name: 'Kiribati',
      continent: continent,
      languages: [
        Language(code: 'en', name: 'English', nativeName: 'English'),
        Language(code: 'gil', name: 'Gilbertese', nativeName: 'Kiribati')
      ],
      currencies: [
        Currency(code: 'AUD', name: 'Australian Dollar', symbol: '\u000024')
      ],
      dialCode: '+686',
      phonePattern: r'^\+686\d{5}$',
      zipCodePattern: r'^$',
      timezones: ['Pacific/Tarawa'],
      flagAssetPath: 'packages/world_picker/assets/flags/KI.svg',
    ),
    Country(
      isoCode: 'NR',
      name: 'Nauru',
      continent: continent,
      languages: [
        Language(code: 'en', name: 'English', nativeName: 'English'),
        Language(code: 'na', name: 'Nauruan', nativeName: 'Dorerin Naoero')
      ],
      currencies: [
        Currency(code: 'AUD', name: 'Australian Dollar', symbol: '\u000024')
      ],
      dialCode: '+674',
      phonePattern: r'^\+674\d{4}$',
      zipCodePattern: r'^$',
      timezones: ['Pacific/Nauru'],
      flagAssetPath: 'packages/world_picker/assets/flags/NR.svg',
    ),
    Country(
      isoCode: 'TV',
      name: 'Tuvalu',
      continent: continent,
      languages: [
        Language(code: 'en', name: 'English', nativeName: 'English'),
        Language(code: 'tvl', name: 'Tuvaluan', nativeName: 'Tuvaluan')
      ],
      currencies: [
        Currency(code: 'AUD', name: 'Australian Dollar', symbol: '\u000024')
      ],
      dialCode: '+688',
      phonePattern: r'^\+688\d{5}$',
      zipCodePattern: r'^$',
      timezones: ['Pacific/Funafuti'],
      flagAssetPath: 'packages/world_picker/assets/flags/TV.svg',
    ),
    Country(
      isoCode: 'FM',
      name: 'Micronesia',
      continent: continent,
      languages: [Language(code: 'en', name: 'English', nativeName: 'English')],
      currencies: [
        Currency(code: 'USD', name: 'US Dollar', symbol: '\u000024')
      ],
      dialCode: '+691',
      phonePattern: r'^\+691\d{7}$',
      zipCodePattern: r'^$',
      timezones: ['Pacific/Chuuk'],
      flagAssetPath: 'packages/world_picker/assets/flags/FM.svg',
    ),
    Country(
      isoCode: 'MH',
      name: 'Marshall Islands',
      continent: continent,
      languages: [
        Language(code: 'en', name: 'English', nativeName: 'English'),
        Language(code: 'mh', name: 'Marshallese', nativeName: 'Kajin M̧ajeļ')
      ],
      currencies: [
        Currency(code: 'USD', name: 'US Dollar', symbol: '\u000024')
      ],
      dialCode: '+692',
      phonePattern: r'^\+692\d{7}$',
      zipCodePattern: r'^$',
      timezones: ['Pacific/Majuro'],
      flagAssetPath: 'packages/world_picker/assets/flags/MH.svg',
    ),
    Country(
      isoCode: 'PW',
      name: 'Palau',
      continent: continent,
      languages: [
        Language(code: 'en', name: 'English', nativeName: 'English'),
        Language(code: 'pau', name: 'Palauan', nativeName: 'a tekoi ra Belau')
      ],
      currencies: [
        Currency(code: 'USD', name: 'US Dollar', symbol: '\u000024')
      ],
      dialCode: '+680',
      phonePattern: r'^\+680\d{7}$',
      zipCodePattern: r'^$',
      timezones: ['Pacific/Palau'],
      flagAssetPath: 'packages/world_picker/assets/flags/PW.svg',
    ),
  ];
}
