import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:udemy_app/pages/providers/random_name_provider.dart';

class StateProviderPage extends ConsumerWidget {
  const StateProviderPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final titleStyle = Theme.of(context).textTheme.titleMedium;
    //reactive variable that will be changing alongside the randomNameProvider
    final name = ref.watch(randomNameProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('State Provider'),
      ),
      body: Center(child: Text(name, style: titleStyle,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.refresh_rounded),
        //Whenever inside a function, just read 
        onPressed: () {
          //Notifies widgets and provider about changes
          ref.invalidate(randomNameProvider);
        }, 
      ),
    );
  }
}
