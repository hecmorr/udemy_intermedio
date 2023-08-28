import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:udemy_app/providers/providers.dart';

class StreamPage extends ConsumerWidget {
  const StreamPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final randomNames$ = ref.watch(streamNamesProvider);
    final titleStyle = Theme.of(context).textTheme.titleMedium;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream Provider'),
      ),
      body: randomNames$.when(
        data: (data) => Center(
          child: Text(data, style: titleStyle,),
        ),
        error: (error, stackTrace) => Text('Error $error'),
        loading: () => const Center(child: CircularProgressIndicator()),
     ),
    );
  }
}
