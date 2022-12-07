import 'package:dio/dio.dart';

import '../model/pokemon_model.dart';

class DashboardRepository {
  Future<List<PokemonModel>> getPokemon() async {
    try {
      final response = await Dio().get("https://pokeapi.co/api/v2/pokemon/");
      if (response.statusCode == 200) {
        List<dynamic> body = response.data['results'];
        return body.map((model) => PokemonModel.fromJson(model)).toList();
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }
}
