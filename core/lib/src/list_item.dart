import 'package:json_annotation/json_annotation.dart';

part 'list_item.g.dart';

@JsonSerializable()
class ListItem {
  ListItem({
    required this.id,
    required this.title,
    required this.isChecked,
  });

  final int id;
  final String title;
  final bool isChecked;

  factory ListItem.fromJson(Map<String, dynamic> json) =>
      _$ListItemFromJson(json);

  Map<String, dynamic> toJson() => _$ListItemToJson(this);
}
