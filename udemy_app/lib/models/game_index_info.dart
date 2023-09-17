import 'package:json_annotation/json_annotation.dart';
import 'package:udemy_app/models/version.dart';
part 'game_index_info.g.dart';

@JsonSerializable()
class GameIndexInfo {

  GameIndexInfo({
    required this.gameIndex,
    required this.version,
  });
  
  int gameIndex;
  Version version;

  factory GameIndexInfo.fromJson(Map<String, dynamic> json) => _$GameIndexInfoFromJson(json);
  
  Map<String, dynamic> toJson() => _$GameIndexInfoToJson(this);
}
