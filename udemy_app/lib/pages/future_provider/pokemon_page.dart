import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:udemy_app/providers/pokemon_provider.dart';

class PokemonPage extends ConsumerWidget {
  const PokemonPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final pokemonId = ref.watch(pokemonIdProvider);
    final pokemonAsync = ref.watch(pokemonNameProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Pokemon: $pokemonId'),
      ),
      body: Center(
        child: pokemonAsync.when(
          data: Text.new, 
          error: (error, stackTrace) => Text('Error: $error'), 
          loading: ()=> const CircularProgressIndicator() ,
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          fabState(Icons.exposure_plus_1_outlined, () {
            ref.read(pokemonIdProvider.notifier).update((state) => state + 1);
           },'1'),
          const SizedBox(height: 10),
          fabState(Icons.exposure_minus_1_outlined, () { 
            ref.read(pokemonIdProvider.notifier).update((state) {
              if(state == 0){
                throw Exception('No puede ser menor que 0');
              }
              return state - 1;
            });
          },'2'),
        ],
      ),
    );
  }
}


Widget fabState(IconData icon, VoidCallback callback, String heroTag){
  return FloatingActionButton(
    heroTag: heroTag,
    onPressed: callback,
    child: Icon(icon),
  );
}
