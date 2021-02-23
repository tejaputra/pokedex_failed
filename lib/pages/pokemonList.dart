import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas_535180144/pokemonListViewModel.dart';
import 'package:flutter/cupertino.dart';

class pokemonList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<pokemonListViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Pokemon Generation 1"),
      ),
      body: ListView.builder(
        itemCount: vm.pokemons.length,
        itemBuilder: (context, index) {
          return ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => pokemonDescription(
                          name: vm.pokemons[index].name,
                          getUrl: vm.pokemons[index].url)),
                );
              },
              child: Text(vm.pokemons[index].name));

          /*ListTile(
            leading: Image.network(
                "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/1.png"),
            title: Text(vm.pokemons[index].name),
          )*/
        },
      ),
    );
  }
}

class pokemonDescription extends StatelessWidget {
  String name;
  String getUrl;

  pokemonDescription({Key key, @required this.name, @required this.getUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final vm = Provider.of<pokemonListViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Dekripsi Pokemon"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Nama Pokemon : " + name),
            Text("kurang latihan pak maaf gk bagus"),
          ],
        ),
      ),
    );
  }
}
