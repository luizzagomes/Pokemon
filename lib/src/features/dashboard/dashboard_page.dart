import 'package:aula_sd/src/features/dashboard/controller/dashboard_controller.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final controller = DashboardController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pokemons"),
      ),floatingActionButton: FloatingActionButton(onPressed: () async {
      controller.getPokemons(); 
      setState(() {
        
      }); 
      },),
      body: ListView(
          children: controller.pokemons
              .map((pokemon) => ListTile(
                    title: Text(pokemon.name ?? ""),
                  ))
              .toList()),
    );
  }
}
