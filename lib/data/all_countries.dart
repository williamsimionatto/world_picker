import 'package:world_picker/data/data.dart';
import 'package:world_picker/world_picker.dart';

List<Country> allCountries() {
  return [
    ...africaCountries(),
    ...asiaCountries(),
    ...europeCountries(),
    ...northAmericaCountries(),
    ...centralAmericaCountries(),
    ...caribbeanCountries(),
    ...oceaniaCountries(),
    ...southAmericaCountries(),
    Country(
      isoCode: 'AQ',
      name: 'Antarctica',
      continent: Continent(code: 'AQ', name: 'Antarctica'),
      languages: [
        Language(code: 'en', name: 'English', nativeName: 'English'),
        Language(code: 'es', name: 'Spanish', nativeName: 'Español'),
        Language(code: 'ru', name: 'Russian', nativeName: 'Русский'),
      ],
      currencies: [
        Currency(code: 'USD', name: 'US Dollar', symbol: '\$'),
      ],
      dialCode: '',
      phonePattern: r'^\d*$',
      zipCodePattern: r'^\d*$',
      timezones: const ['UTC'],
      flagAssetPath: 'packages/world_picker/assets/flags/AQ.svg',
    ),
  ];
}
