import 'pokemonStructure.dart';

class pokemonViewModel{
  pokemonStructure _pokemonStructure;

  pokemonViewModel({pokemonStructure pokemon}): _pokemonStructure = pokemon;

  String get url {
    return _pokemonStructure.url;
  }
  String get name {
    return _pokemonStructure.name;
  }
}