import 'package:aula_sd/src/features/dashboard/controller/dashboard_controller.dart';
import 'package:aula_sd/src/services/current_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
 final DashboardController controller = GetIt.I<DashboardController>();
  @override
  void initState() {
    controller.getPokemons();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pokemons"),
      ),
      body: Observer(builder: (context) {
        if (controller.currentState == CurrentState.loading) {
          return const Expanded(
              child: Center(
            child: CircularProgressIndicator(),
          ));
        } else if (controller.currentState == CurrentState.failure) {
          return const Expanded(
              child: Center(
            child: Text("Ih, deu ruim"),
          ));
        } else {
          return ListView(
              children: controller.pokemons
                  .map((pokemon) => ListTile(
                        title: Text(pokemon.name ?? ""),
                      ))
                  .toList());
        }
      }),
    );
  }
}
