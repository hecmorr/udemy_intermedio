import 'package:json_annotation/json_annotation.dart';
import 'package:udemy_app/models/ability.dart';
part 'ability_info.g.dart';

@JsonSerializable()
class AbilityInfo {

  AbilityInfo({
    required this.ability,
    required this.isHidden,
    required this.slot,
  });
  final Ability ability;
  final bool isHidden;
  final int slot;

  factory AbilityInfo.fromJson(Map<String, dynamic> json) => _$AbilityInfoFromJson(json);

  Map<String, dynamic> toJson() => _$AbilityInfoToJson(this);

}
