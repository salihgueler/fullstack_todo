// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListItem _$ListItemFromJson(Map<String, dynamic> json) {
  return ListItem(
    id: json['id'] as String,
    title: json['title'] as String,
    isChecked: json['isChecked'] as bool,
  );
}

Map<String, dynamic> _$ListItemToJson(ListItem instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'isChecked': instance.isChecked,
    };
