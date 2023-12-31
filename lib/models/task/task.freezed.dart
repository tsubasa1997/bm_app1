// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Task _$TaskFromJson(Map<String, dynamic> json) {
  return _Task.fromJson(json);
}

/// @nodoc
mixin _$Task {
  String get id => throw _privateConstructorUsedError;
  String get taskTitle => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;
  String get requesterId => throw _privateConstructorUsedError;
  String get personInChargerId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res, Task>;
  @useResult
  $Res call(
      {String id,
      String taskTitle,
      String note,
      String requesterId,
      String personInChargerId});
}

/// @nodoc
class _$TaskCopyWithImpl<$Res, $Val extends Task>
    implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? taskTitle = null,
    Object? note = null,
    Object? requesterId = null,
    Object? personInChargerId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      taskTitle: null == taskTitle
          ? _value.taskTitle
          : taskTitle // ignore: cast_nullable_to_non_nullable
              as String,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      requesterId: null == requesterId
          ? _value.requesterId
          : requesterId // ignore: cast_nullable_to_non_nullable
              as String,
      personInChargerId: null == personInChargerId
          ? _value.personInChargerId
          : personInChargerId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TaskCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$_TaskCopyWith(_$_Task value, $Res Function(_$_Task) then) =
      __$$_TaskCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String taskTitle,
      String note,
      String requesterId,
      String personInChargerId});
}

/// @nodoc
class __$$_TaskCopyWithImpl<$Res> extends _$TaskCopyWithImpl<$Res, _$_Task>
    implements _$$_TaskCopyWith<$Res> {
  __$$_TaskCopyWithImpl(_$_Task _value, $Res Function(_$_Task) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? taskTitle = null,
    Object? note = null,
    Object? requesterId = null,
    Object? personInChargerId = null,
  }) {
    return _then(_$_Task(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      taskTitle: null == taskTitle
          ? _value.taskTitle
          : taskTitle // ignore: cast_nullable_to_non_nullable
              as String,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      requesterId: null == requesterId
          ? _value.requesterId
          : requesterId // ignore: cast_nullable_to_non_nullable
              as String,
      personInChargerId: null == personInChargerId
          ? _value.personInChargerId
          : personInChargerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Task with DiagnosticableTreeMixin implements _Task {
  const _$_Task(
      {required this.id,
      required this.taskTitle,
      required this.note,
      required this.requesterId,
      required this.personInChargerId});

  factory _$_Task.fromJson(Map<String, dynamic> json) => _$$_TaskFromJson(json);

  @override
  final String id;
  @override
  final String taskTitle;
  @override
  final String note;
  @override
  final String requesterId;
  @override
  final String personInChargerId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Task(id: $id, taskTitle: $taskTitle, note: $note, requesterId: $requesterId, personInChargerId: $personInChargerId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Task'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('taskTitle', taskTitle))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('requesterId', requesterId))
      ..add(DiagnosticsProperty('personInChargerId', personInChargerId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Task &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.taskTitle, taskTitle) ||
                other.taskTitle == taskTitle) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.requesterId, requesterId) ||
                other.requesterId == requesterId) &&
            (identical(other.personInChargerId, personInChargerId) ||
                other.personInChargerId == personInChargerId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, taskTitle, note, requesterId, personInChargerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskCopyWith<_$_Task> get copyWith =>
      __$$_TaskCopyWithImpl<_$_Task>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskToJson(
      this,
    );
  }
}

abstract class _Task implements Task {
  const factory _Task(
      {required final String id,
      required final String taskTitle,
      required final String note,
      required final String requesterId,
      required final String personInChargerId}) = _$_Task;

  factory _Task.fromJson(Map<String, dynamic> json) = _$_Task.fromJson;

  @override
  String get id;
  @override
  String get taskTitle;
  @override
  String get note;
  @override
  String get requesterId;
  @override
  String get personInChargerId;
  @override
  @JsonKey(ignore: true)
  _$$_TaskCopyWith<_$_Task> get copyWith => throw _privateConstructorUsedError;
}
