import 'package:dio/dio.dart';
import 'package:udemy_app/models/pokemon.dart';

class PokemonService {

  static Future<Pokemon> getPokemon(int pokemonId) async {

  final dio = Dio();

   try {
     final response = await dio.get<Map<String,dynamic>>('https://pokeapi.co/api/v2/pokemon/$pokemonId');

     return Pokemon.fromJson(response.data!);

   } catch (e) {
     throw Exception('Pokemon name not found');
   }
  }
}