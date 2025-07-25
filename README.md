# 🌍 World Picker

Country selector and metadata provider with flags, currency, phone code, zip code format, and languages.

🚧 In construction... 🚧

## Widgets

- ### WorldPickerIcon
  A widget that displays a country icon with its flag.
  On click it opens a bottom sheet with a list of countries.

  | Property         | Type         | Description                                                 | Required/Default |
  |------------------|--------------|-------------------------------------------------------------|----------------- |
  | `onSelect`       | `Function`   | Callback function triggered when a country is selected.     | `true`           |
  | `selectedCountry`          | `Country`    | The currently selected country.                             | `false`/`null`   |
  | `showIsoCode`     | `boolean`    | Whether to show the country ISO code.                      | `false`/`true`   |
  | `showName`       | `boolean`    | Whether to show the country name.                           | `false`/`false`  |
  | `showCurrencyCode`   | `boolean`    | Whether to show the country currency code.              | `false`/`false`  |
  | `size`           | `double`     | The size of the icon.                                       | `24.0`           |

  ```dart
  WorldPickerIcon(
    onSelect: (country) {},
    selectedCountry: Country.fromIsoCode('US'), 
    showIsoCode: true,
    showName: true,
    showCurrencyCode: true,
    size: 32.0,
  )
```
