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
  ];
}
