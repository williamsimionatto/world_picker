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
  String _status = 'Clique no botão para testar';
  bool _isLoading = false;

  Future<void> _testLoadCountries() async {
    setState(() {
      _isLoading = true;
      _status = 'Carregando países...';
    });

    try {
      final countries = WorldPickerService.loadCountries();
      setState(() {
        _status =
            '✅ Sucesso! ${countries.length} países carregados.\n'
            'Primeiro país: ${countries.first.name} (${countries.first.isoCode})';
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _status = '❌ Erro: $e';
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('World Picker Test'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: _isLoading ? null : _testLoadCountries,
              child: _isLoading
                  ? const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: 16,
                          height: 16,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        ),
                        SizedBox(width: 8),
                        Text('Carregando...'),
                      ],
                    )
                  : const Text('Testar Carregamento de Países'),
            ),
            const SizedBox(height: 16),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  _status,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text('Widget WorldPickerIcon:'),
            WorldPickerIcon(
              onSelect: (country) {
                setState(() {
                  _status =
                      'País selecionado: ${country.name} (${country.isoCode})';
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
