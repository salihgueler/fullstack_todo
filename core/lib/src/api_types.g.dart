// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TodoRequest _$TodoRequestFromJson(Map<String, dynamic> json) {
  return TodoRequest(
    id: json['id'] as int,
    title: json['title'] as String,
    isChecked: json['isChecked'] as bool,
  );
}

Map<String, dynamic> _$TodoRequestToJson(TodoRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'isChecked': instance.isChecked,
    };

TodoResponse _$TodoResponseFromJson(Map<String, dynamic> json) {
  return TodoResponse(
    listItems: (json['listItems'] as List<dynamic>)
        .map((e) => ListItem.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$TodoResponseToJson(TodoResponse instance) =>
    <String, dynamic>{
      'listItems': instance.listItems,
    };
