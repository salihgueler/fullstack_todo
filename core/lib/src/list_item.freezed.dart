// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'list_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListItem _$ListItemFromJson(Map<String, dynamic> json) {
  return _ListItem.fromJson(json);
}

/// @nodoc
class _$ListItemTearOff {
  const _$ListItemTearOff();

  _ListItem call(
      {required String id, required String title, required bool isChecked}) {
    return _ListItem(
      id: id,
      title: title,
      isChecked: isChecked,
    );
  }

  ListItem fromJson(Map<String, Object> json) {
    return ListItem.fromJson(json);
  }
}

/// @nodoc
const $ListItem = _$ListItemTearOff();

/// @nodoc
mixin _$ListItem {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get isChecked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListItemCopyWith<ListItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListItemCopyWith<$Res> {
  factory $ListItemCopyWith(ListItem value, $Res Function(ListItem) then) =
      _$ListItemCopyWithImpl<$Res>;
  $Res call({String id, String title, bool isChecked});
}

/// @nodoc
class _$ListItemCopyWithImpl<$Res> implements $ListItemCopyWith<$Res> {
  _$ListItemCopyWithImpl(this._value, this._then);

  final ListItem _value;
  // ignore: unused_field
  final $Res Function(ListItem) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? isChecked = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isChecked: isChecked == freezed
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ListItemCopyWith<$Res> implements $ListItemCopyWith<$Res> {
  factory _$ListItemCopyWith(_ListItem value, $Res Function(_ListItem) then) =
      __$ListItemCopyWithImpl<$Res>;
  @override
  $Res call({String id, String title, bool isChecked});
}

/// @nodoc
class __$ListItemCopyWithImpl<$Res> extends _$ListItemCopyWithImpl<$Res>
    implements _$ListItemCopyWith<$Res> {
  __$ListItemCopyWithImpl(_ListItem _value, $Res Function(_ListItem) _then)
      : super(_value, (v) => _then(v as _ListItem));

  @override
  _ListItem get _value => super._value as _ListItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? isChecked = freezed,
  }) {
    return _then(_ListItem(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isChecked: isChecked == freezed
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ListItem implements _ListItem {
  _$_ListItem({required this.id, required this.title, required this.isChecked});

  factory _$_ListItem.fromJson(Map<String, dynamic> json) =>
      _$_$_ListItemFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final bool isChecked;

  @override
  String toString() {
    return 'ListItem(id: $id, title: $title, isChecked: $isChecked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListItem &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.isChecked, isChecked) ||
                const DeepCollectionEquality()
                    .equals(other.isChecked, isChecked)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(isChecked);

  @JsonKey(ignore: true)
  @override
  _$ListItemCopyWith<_ListItem> get copyWith =>
      __$ListItemCopyWithImpl<_ListItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ListItemToJson(this);
  }
}

abstract class _ListItem implements ListItem {
  factory _ListItem(
      {required String id,
      required String title,
      required bool isChecked}) = _$_ListItem;

  factory _ListItem.fromJson(Map<String, dynamic> json) = _$_ListItem.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  bool get isChecked => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ListItemCopyWith<_ListItem> get copyWith =>
      throw _privateConstructorUsedError;
}
