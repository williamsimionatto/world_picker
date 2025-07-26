import 'package:flutter/material.dart';
import 'package:world_picker/model/phone_number.dart';
import 'package:world_picker/widgets/phone_number_field.dart';

import 'package:world_picker/world_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'World Picker Test',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Country? selectedCountry = WorldPickerService.fromIsoCode('US');
  String? phoneNumberErrorMessage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('World Picker Test')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              WorldPickerIcon(
                showIsoCode: false,
                showCurrencyCode: false,
                showName: false,
                showDialCode: true,
                onSelect: (country) {
                  setState(() {
                    selectedCountry = country;
                  });
                },
                selectedCountry: selectedCountry,
                options: WorldPickerOptions(
                  showCurrencyCode: false,
                  showIsoCode: false,
                  showDialCode: true,
                  placeholder: 'Search...',
                  inputDecoration: InputDecoration(
                    labelText: 'Search countries',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              if (selectedCountry != null) ...[
                Card(
                  elevation: 4,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey[200]!,
                                    spreadRadius: 1,
                                    blurRadius: 4,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: CountryFlag(
                                size: 60,
                                country: selectedCountry!,
                                shape: CountryFlagShape.square,
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    selectedCountry!.name,
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'ISO Code: ${selectedCountry!.isoCode}',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey.shade600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        _buildInfoRow(
                          icon: Icons.phone,
                          label: 'Dial code',
                          value: selectedCountry!.dialCode,
                        ),
                        const SizedBox(height: 12),

                        _buildInfoRow(
                          icon: Icons.monetization_on,
                          label:
                              'Currenc${selectedCountry!.currencies.length > 1 ? 'ies' : 'y'}',
                          value: selectedCountry!.currencies
                              .map(
                                (currency) =>
                                    '${currency.name} (${currency.code}) ${currency.symbol}',
                              )
                              .join(', '),
                        ),
                        const SizedBox(height: 12),

                        _buildInfoRow(
                          icon: Icons.language,
                          label:
                              'Language${selectedCountry!.languages.length > 1 ? 's' : ''}',
                          value: selectedCountry!.languages
                              .map(
                                (language) =>
                                    '${language.name} (${language.nativeName})',
                              )
                              .join(', '),
                        ),
                        const SizedBox(height: 12),

                        _buildInfoRow(
                          icon: Icons.schedule,
                          label:
                              'Timezone${selectedCountry!.timezones.length > 1 ? 's' : ''}',
                          value: selectedCountry!.timezones.join(', '),
                        ),
                        const SizedBox(height: 12),

                        _buildInfoRow(
                          icon: Icons.public,
                          label: 'Continent',
                          value: selectedCountry!.continent.name,
                        ),

                        if (selectedCountry!.zipCodePattern.isNotEmpty) ...[
                          const SizedBox(height: 12),
                          _buildInfoRow(
                            icon: Icons.location_on,
                            label: 'ZIP Code format',
                            value: selectedCountry!.zipCodePattern,
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
              ],
              const SizedBox(height: 20),
              WorldPickerPhoneNumberField(
                keyboardType: TextInputType.phone,
                onPhoneNumberChanged: (phoneNumber) {
                  setState(() {
                    selectedCountry = phoneNumber.country;
                  });

                  final isPhoneValid =
                      WorldPickerPhoneNumberValidation.isValidPhoneNumber(
                        isoCode: selectedCountry?.isoCode ?? 'US',
                        phoneNumber: phoneNumber.phoneNumber,
                        isRequired: false,
                      );

                  setState(() {
                    phoneNumberErrorMessage =
                        phoneNumber.phoneNumber != null &&
                            phoneNumber.phoneNumber!.isNotEmpty &&
                            !isPhoneValid
                        ? 'Invalid phone number for ${selectedCountry?.name ?? 'the selected country'}'
                        : null;
                  });
                },
                initialValue: PhoneNumber(
                  isoCode: selectedCountry?.isoCode ?? 'US',
                  phoneNumber: '',
                  dialCode: selectedCountry?.dialCode ?? '+1',
                ),
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  errorText: phoneNumberErrorMessage,
                ),
                onTapOutside: (details) {
                  FocusScope.of(context).unfocus();
                },
                showDialCode: true,
                keyboardAppearance: Brightness.dark,
                options: WorldPickerOptions(
                  showIsoCode: false,
                  showCurrencyCode: false,
                  showDialCode: true,
                  placeholder: 'Select country',
                  inputDecoration: InputDecoration(
                    labelText: 'Select country',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 20, color: Colors.deepPurple),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                value,
                style: TextStyle(fontSize: 14, color: Colors.grey.shade700),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
