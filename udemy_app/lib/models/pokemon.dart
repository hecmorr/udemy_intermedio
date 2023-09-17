import 'package:udemy_app/models/models.dart';

class Pokemon {

  Pokemon({required this.name, required this.imgUrl});

  factory Pokemon.fromJson(Map<String, dynamic> json){

    final name = json['name'] as String;
    final imgUrl = json['sprites']['back_default'] as String;

    return Pokemon(name: name, imgUrl: imgUrl );
  }

  final String name;
  final String imgUrl;

  

}
