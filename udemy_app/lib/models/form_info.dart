import 'package:json_annotation/json_annotation.dart';
part 'form_info.g.dart';

@JsonSerializable()
class FormInfo {

  FormInfo({
    required this.name,
    required this.url,
  });

  String name;
  String url;

  factory FormInfo.fromJson(Map<String, dynamic> json) => _$FormInfoFromJson(json);

  Map<String, dynamic> toJson() => _$FormInfoToJson(this);

}
