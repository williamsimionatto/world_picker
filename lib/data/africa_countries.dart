import 'package:world_picker/world_picker.dart';

List<Country> africaCountries() {
  final Continent continent = Continent(
    code: 'AF',
    name: 'Africa',
  );

  return [
    Country(
      isoCode: 'DZ',
      name: 'Algeria',
      continent: continent,
      languages: [Language(code: 'ar', name: 'Arabic', nativeName: 'العربية')],
      currencies: [
        Currency(code: 'DZD', name: 'Algerian Dinar', symbol: 'د.ج')
      ],
      dialCode: '+213',
      phonePattern: r'^\+213(\d{3})(\d{3})(\d{3})$',
      zipCodePattern: r'^\d{5}$',
      timezones: ['Africa/Algiers'],
      flagAssetPath: 'packages/world_picker/assets/flags/DZ.svg',
    ),
    Country(
      isoCode: 'EG',
      name: 'Egypt',
      continent: continent,
      languages: [Language(code: 'ar', name: 'Arabic', nativeName: 'العربية')],
      currencies: [Currency(code: 'EGP', name: 'Egyptian Pound', symbol: '£')],
      dialCode: '+20',
      phonePattern: r'^\+20(\d{3})(\d{3})(\d{4})$',
      zipCodePattern: r'^\d{5}$',
      timezones: ['Africa/Cairo'],
      flagAssetPath: 'packages/world_picker/assets/flags/EG.svg',
    ),
    Country(
      isoCode: 'LY',
      name: 'Libya',
      continent: continent,
      languages: [Language(code: 'ar', name: 'Arabic', nativeName: 'العربية')],
      currencies: [Currency(code: 'LYD', name: 'Libyan Dinar', symbol: 'د.ل')],
      dialCode: '+218',
      phonePattern: r'^\+218(\d{3})(\d{3})(\d{3})$',
      zipCodePattern: r'^\d{5}$',
      timezones: ['Africa/Tripoli'],
      flagAssetPath: 'packages/world_picker/assets/flags/LY.svg',
    ),
    Country(
      isoCode: 'MA',
      name: 'Morocco',
      continent: continent,
      languages: [
        Language(code: 'ar', name: 'Arabic', nativeName: 'العربية'),
        Language(code: 'ber', name: 'Berber', nativeName: 'ⵜⴰⵎⴰⵣⵉⵖⵜ')
      ],
      currencies: [
        Currency(code: 'MAD', name: 'Moroccan Dirham', symbol: 'د.م.')
      ],
      dialCode: '+212',
      phonePattern: r'^\+212(\d{3})(\d{3})(\d{3})$',
      zipCodePattern: r'^\d{5}$',
      timezones: ['Africa/Casablanca'],
      flagAssetPath: 'packages/world_picker/assets/flags/MA.svg',
    ),
    Country(
      isoCode: 'SD',
      name: 'Sudan',
      continent: continent,
      languages: [
        Language(code: 'ar', name: 'Arabic', nativeName: 'العربية'),
        Language(code: 'en', name: 'English', nativeName: 'English')
      ],
      currencies: [
        Currency(code: 'SDG', name: 'Sudanese Pound', symbol: 'ج.س.')
      ],
      dialCode: '+249',
      phonePattern: r'^\+249(\d{3})(\d{3})(\d{3})$',
      zipCodePattern: r'^\d{5}$',
      timezones: ['Africa/Khartoum'],
      flagAssetPath: 'packages/world_picker/assets/flags/SD.svg',
    ),
    Country(
      isoCode: 'TN',
      name: 'Tunisia',
      continent: continent,
      languages: [Language(code: 'ar', name: 'Arabic', nativeName: 'العربية')],
      currencies: [
        Currency(code: 'TND', name: 'Tunisian Dinar', symbol: 'د.ت')
      ],
      dialCode: '+216',
      phonePattern: r'^\+216(\d{2})(\d{3})(\d{3})$',
      zipCodePattern: r'^\d{4}$',
      timezones: ['Africa/Tunis'],
      flagAssetPath: 'packages/world_picker/assets/flags/TN.svg',
    ),

    // West Africa
    Country(
      isoCode: 'BF',
      name: 'Burkina Faso',
      continent: continent,
      languages: [Language(code: 'fr', name: 'French', nativeName: 'Français')],
      currencies: [
        Currency(code: 'XOF', name: 'West African CFA Franc', symbol: 'CFA')
      ],
      dialCode: '+226',
      phonePattern: r'^\+226(\d{4})(\d{4})$',
      zipCodePattern: r'^$',
      timezones: ['Africa/Ouagadougou'],
      flagAssetPath: 'packages/world_picker/assets/flags/BF.svg',
    ),
    Country(
      isoCode: 'BJ',
      name: 'Benin',
      continent: continent,
      languages: [Language(code: 'fr', name: 'French', nativeName: 'Français')],
      currencies: [
        Currency(code: 'XOF', name: 'West African CFA Franc', symbol: 'CFA')
      ],
      dialCode: '+229',
      phonePattern: r'^\+229(\d{4})(\d{4})$',
      zipCodePattern: r'^$',
      timezones: ['Africa/Porto-Novo'],
      flagAssetPath: 'packages/world_picker/assets/flags/BJ.svg',
    ),
    Country(
      isoCode: 'CI',
      name: 'Côte d\'Ivoire',
      continent: continent,
      languages: [Language(code: 'fr', name: 'French', nativeName: 'Français')],
      currencies: [
        Currency(code: 'XOF', name: 'West African CFA Franc', symbol: 'CFA')
      ],
      dialCode: '+225',
      phonePattern: r'^\+225(\d{4})(\d{4})$',
      zipCodePattern: r'^$',
      timezones: ['Africa/Abidjan'],
      flagAssetPath: 'packages/world_picker/assets/flags/CI.svg',
    ),
    Country(
      isoCode: 'CV',
      name: 'Cape Verde',
      continent: continent,
      languages: [
        Language(code: 'pt', name: 'Portuguese', nativeName: 'Português')
      ],
      currencies: [
        Currency(code: 'CVE', name: 'Cape Verdean Escudo', symbol: '\$')
      ],
      dialCode: '+238',
      phonePattern: r'^\+238(\d{3})(\d{4})$',
      zipCodePattern: r'^\d{4}$',
      timezones: ['Atlantic/Cape_Verde'],
      flagAssetPath: 'packages/world_picker/assets/flags/CV.svg',
    ),
    Country(
      isoCode: 'GH',
      name: 'Ghana',
      continent: continent,
      languages: [Language(code: 'en', name: 'English', nativeName: 'English')],
      currencies: [Currency(code: 'GHS', name: 'Ghanaian Cedi', symbol: '₵')],
      dialCode: '+233',
      phonePattern: r'^\+233(\d{3})(\d{3})(\d{3})$',
      zipCodePattern: r'^$',
      timezones: ['Africa/Accra'],
      flagAssetPath: 'packages/world_picker/assets/flags/GH.svg',
    ),
    Country(
      isoCode: 'GM',
      name: 'Gambia',
      continent: continent,
      languages: [Language(code: 'en', name: 'English', nativeName: 'English')],
      currencies: [Currency(code: 'GMD', name: 'Gambian Dalasi', symbol: 'D')],
      dialCode: '+220',
      phonePattern: r'^\+220(\d{3})(\d{4})$',
      zipCodePattern: r'^$',
      timezones: ['Africa/Banjul'],
      flagAssetPath: 'packages/world_picker/assets/flags/GM.svg',
    ),
    Country(
      isoCode: 'GN',
      name: 'Guinea',
      continent: continent,
      languages: [Language(code: 'fr', name: 'French', nativeName: 'Français')],
      currencies: [Currency(code: 'GNF', name: 'Guinean Franc', symbol: 'Fr')],
      dialCode: '+224',
      phonePattern: r'^\+224(\d{4})(\d{4})$',
      zipCodePattern: r'^$',
      timezones: ['Africa/Conakry'],
      flagAssetPath: 'packages/world_picker/assets/flags/GN.svg',
    ),
    Country(
      isoCode: 'GW',
      name: 'Guinea-Bissau',
      continent: continent,
      languages: [
        Language(code: 'pt', name: 'Portuguese', nativeName: 'Português')
      ],
      currencies: [
        Currency(code: 'XOF', name: 'West African CFA Franc', symbol: 'CFA')
      ],
      dialCode: '+245',
      phonePattern: r'^\+245(\d{3})(\d{4})$',
      zipCodePattern: r'^\d{4}$',
      timezones: ['Africa/Bissau'],
      flagAssetPath: 'packages/world_picker/assets/flags/GW.svg',
    ),
    Country(
      isoCode: 'LR',
      name: 'Liberia',
      continent: continent,
      languages: [Language(code: 'en', name: 'English', nativeName: 'English')],
      currencies: [
        Currency(code: 'LRD', name: 'Liberian Dollar', symbol: '\$')
      ],
      dialCode: '+231',
      phonePattern: r'^\+231(\d{4})(\d{4})$',
      zipCodePattern: r'^\d{4}$',
      timezones: ['Africa/Monrovia'],
      flagAssetPath: 'packages/world_picker/assets/flags/LR.svg',
    ),
    Country(
      isoCode: 'ML',
      name: 'Mali',
      continent: continent,
      languages: [Language(code: 'fr', name: 'French', nativeName: 'Français')],
      currencies: [
        Currency(code: 'XOF', name: 'West African CFA Franc', symbol: 'CFA')
      ],
      dialCode: '+223',
      phonePattern: r'^\+223(\d{4})(\d{4})$',
      zipCodePattern: r'^$',
      timezones: ['Africa/Bamako'],
      flagAssetPath: 'packages/world_picker/assets/flags/ML.svg',
    ),
    Country(
      isoCode: 'MR',
      name: 'Mauritania',
      continent: continent,
      languages: [Language(code: 'ar', name: 'Arabic', nativeName: 'العربية')],
      currencies: [
        Currency(code: 'MRU', name: 'Mauritanian Ouguiya', symbol: 'UM')
      ],
      dialCode: '+222',
      phonePattern: r'^\+222(\d{4})(\d{4})$',
      zipCodePattern: r'^$',
      timezones: ['Africa/Nouakchott'],
      flagAssetPath: 'packages/world_picker/assets/flags/MR.svg',
    ),
    Country(
      isoCode: 'NE',
      name: 'Niger',
      continent: continent,
      languages: [Language(code: 'fr', name: 'French', nativeName: 'Français')],
      currencies: [
        Currency(code: 'XOF', name: 'West African CFA Franc', symbol: 'CFA')
      ],
      dialCode: '+227',
      phonePattern: r'^\+227(\d{4})(\d{4})$',
      zipCodePattern: r'^\d{4}$',
      timezones: ['Africa/Niamey'],
      flagAssetPath: 'packages/world_picker/assets/flags/NE.svg',
    ),
    Country(
      isoCode: 'NG',
      name: 'Nigeria',
      continent: continent,
      languages: [Language(code: 'en', name: 'English', nativeName: 'English')],
      currencies: [Currency(code: 'NGN', name: 'Nigerian Naira', symbol: '₦')],
      dialCode: '+234',
      phonePattern: r'^\+234(\d{3})(\d{3})(\d{4})$',
      zipCodePattern: r'^\d{6}$',
      timezones: ['Africa/Lagos'],
      flagAssetPath: 'packages/world_picker/assets/flags/NG.svg',
    ),
    Country(
      isoCode: 'SL',
      name: 'Sierra Leone',
      continent: continent,
      languages: [Language(code: 'en', name: 'English', nativeName: 'English')],
      currencies: [
        Currency(code: 'SLL', name: 'Sierra Leonean Leone', symbol: 'Le')
      ],
      dialCode: '+232',
      phonePattern: r'^\+232(\d{4})(\d{4})$',
      zipCodePattern: r'^$',
      timezones: ['Africa/Freetown'],
      flagAssetPath: 'packages/world_picker/assets/flags/SL.svg',
    ),
    Country(
      isoCode: 'SN',
      name: 'Senegal',
      continent: continent,
      languages: [Language(code: 'fr', name: 'French', nativeName: 'Français')],
      currencies: [
        Currency(code: 'XOF', name: 'West African CFA Franc', symbol: 'CFA')
      ],
      dialCode: '+221',
      phonePattern: r'^\+221(\d{3})(\d{3})(\d{3})$',
      zipCodePattern: r'^\d{5}$',
      timezones: ['Africa/Dakar'],
      flagAssetPath: 'packages/world_picker/assets/flags/SN.svg',
    ),
    Country(
      isoCode: 'TG',
      name: 'Togo',
      continent: continent,
      languages: [Language(code: 'fr', name: 'French', nativeName: 'Français')],
      currencies: [
        Currency(code: 'XOF', name: 'West African CFA Franc', symbol: 'CFA')
      ],
      dialCode: '+228',
      phonePattern: r'^\+228(\d{4})(\d{4})$',
      zipCodePattern: r'^$',
      timezones: ['Africa/Lome'],
      flagAssetPath: 'packages/world_picker/assets/flags/TG.svg',
    ),

    // Central Africa
    Country(
      isoCode: 'AO',
      name: 'Angola',
      continent: continent,
      languages: [
        Language(code: 'pt', name: 'Portuguese', nativeName: 'Português')
      ],
      currencies: [Currency(code: 'AOA', name: 'Angolan Kwanza', symbol: 'Kz')],
      dialCode: '+244',
      phonePattern: r'^\+244(\d{3})(\d{3})(\d{3})$',
      zipCodePattern: r'^$',
      timezones: ['Africa/Luanda'],
      flagAssetPath: 'packages/world_picker/assets/flags/AO.svg',
    ),
    Country(
      isoCode: 'CF',
      name: 'Central African Republic',
      continent: continent,
      languages: [
        Language(code: 'fr', name: 'French', nativeName: 'Français'),
        Language(code: 'sg', name: 'Sango', nativeName: 'Sängö')
      ],
      currencies: [
        Currency(code: 'XAF', name: 'Central African CFA Franc', symbol: 'Fr')
      ],
      dialCode: '+236',
      phonePattern: r'^\+236(\d{4})(\d{4})$',
      zipCodePattern: r'^$',
      timezones: ['Africa/Bangui'],
      flagAssetPath: 'packages/world_picker/assets/flags/CF.svg',
    ),
    Country(
      isoCode: 'CM',
      name: 'Cameroon',
      continent: continent,
      languages: [
        Language(code: 'en', name: 'English', nativeName: 'English'),
        Language(code: 'fr', name: 'French', nativeName: 'Français')
      ],
      currencies: [
        Currency(code: 'XAF', name: 'Central African CFA Franc', symbol: 'Fr')
      ],
      dialCode: '+237',
      phonePattern: r'^\+237(\d{3})(\d{3})(\d{3})$',
      zipCodePattern: r'^$',
      timezones: ['Africa/Douala'],
      flagAssetPath: 'packages/world_picker/assets/flags/CM.svg',
    ),
    Country(
      isoCode: 'CD',
      name: 'Democratic Republic of the Congo',
      continent: continent,
      languages: [Language(code: 'fr', name: 'French', nativeName: 'Français')],
      currencies: [
        Currency(code: 'CDF', name: 'Congolese Franc', symbol: 'Fr')
      ],
      dialCode: '+243',
      phonePattern: r'^\+243(\d{3})(\d{3})(\d{3})$',
      zipCodePattern: r'^$',
      timezones: ['Africa/Kinshasa'],
      flagAssetPath: 'packages/world_picker/assets/flags/CD.svg',
    ),
    Country(
      isoCode: 'CG',
      name: 'Republic of the Congo',
      continent: continent,
      languages: [Language(code: 'fr', name: 'French', nativeName: 'Français')],
      currencies: [
        Currency(code: 'XAF', name: 'Central African CFA Franc', symbol: 'Fr')
      ],
      dialCode: '+242',
      phonePattern: r'^\+242(\d{3})(\d{3})(\d{3})$',
      zipCodePattern: r'^$',
      timezones: ['Africa/Brazzaville'],
      flagAssetPath: 'packages/world_picker/assets/flags/CG.svg',
    ),
    Country(
      isoCode: 'GA',
      name: 'Gabon',
      continent: continent,
      languages: [Language(code: 'fr', name: 'French', nativeName: 'Français')],
      currencies: [
        Currency(code: 'XAF', name: 'Central African CFA Franc', symbol: 'Fr')
      ],
      dialCode: '+241',
      phonePattern: r'^\+241(\d{4})(\d{4})$',
      zipCodePattern: r'^$',
      timezones: ['Africa/Libreville'],
      flagAssetPath: 'packages/world_picker/assets/flags/GA.svg',
    ),
    Country(
      isoCode: 'GQ',
      name: 'Equatorial Guinea',
      continent: continent,
      languages: [
        Language(code: 'es', name: 'Spanish', nativeName: 'Español'),
        Language(code: 'fr', name: 'French', nativeName: 'Français'),
        Language(code: 'pt', name: 'Portuguese', nativeName: 'Português')
      ],
      currencies: [
        Currency(code: 'XAF', name: 'Central African CFA Franc', symbol: 'Fr')
      ],
      dialCode: '+240',
      phonePattern: r'^\+240(\d{3})(\d{3})(\d{3})$',
      zipCodePattern: r'^$',
      timezones: ['Africa/Malabo'],
      flagAssetPath: 'packages/world_picker/assets/flags/GQ.svg',
    ),
    Country(
      isoCode: 'ST',
      name: 'São Tomé and Príncipe',
      continent: continent,
      languages: [
        Language(code: 'pt', name: 'Portuguese', nativeName: 'Português')
      ],
      currencies: [
        Currency(code: 'STN', name: 'São Tomé and Príncipe Dobra', symbol: 'Db')
      ],
      dialCode: '+239',
      phonePattern: r'^\+239(\d{3})(\d{4})$',
      zipCodePattern: r'^$',
      timezones: ['Africa/Sao_Tome'],
      flagAssetPath: 'packages/world_picker/assets/flags/ST.svg',
    ),
    Country(
      isoCode: 'TD',
      name: 'Chad',
      continent: continent,
      languages: [
        Language(code: 'fr', name: 'French', nativeName: 'Français'),
        Language(code: 'ar', name: 'Arabic', nativeName: 'العربية')
      ],
      currencies: [
        Currency(code: 'XAF', name: 'Central African CFA Franc', symbol: 'Fr')
      ],
      dialCode: '+235',
      phonePattern: r'^\+235(\d{4})(\d{4})$',
      zipCodePattern: r'^$',
      timezones: ['Africa/Ndjamena'],
      flagAssetPath: 'packages/world_picker/assets/flags/TD.svg',
    ),

    // East Africa
    Country(
      isoCode: 'BI',
      name: 'Burundi',
      continent: continent,
      languages: [
        Language(code: 'rn', name: 'Kirundi', nativeName: 'Ikirundi'),
        Language(code: 'fr', name: 'French', nativeName: 'Français'),
        Language(code: 'en', name: 'English', nativeName: 'English')
      ],
      currencies: [
        Currency(code: 'BIF', name: 'Burundian Franc', symbol: 'Fr')
      ],
      dialCode: '+257',
      phonePattern: r'^\+257(\d{4})(\d{4})$',
      zipCodePattern: r'^$',
      timezones: ['Africa/Bujumbura'],
      flagAssetPath: 'packages/world_picker/assets/flags/BI.svg',
    ),
    Country(
      isoCode: 'DJ',
      name: 'Djibouti',
      continent: continent,
      languages: [
        Language(code: 'fr', name: 'French', nativeName: 'Français'),
        Language(code: 'ar', name: 'Arabic', nativeName: 'العربية')
      ],
      currencies: [
        Currency(code: 'DJF', name: 'Djiboutian Franc', symbol: 'Fr')
      ],
      dialCode: '+253',
      phonePattern: r'^\+253(\d{4})(\d{4})$',
      zipCodePattern: r'^$',
      timezones: ['Africa/Djibouti'],
      flagAssetPath: 'packages/world_picker/assets/flags/DJ.svg',
    ),
    Country(
      isoCode: 'ER',
      name: 'Eritrea',
      continent: continent,
      languages: [
        Language(code: 'ti', name: 'Tigrinya', nativeName: 'ትግርኛ'),
        Language(code: 'ar', name: 'Arabic', nativeName: 'العربية'),
        Language(code: 'en', name: 'English', nativeName: 'English')
      ],
      currencies: [
        Currency(code: 'ERN', name: 'Eritrean Nakfa', symbol: 'Nfk')
      ],
      dialCode: '+291',
      phonePattern: r'^\+291(\d{3})(\d{4})$',
      zipCodePattern: r'^$',
      timezones: ['Africa/Asmara'],
      flagAssetPath: 'packages/world_picker/assets/flags/ER.svg',
    ),
    Country(
      isoCode: 'ET',
      name: 'Ethiopia',
      continent: continent,
      languages: [Language(code: 'am', name: 'Amharic', nativeName: 'አማርኛ')],
      currencies: [Currency(code: 'ETB', name: 'Ethiopian Birr', symbol: 'Br')],
      dialCode: '+251',
      phonePattern: r'^\+251(\d{3})(\d{3})(\d{3})$',
      zipCodePattern: r'^\d{4}$',
      timezones: ['Africa/Addis_Ababa'],
      flagAssetPath: 'packages/world_picker/assets/flags/ET.svg',
    ),
    Country(
      isoCode: 'KE',
      name: 'Kenya',
      continent: continent,
      languages: [
        Language(code: 'en', name: 'English', nativeName: 'English'),
        Language(code: 'sw', name: 'Swahili', nativeName: 'Kiswahili')
      ],
      currencies: [
        Currency(code: 'KES', name: 'Kenyan Shilling', symbol: 'Sh')
      ],
      dialCode: '+254',
      phonePattern: r'^\+254(\d{3})(\d{3})(\d{3})$',
      zipCodePattern: r'^\d{5}$',
      timezones: ['Africa/Nairobi'],
      flagAssetPath: 'packages/world_picker/assets/flags/KE.svg',
    ),
    Country(
      isoCode: 'KM',
      name: 'Comoros',
      continent: continent,
      languages: [
        Language(code: 'ar', name: 'Arabic', nativeName: 'العربية'),
        Language(code: 'fr', name: 'French', nativeName: 'Français'),
        Language(code: 'zdj', name: 'Comorian', nativeName: 'Shikomori')
      ],
      currencies: [Currency(code: 'KMF', name: 'Comorian Franc', symbol: 'Fr')],
      dialCode: '+269',
      phonePattern: r'^\+269(\d{3})(\d{4})$',
      zipCodePattern: r'^$',
      timezones: ['Indian/Comoro'],
      flagAssetPath: 'packages/world_picker/assets/flags/KM.svg',
    ),
    Country(
      isoCode: 'MG',
      name: 'Madagascar',
      continent: continent,
      languages: [
        Language(code: 'mg', name: 'Malagasy', nativeName: 'Malagasy'),
        Language(code: 'fr', name: 'French', nativeName: 'Français')
      ],
      currencies: [
        Currency(code: 'MGA', name: 'Malagasy Ariary', symbol: 'Ar')
      ],
      dialCode: '+261',
      phonePattern: r'^\+261(\d{3})(\d{3})(\d{3})$',
      zipCodePattern: r'^\d{3}$',
      timezones: ['Indian/Antananarivo'],
      flagAssetPath: 'packages/world_picker/assets/flags/MG.svg',
    ),
    Country(
      isoCode: 'MW',
      name: 'Malawi',
      continent: continent,
      languages: [
        Language(code: 'en', name: 'English', nativeName: 'English'),
        Language(code: 'ny', name: 'Chichewa', nativeName: 'Chichewa')
      ],
      currencies: [
        Currency(code: 'MWK', name: 'Malawian Kwacha', symbol: 'MK')
      ],
      dialCode: '+265',
      phonePattern: r'^\+265(\d{4})(\d{4})$',
      zipCodePattern: r'^$',
      timezones: ['Africa/Blantyre'],
      flagAssetPath: 'packages/world_picker/assets/flags/MW.svg',
    ),
    Country(
      isoCode: 'MU',
      name: 'Mauritius',
      continent: continent,
      languages: [
        Language(code: 'en', name: 'English', nativeName: 'English'),
        Language(code: 'fr', name: 'French', nativeName: 'Français')
      ],
      currencies: [Currency(code: 'MUR', name: 'Mauritian Rupee', symbol: '₨')],
      dialCode: '+230',
      phonePattern: r'^\+230(\d{4})(\d{4})$',
      zipCodePattern: r'^\d{5}$',
      timezones: ['Indian/Mauritius'],
      flagAssetPath: 'packages/world_picker/assets/flags/MU.svg',
    ),
    Country(
      isoCode: 'MZ',
      name: 'Mozambique',
      continent: continent,
      languages: [
        Language(code: 'pt', name: 'Portuguese', nativeName: 'Português')
      ],
      currencies: [
        Currency(code: 'MZN', name: 'Mozambican Metical', symbol: 'MT')
      ],
      dialCode: '+258',
      phonePattern: r'^\+258(\d{3})(\d{3})(\d{3})$',
      zipCodePattern: r'^\d{4}$',
      timezones: ['Africa/Maputo'],
      flagAssetPath: 'packages/world_picker/assets/flags/MZ.svg',
    ),
    Country(
      isoCode: 'RW',
      name: 'Rwanda',
      continent: continent,
      languages: [
        Language(code: 'rw', name: 'Kinyarwanda', nativeName: 'Ikinyarwanda'),
        Language(code: 'en', name: 'English', nativeName: 'English'),
        Language(code: 'fr', name: 'French', nativeName: 'Français')
      ],
      currencies: [Currency(code: 'RWF', name: 'Rwandan Franc', symbol: 'Fr')],
      dialCode: '+250',
      phonePattern: r'^\+250(\d{3})(\d{3})(\d{3})$',
      zipCodePattern: r'^$',
      timezones: ['Africa/Kigali'],
      flagAssetPath: 'packages/world_picker/assets/flags/RW.svg',
    ),
    Country(
      isoCode: 'SC',
      name: 'Seychelles',
      continent: continent,
      languages: [
        Language(code: 'en', name: 'English', nativeName: 'English'),
        Language(code: 'fr', name: 'French', nativeName: 'Français'),
        Language(code: 'crs', name: 'Seychellois Creole', nativeName: 'Seselwa')
      ],
      currencies: [
        Currency(code: 'SCR', name: 'Seychellois Rupee', symbol: '₨')
      ],
      dialCode: '+248',
      phonePattern: r'^\+248(\d{3})(\d{4})$',
      zipCodePattern: r'^$',
      timezones: ['Indian/Mahe'],
      flagAssetPath: 'packages/world_picker/assets/flags/SC.svg',
    ),
    Country(
      isoCode: 'SO',
      name: 'Somalia',
      continent: continent,
      languages: [
        Language(code: 'so', name: 'Somali', nativeName: 'Soomaali'),
        Language(code: 'ar', name: 'Arabic', nativeName: 'العربية')
      ],
      currencies: [
        Currency(code: 'SOS', name: 'Somali Shilling', symbol: 'Sh')
      ],
      dialCode: '+252',
      phonePattern: r'^\+252(\d{4})(\d{4})$',
      zipCodePattern: r'^$',
      timezones: ['Africa/Mogadishu'],
      flagAssetPath: 'packages/world_picker/assets/flags/SO.svg',
    ),
    Country(
      isoCode: 'SS',
      name: 'South Sudan',
      continent: continent,
      languages: [Language(code: 'en', name: 'English', nativeName: 'English')],
      currencies: [
        Currency(code: 'SSP', name: 'South Sudanese Pound', symbol: '£')
      ],
      dialCode: '+211',
      phonePattern: r'^\+211(\d{3})(\d{3})(\d{3})$',
      zipCodePattern: r'^$',
      timezones: ['Africa/Juba'],
      flagAssetPath: 'packages/world_picker/assets/flags/SS.svg',
    ),
    Country(
      isoCode: 'TZ',
      name: 'Tanzania',
      continent: continent,
      languages: [
        Language(code: 'sw', name: 'Swahili', nativeName: 'Kiswahili'),
        Language(code: 'en', name: 'English', nativeName: 'English')
      ],
      currencies: [
        Currency(code: 'TZS', name: 'Tanzanian Shilling', symbol: 'Sh')
      ],
      dialCode: '+255',
      phonePattern: r'^\+255(\d{3})(\d{3})(\d{3})$',
      zipCodePattern: r'^$',
      timezones: ['Africa/Dar_es_Salaam'],
      flagAssetPath: 'packages/world_picker/assets/flags/TZ.svg',
    ),
    Country(
      isoCode: 'UG',
      name: 'Uganda',
      continent: continent,
      languages: [
        Language(code: 'en', name: 'English', nativeName: 'English'),
        Language(code: 'sw', name: 'Swahili', nativeName: 'Kiswahili')
      ],
      currencies: [
        Currency(code: 'UGX', name: 'Ugandan Shilling', symbol: 'Sh')
      ],
      dialCode: '+256',
      phonePattern: r'^\+256(\d{3})(\d{3})(\d{3})$',
      zipCodePattern: r'^$',
      timezones: ['Africa/Kampala'],
      flagAssetPath: 'packages/world_picker/assets/flags/UG.svg',
    ),
    Country(
      isoCode: 'ZM',
      name: 'Zambia',
      continent: continent,
      languages: [Language(code: 'en', name: 'English', nativeName: 'English')],
      currencies: [Currency(code: 'ZMW', name: 'Zambian Kwacha', symbol: 'ZK')],
      dialCode: '+260',
      phonePattern: r'^\+260(\d{3})(\d{3})(\d{3})$',
      zipCodePattern: r'^\d{5}$',
      timezones: ['Africa/Lusaka'],
      flagAssetPath: 'packages/world_picker/assets/flags/ZM.svg',
    ),
    Country(
      isoCode: 'ZW',
      name: 'Zimbabwe',
      continent: continent,
      languages: [
        Language(code: 'en', name: 'English', nativeName: 'English'),
        Language(code: 'sn', name: 'Shona', nativeName: 'ChiShona'),
        Language(code: 'nd', name: 'Northern Ndebele', nativeName: 'IsiNdebele')
      ],
      currencies: [
        Currency(code: 'USD', name: 'US Dollar', symbol: '\$'),
        Currency(code: 'ZAR', name: 'South African Rand', symbol: 'R'),
        Currency(code: 'BWP', name: 'Botswana Pula', symbol: 'P'),
        Currency(code: 'GBP', name: 'Pound Sterling', symbol: '£')
      ],
      dialCode: '+263',
      phonePattern: r'^\+263(\d{3})(\d{3})(\d{3})$',
      zipCodePattern: r'^$',
      timezones: ['Africa/Harare'],
      flagAssetPath: 'packages/world_picker/assets/flags/ZW.svg',
    ),

    // Southern Africa
    Country(
      isoCode: 'BW',
      name: 'Botswana',
      continent: continent,
      languages: [
        Language(code: 'en', name: 'English', nativeName: 'English'),
        Language(code: 'tn', name: 'Tswana', nativeName: 'Setswana')
      ],
      currencies: [Currency(code: 'BWP', name: 'Botswana Pula', symbol: 'P')],
      dialCode: '+267',
      phonePattern: r'^\+267(\d{4})(\d{4})$',
      zipCodePattern: r'^$',
      timezones: ['Africa/Gaborone'],
      flagAssetPath: 'packages/world_picker/assets/flags/BW.svg',
    ),
    Country(
      isoCode: 'LS',
      name: 'Lesotho',
      continent: continent,
      languages: [
        Language(code: 'en', name: 'English', nativeName: 'English'),
        Language(code: 'st', name: 'Southern Sotho', nativeName: 'Sesotho')
      ],
      currencies: [
        Currency(code: 'LSL', name: 'Lesotho Loti', symbol: 'L'),
        Currency(code: 'ZAR', name: 'South African Rand', symbol: 'R')
      ],
      dialCode: '+266',
      phonePattern: r'^\+266(\d{4})(\d{4})$',
      zipCodePattern: r'^\d{3}$',
      timezones: ['Africa/Maseru'],
      flagAssetPath: 'packages/world_picker/assets/flags/LS.svg',
    ),
    Country(
      isoCode: 'NA',
      name: 'Namibia',
      continent: continent,
      languages: [
        Language(code: 'en', name: 'English', nativeName: 'English'),
        Language(code: 'af', name: 'Afrikaans', nativeName: 'Afrikaans')
      ],
      currencies: [
        Currency(code: 'NAD', name: 'Namibian Dollar', symbol: '\$'),
        Currency(code: 'ZAR', name: 'South African Rand', symbol: 'R')
      ],
      dialCode: '+264',
      phonePattern: r'^\+264(\d{4})(\d{4})$',
      zipCodePattern: r'^\d{5}$',
      timezones: ['Africa/Windhoek'],
      flagAssetPath: 'packages/world_picker/assets/flags/NA.svg',
    ),
    Country(
      isoCode: 'SZ',
      name: 'Eswatini',
      continent: continent,
      languages: [
        Language(code: 'en', name: 'English', nativeName: 'English'),
        Language(code: 'ss', name: 'Swati', nativeName: 'SiSwati')
      ],
      currencies: [
        Currency(code: 'SZL', name: 'Swazi Lilangeni', symbol: 'L'),
        Currency(code: 'ZAR', name: 'South African Rand', symbol: 'R')
      ],
      dialCode: '+268',
      phonePattern: r'^\+268(\d{4})(\d{4})$',
      zipCodePattern: r'^[A-Z]\d{3}$',
      timezones: ['Africa/Mbabane'],
      flagAssetPath: 'packages/world_picker/assets/flags/SZ.svg',
    ),
    Country(
      isoCode: 'ZA',
      name: 'South Africa',
      continent: continent,
      languages: [
        Language(code: 'af', name: 'Afrikaans', nativeName: 'Afrikaans'),
        Language(code: 'en', name: 'English', nativeName: 'English'),
        Language(
            code: 'nr', name: 'Southern Ndebele', nativeName: 'IsiNdebele'),
        Language(code: 'st', name: 'Southern Sotho', nativeName: 'Sesotho'),
        Language(code: 'ss', name: 'Swati', nativeName: 'SiSwati'),
        Language(code: 'tn', name: 'Tswana', nativeName: 'Setswana'),
        Language(code: 'ts', name: 'Tsonga', nativeName: 'Xitsonga'),
        Language(code: 've', name: 'Venda', nativeName: 'Tshivenḓa'),
        Language(code: 'xh', name: 'Xhosa', nativeName: 'IsiXhosa'),
        Language(code: 'zu', name: 'Zulu', nativeName: 'IsiZulu')
      ],
      currencies: [
        Currency(code: 'ZAR', name: 'South African Rand', symbol: 'R')
      ],
      dialCode: '+27',
      phonePattern: r'^\+27(\d{3})(\d{3})(\d{3})$',
      zipCodePattern: r'^\d{4}$',
      timezones: ['Africa/Johannesburg'],
      flagAssetPath: 'packages/world_picker/assets/flags/ZA.svg',
    ),
  ];
}
