import 'package:world_picker/world_picker.dart';

List<Country> northAmericaCountries() {
  final Continent continent = Continent(
    code: 'NA',
    name: 'North America',
  );

  return [
    Country(
      isoCode: 'CA',
      name: 'Canada',
      continent: continent,
      languages: [
        Language(code: 'en', name: 'English', nativeName: 'English'),
        Language(code: 'fr', name: 'French', nativeName: 'Français')
      ],
      currencies: [
        Currency(code: 'CAD', name: 'Canadian Dollar', symbol: '\$')
      ],
      dialCode: '+1',
      phonePattern: r'^\+1\d{10}$',
      zipCodePattern: r'^[A-Za-z]\d[A-Za-z] \d[A-Za-z]\d$',
      timezones: ['America/Toronto'],
      flagAssetPath: 'packages/world_picker/assets/flags/CA.svg',
    ),
    Country(
      isoCode: 'US',
      name: 'United States',
      continent: continent,
      languages: [Language(code: 'en', name: 'English', nativeName: 'English')],
      currencies: [Currency(code: 'USD', name: 'US Dollar', symbol: '\$')],
      dialCode: '+1',
      phonePattern: r'^\+1\d{10}$',
      zipCodePattern: r'^\d{5}(-\d{4})?$',
      timezones: ['America/New_York'],
      flagAssetPath: 'packages/world_picker/assets/flags/US.svg',
    ),
    Country(
      isoCode: 'MX',
      name: 'Mexico',
      continent: continent,
      languages: [Language(code: 'es', name: 'Spanish', nativeName: 'Español')],
      currencies: [Currency(code: 'MXN', name: 'Mexican Peso', symbol: '\$')],
      dialCode: '+52',
      phonePattern: r'^\+52\d{10}$',
      zipCodePattern: r'^\d{5}$',
      timezones: ['America/Mexico_City'],
      flagAssetPath: 'packages/world_picker/assets/flags/MX.svg',
    ),
    Country(
      isoCode: 'CU',
      name: 'Cuba',
      continent: continent,
      languages: [Language(code: 'es', name: 'Spanish', nativeName: 'Español')],
      currencies: [Currency(code: 'CUP', name: 'Cuban Peso', symbol: '\$')],
      dialCode: '+53',
      phonePattern: r'^\+53\d{8}$',
      zipCodePattern: r'^\d{5}$',
      timezones: ['America/Havana'],
      flagAssetPath: 'packages/world_picker/assets/flags/CU.svg',
    ),
    Country(
      isoCode: 'JM',
      name: 'Jamaica',
      continent: continent,
      languages: [Language(code: 'en', name: 'English', nativeName: 'English')],
      currencies: [
        Currency(code: 'JMD', name: 'Jamaican Dollar', symbol: 'J\u000024')
      ],
      dialCode: '+1-876',
      phonePattern: r'^\+1-876\d{7}$',
      zipCodePattern: r'^$',
      timezones: ['America/Jamaica'],
      flagAssetPath: 'packages/world_picker/assets/flags/JM.svg',
    ),
    Country(
      isoCode: 'HT',
      name: 'Haiti',
      continent: continent,
      languages: [
        Language(code: 'fr', name: 'French', nativeName: 'Français'),
        Language(
            code: 'ht', name: 'Haitian Creole', nativeName: 'Kreyòl Ayisyen')
      ],
      currencies: [Currency(code: 'HTG', name: 'Gourde', symbol: 'G')],
      dialCode: '+509',
      phonePattern: r'^\+509\d{8}$',
      zipCodePattern: r'^\d{4}$',
      timezones: ['America/Port-au-Prince'],
      flagAssetPath: 'packages/world_picker/assets/flags/HT.svg',
    ),
    Country(
      isoCode: 'DO',
      name: 'Dominican Republic',
      continent: continent,
      languages: [Language(code: 'es', name: 'Spanish', nativeName: 'Español')],
      currencies: [
        Currency(code: 'DOP', name: 'Dominican Peso', symbol: 'RD\u000024')
      ],
      dialCode: '+1-809',
      phonePattern: r'^\+1-809\d{7}$',
      zipCodePattern: r'^\d{5}$',
      timezones: ['America/Santo_Domingo'],
      flagAssetPath: 'packages/world_picker/assets/flags/DO.svg',
    ),
  ];
}
