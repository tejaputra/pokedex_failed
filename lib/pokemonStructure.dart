class pokemonStructure {
  final String name;
  final String url;

  pokemonStructure({this.name, this.url});

  factory pokemonStructure.fromJson(Map<String, dynamic> json) {
    return pokemonStructure(name: json["name"], url: json["url"]);
  }
}

class pokemonType {
  final String type;

  pokemonType({this.type});
  factory pokemonType.fromJson(Map<String, dynamic> json) {
    return pokemonType(type: json["name"]);
  }
}
