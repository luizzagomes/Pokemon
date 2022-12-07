import 'package:aula_sd/src/features/dashboard/model/pokemon_model.dart';
import 'package:aula_sd/src/features/dashboard/repositorio/dashboard_repository.dart';

class DashboardController{
final repository = DashboardRepository();
List<PokemonModel>pokemons=[];

void getPokemons() async{
  var data = await repository.getPokemon();
  if (data.isNotEmpty){
    pokemons.addAll(data);
  }
}

}