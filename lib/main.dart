import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas_535180144/pages/pokemonList.dart';
import 'package:tugas_535180144/pokemonListViewModel.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "testing",
        home: ChangeNotifierProvider(
          create: (context) => pokemonListViewModel(),
          child: pokemonList(),
        ));
  }
}
