import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:udemy_app/config/config.dart';

final streamNamesProvider = StreamProvider.autoDispose<String>((ref) async* {

  //Wait for names to be emitted by randomNamesStream
  await for (final name in RandomGenerator.randomNamesStream()){
    yield name;
  } 



});
