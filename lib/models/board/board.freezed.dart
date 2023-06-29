// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'board.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Board _$BoardFromJson(Map<String, dynamic> json) {
  return _Board.fromJson(json);
}

/// @nodoc
mixin _$Board {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get creatorId => throw _privateConstructorUsedError;
  DateTime get createTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoardCopyWith<Board> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardCopyWith<$Res> {
  factory $BoardCopyWith(Board value, $Res Function(Board) then) =
      _$BoardCopyWithImpl<$Res, Board>;
  @useResult
  $Res call(
      {String id,
      String title,
      String content,
      String creatorId,
      DateTime createTime});
}

/// @nodoc
class _$BoardCopyWithImpl<$Res, $Val extends Board>
    implements $BoardCopyWith<$Res> {
  _$BoardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? creatorId = null,
    Object? createTime = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      createTime: null == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BoardCopyWith<$Res> implements $BoardCopyWith<$Res> {
  factory _$$_BoardCopyWith(_$_Board value, $Res Function(_$_Board) then) =
      __$$_BoardCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String content,
      String creatorId,
      DateTime createTime});
}

/// @nodoc
class __$$_BoardCopyWithImpl<$Res> extends _$BoardCopyWithImpl<$Res, _$_Board>
    implements _$$_BoardCopyWith<$Res> {
  __$$_BoardCopyWithImpl(_$_Board _value, $Res Function(_$_Board) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? creatorId = null,
    Object? createTime = null,
  }) {
    return _then(_$_Board(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      createTime: null == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Board with DiagnosticableTreeMixin implements _Board {
  const _$_Board(
      {required this.id,
      required this.title,
      required this.content,
      required this.creatorId,
      required this.createTime});

  factory _$_Board.fromJson(Map<String, dynamic> json) =>
      _$$_BoardFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String content;
  @override
  final String creatorId;
  @override
  final DateTime createTime;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Board(id: $id, title: $title, content: $content, creatorId: $creatorId, createTime: $createTime)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Board'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('creatorId', creatorId))
      ..add(DiagnosticsProperty('createTime', createTime));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Board &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, content, creatorId, createTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BoardCopyWith<_$_Board> get copyWith =>
      __$$_BoardCopyWithImpl<_$_Board>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BoardToJson(
      this,
    );
  }
}

abstract class _Board implements Board {
  const factory _Board(
      {required final String id,
      required final String title,
      required final String content,
      required final String creatorId,
      required final DateTime createTime}) = _$_Board;

  factory _Board.fromJson(Map<String, dynamic> json) = _$_Board.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get content;
  @override
  String get creatorId;
  @override
  DateTime get createTime;
  @override
  @JsonKey(ignore: true)
  _$$_BoardCopyWith<_$_Board> get copyWith =>
      throw _privateConstructorUsedError;
}
