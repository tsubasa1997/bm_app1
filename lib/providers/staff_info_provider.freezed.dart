// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'staff_info_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StaffInfoState {
  String get uid => throw _privateConstructorUsedError;
  String get companyId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StaffInfoStateCopyWith<StaffInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffInfoStateCopyWith<$Res> {
  factory $StaffInfoStateCopyWith(
          StaffInfoState value, $Res Function(StaffInfoState) then) =
      _$StaffInfoStateCopyWithImpl<$Res, StaffInfoState>;
  @useResult
  $Res call({String uid, String companyId});
}

/// @nodoc
class _$StaffInfoStateCopyWithImpl<$Res, $Val extends StaffInfoState>
    implements $StaffInfoStateCopyWith<$Res> {
  _$StaffInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? companyId = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      companyId: null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StaffInfoStateCopyWith<$Res>
    implements $StaffInfoStateCopyWith<$Res> {
  factory _$$_StaffInfoStateCopyWith(
          _$_StaffInfoState value, $Res Function(_$_StaffInfoState) then) =
      __$$_StaffInfoStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uid, String companyId});
}

/// @nodoc
class __$$_StaffInfoStateCopyWithImpl<$Res>
    extends _$StaffInfoStateCopyWithImpl<$Res, _$_StaffInfoState>
    implements _$$_StaffInfoStateCopyWith<$Res> {
  __$$_StaffInfoStateCopyWithImpl(
      _$_StaffInfoState _value, $Res Function(_$_StaffInfoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? companyId = null,
  }) {
    return _then(_$_StaffInfoState(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      companyId: null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_StaffInfoState
    with DiagnosticableTreeMixin
    implements _StaffInfoState {
  const _$_StaffInfoState({required this.uid, required this.companyId});

  @override
  final String uid;
  @override
  final String companyId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StaffInfoState(uid: $uid, companyId: $companyId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StaffInfoState'))
      ..add(DiagnosticsProperty('uid', uid))
      ..add(DiagnosticsProperty('companyId', companyId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StaffInfoState &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid, companyId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StaffInfoStateCopyWith<_$_StaffInfoState> get copyWith =>
      __$$_StaffInfoStateCopyWithImpl<_$_StaffInfoState>(this, _$identity);
}

abstract class _StaffInfoState implements StaffInfoState {
  const factory _StaffInfoState(
      {required final String uid,
      required final String companyId}) = _$_StaffInfoState;

  @override
  String get uid;
  @override
  String get companyId;
  @override
  @JsonKey(ignore: true)
  _$$_StaffInfoStateCopyWith<_$_StaffInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}
