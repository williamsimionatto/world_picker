import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('World Picker Test')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
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
                placeholder: 'Pesquisar...',
                inputDecoration: InputDecoration(
                  labelText: 'Pesquisar países',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Selected Country: ${selectedCountry?.name ?? 'None'}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text('Total Countries: ${WorldPickerService.countries.length}'),
          ],
        ),
      ),
    );
  }
}
