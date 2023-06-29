// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskState {
  String get requester => throw _privateConstructorUsedError;
  String get requesterId => throw _privateConstructorUsedError;
  String get personInCharger => throw _privateConstructorUsedError;
  String get personInChargerId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskStateCopyWith<TaskState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskStateCopyWith<$Res> {
  factory $TaskStateCopyWith(TaskState value, $Res Function(TaskState) then) =
      _$TaskStateCopyWithImpl<$Res, TaskState>;
  @useResult
  $Res call(
      {String requester,
      String requesterId,
      String personInCharger,
      String personInChargerId});
}

/// @nodoc
class _$TaskStateCopyWithImpl<$Res, $Val extends TaskState>
    implements $TaskStateCopyWith<$Res> {
  _$TaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requester = null,
    Object? requesterId = null,
    Object? personInCharger = null,
    Object? personInChargerId = null,
  }) {
    return _then(_value.copyWith(
      requester: null == requester
          ? _value.requester
          : requester // ignore: cast_nullable_to_non_nullable
              as String,
      requesterId: null == requesterId
          ? _value.requesterId
          : requesterId // ignore: cast_nullable_to_non_nullable
              as String,
      personInCharger: null == personInCharger
          ? _value.personInCharger
          : personInCharger // ignore: cast_nullable_to_non_nullable
              as String,
      personInChargerId: null == personInChargerId
          ? _value.personInChargerId
          : personInChargerId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TaskStateCopyWith<$Res> implements $TaskStateCopyWith<$Res> {
  factory _$$_TaskStateCopyWith(
          _$_TaskState value, $Res Function(_$_TaskState) then) =
      __$$_TaskStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String requester,
      String requesterId,
      String personInCharger,
      String personInChargerId});
}

/// @nodoc
class __$$_TaskStateCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$_TaskState>
    implements _$$_TaskStateCopyWith<$Res> {
  __$$_TaskStateCopyWithImpl(
      _$_TaskState _value, $Res Function(_$_TaskState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requester = null,
    Object? requesterId = null,
    Object? personInCharger = null,
    Object? personInChargerId = null,
  }) {
    return _then(_$_TaskState(
      requester: null == requester
          ? _value.requester
          : requester // ignore: cast_nullable_to_non_nullable
              as String,
      requesterId: null == requesterId
          ? _value.requesterId
          : requesterId // ignore: cast_nullable_to_non_nullable
              as String,
      personInCharger: null == personInCharger
          ? _value.personInCharger
          : personInCharger // ignore: cast_nullable_to_non_nullable
              as String,
      personInChargerId: null == personInChargerId
          ? _value.personInChargerId
          : personInChargerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TaskState with DiagnosticableTreeMixin implements _TaskState {
  const _$_TaskState(
      {this.requester = '依頼者を選択',
      this.requesterId = '',
      this.personInCharger = '担当者を選択',
      this.personInChargerId = ''});

  @override
  @JsonKey()
  final String requester;
  @override
  @JsonKey()
  final String requesterId;
  @override
  @JsonKey()
  final String personInCharger;
  @override
  @JsonKey()
  final String personInChargerId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskState(requester: $requester, requesterId: $requesterId, personInCharger: $personInCharger, personInChargerId: $personInChargerId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaskState'))
      ..add(DiagnosticsProperty('requester', requester))
      ..add(DiagnosticsProperty('requesterId', requesterId))
      ..add(DiagnosticsProperty('personInCharger', personInCharger))
      ..add(DiagnosticsProperty('personInChargerId', personInChargerId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskState &&
            (identical(other.requester, requester) ||
                other.requester == requester) &&
            (identical(other.requesterId, requesterId) ||
                other.requesterId == requesterId) &&
            (identical(other.personInCharger, personInCharger) ||
                other.personInCharger == personInCharger) &&
            (identical(other.personInChargerId, personInChargerId) ||
                other.personInChargerId == personInChargerId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, requester, requesterId, personInCharger, personInChargerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskStateCopyWith<_$_TaskState> get copyWith =>
      __$$_TaskStateCopyWithImpl<_$_TaskState>(this, _$identity);
}

abstract class _TaskState implements TaskState {
  const factory _TaskState(
      {final String requester,
      final String requesterId,
      final String personInCharger,
      final String personInChargerId}) = _$_TaskState;

  @override
  String get requester;
  @override
  String get requesterId;
  @override
  String get personInCharger;
  @override
  String get personInChargerId;
  @override
  @JsonKey(ignore: true)
  _$$_TaskStateCopyWith<_$_TaskState> get copyWith =>
      throw _privateConstructorUsedError;
}
