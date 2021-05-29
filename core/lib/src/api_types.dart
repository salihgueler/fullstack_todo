import 'package:core/src/list_item.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_types.g.dart';

@JsonSerializable()
class TodoRequest {
  TodoRequest({
    required this.id,
    required this.title,
    required this.isChecked,
  });

  final String id;
  final String title;
  final bool isChecked;

  factory TodoRequest.fromJson(Map<String, dynamic> json) =>
      _$TodoRequestFromJson(json);

  Map<String, dynamic> toJson() => _$TodoRequestToJson(this);
}

@JsonSerializable()
class TodoResponse {
  final List<ListItem> listItems;

  TodoResponse({
    required this.listItems,
  });

  factory TodoResponse.fromJson(Map<String, dynamic> json) =>
      _$TodoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TodoResponseToJson(this);
}
