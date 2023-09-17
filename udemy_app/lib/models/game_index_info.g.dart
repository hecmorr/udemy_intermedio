// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_index_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameIndexInfo _$GameIndexInfoFromJson(Map<String, dynamic> json) =>
    GameIndexInfo(
      gameIndex: json['gameIndex'] as int,
      version: Version.fromJson(json['version'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GameIndexInfoToJson(GameIndexInfo instance) =>
    <String, dynamic>{
      'gameIndex': instance.gameIndex,
      'version': instance.version,
    };
