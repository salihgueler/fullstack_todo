import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_item.g.dart';

part 'list_item.freezed.dart';

@freezed
class ListItem with _$ListItem {
  @JsonSerializable(explicitToJson: true)
  factory ListItem({
    required String id,
    required String title,
    required bool isChecked,
  }) = _ListItem;

  factory ListItem.fromJson(Map<String, dynamic> json) =>
      _$ListItemFromJson(json);
}
