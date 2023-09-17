// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ability_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AbilityInfo _$AbilityInfoFromJson(Map<String, dynamic> json) => AbilityInfo(
      ability: Ability.fromJson(json['ability'] as Map<String, dynamic>),
      isHidden: json['isHidden'] as bool,
      slot: json['slot'] as int,
    );

Map<String, dynamic> _$AbilityInfoToJson(AbilityInfo instance) =>
    <String, dynamic>{
      'ability': instance.ability,
      'isHidden': instance.isHidden,
      'slot': instance.slot,
    };
