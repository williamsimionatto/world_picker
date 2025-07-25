import 'package:flutter/services.dart';
import 'dart:convert';

void main() async {
  try {
    print('Tentando carregar o arquivo JSON...');

    // Verifica se o arquivo existe
    final String jsonString =
        await rootBundle.loadString('assets/data/countries.json');
    print('✅ Arquivo carregado com sucesso!');
    print('Tamanho do arquivo: ${jsonString.length} caracteres');

    // Tenta fazer o parse do JSON
    final List<dynamic> jsonList = json.decode(jsonString);
    print('✅ JSON parseado com sucesso!');
    print('Número de países encontrados: ${jsonList.length}');

    // Verifica o primeiro país
    if (jsonList.isNotEmpty) {
      final firstCountry = jsonList.first;
      print(
          'Primeiro país: ${firstCountry['name']} (${firstCountry['isoCode']})');
    }
  } catch (e) {
    print('❌ Erro ao carregar o arquivo: $e');
    print('Tipo do erro: ${e.runtimeType}');
  }
}
