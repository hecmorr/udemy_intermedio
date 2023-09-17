import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

class Apis {
  static const String pokemon = '/pokemon/';
}

@RestApi(baseUrl: "https://pokeapi.co/api/v2/")
abstract class Api {

  @GET(Apis.pokemon)
  Future<Map<String,dynamic>> getPokemons();
  
}
