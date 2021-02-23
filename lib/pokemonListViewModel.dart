import 'package:flutter/cupertino.dart';
import 'package:tugas_535180144/pokemonStructure.dart';
import 'service.dart';
import 'pokemonViewModel.dart';


class pokemonListViewModel extends ChangeNotifier{

  List<pokemonViewModel> pokemons = List<pokemonViewModel>();

  pokemonListViewModel(){
    _allPokemon();
  }

  void _allPokemon() async {
    List<pokemonStructure> pokemon_structure = await service().fetchDataPokemon();
    this.pokemons = pokemon_structure.map((pokemon) => pokemonViewModel(pokemon: pokemon)).toList();
    notifyListeners();
  }
}