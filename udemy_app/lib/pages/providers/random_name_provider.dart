import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:udemy_app/config/config.dart';

final randomNameProvider = StateProvider.autoDispose<String>((ref) {
  return RandomGenerator.getRandomName();
});
