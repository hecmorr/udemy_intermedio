import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:udemy_app/config/config.dart';
import 'package:udemy_app/models/pokemon.dart';

final pokemonIdProvider = StateProvider<int>((ref){
  return 1;
});

final pokemonProvider = FutureProvider<Pokemon>((ref) async {
  final id = ref.watch(pokemonIdProvider); 
  final name = await PokemonService.getPokemon(id);

  return name;
});

