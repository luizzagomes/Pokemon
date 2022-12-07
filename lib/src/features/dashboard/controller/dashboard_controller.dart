import 'package:aula_sd/src/features/dashboard/model/pokemon_model.dart';
import 'package:aula_sd/src/features/dashboard/repositorio/dashboard_repository.dart';
import 'package:aula_sd/src/services/current_state.dart';
import 'package:mobx/mobx.dart';
part 'dashboard_controller.g.dart';

class DashboardController = _DashboardControllerBase with _$DashboardController;

abstract class _DashboardControllerBase with Store {
  final DashboardRepository repository;
  
   _DashboardControllerBase(this.repository);
  
  List<PokemonModel> pokemons = [];

  @observable
  CurrentState currentState = CurrentState.empty;

 

  @action
  Future <void> getPokemons() async {
    currentState = CurrentState.loading;
    var data = await repository.getPokemon();
    if (data.isNotEmpty) {
      currentState = CurrentState.success;
      pokemons.addAll(data);
    } else{
      currentState = CurrentState.failure;
    }
  }
}
