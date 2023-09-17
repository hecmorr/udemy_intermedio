import 'package:json_annotation/json_annotation.dart';
part 'sprite.g.dart';

@JsonSerializable()
class Sprite {


  Sprite({
    required this.backDefault,
    required this.backFemale,
    required this.backShiny,
    required this.backShinyFemale,
    required this.frontDefault,
    required this.frontFemale,
    required this.frontShiny,
    required this.frontShinyFemale,

  });

  @JsonKey(name: 'back_default')
  String backDefault;
  String backFemale;
  String backShiny;
  String backShinyFemale;
  String frontDefault;
  String frontFemale;
  String frontShiny;
  String frontShinyFemale;

  factory Sprite.fromJson(Map<String, dynamic> json) => _$SpriteFromJson(json);
  
  Map<String, dynamic> toJson() => _$SpriteToJson(this);
}