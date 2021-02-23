import 'dart:convert';

import 'pokemonStructure.dart';

import 'package:http/http.dart' as http;

class service {
  Future<List<pokemonStructure>> fetchDataPokemon() async {
    String url = "https://pokeapi.co/api/v2/pokemon?limit=151&offset=0";

    final response = await http.get(url);
    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      Iterable list = result["results"];
      return list.map((pokemon) => pokemonStructure.fromJson(pokemon)).toList();
    } else {
      throw Exception("failed to get data from API");
    }
  }
}
