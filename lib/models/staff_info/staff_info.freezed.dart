// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'staff_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StaffInfo _$StaffInfoFromJson(Map<String, dynamic> json) {
  return _StaffInfo.fromJson(json);
}

/// @nodoc
mixin _$StaffInfo {
  String get id => throw _privateConstructorUsedError;
  String get companyId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get authority => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StaffInfoCopyWith<StaffInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffInfoCopyWith<$Res> {
  factory $StaffInfoCopyWith(StaffInfo value, $Res Function(StaffInfo) then) =
      _$StaffInfoCopyWithImpl<$Res, StaffInfo>;
  @useResult
  $Res call({String id, String companyId, String name, String authority});
}

/// @nodoc
class _$StaffInfoCopyWithImpl<$Res, $Val extends StaffInfo>
    implements $StaffInfoCopyWith<$Res> {
  _$StaffInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? companyId = null,
    Object? name = null,
    Object? authority = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      companyId: null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      authority: null == authority
          ? _value.authority
          : authority // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StaffInfoCopyWith<$Res> implements $StaffInfoCopyWith<$Res> {
  factory _$$_StaffInfoCopyWith(
          _$_StaffInfo value, $Res Function(_$_StaffInfo) then) =
      __$$_StaffInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String companyId, String name, String authority});
}

/// @nodoc
class __$$_StaffInfoCopyWithImpl<$Res>
    extends _$StaffInfoCopyWithImpl<$Res, _$_StaffInfo>
    implements _$$_StaffInfoCopyWith<$Res> {
  __$$_StaffInfoCopyWithImpl(
      _$_StaffInfo _value, $Res Function(_$_StaffInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? companyId = null,
    Object? name = null,
    Object? authority = null,
  }) {
    return _then(_$_StaffInfo(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      companyId: null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      authority: null == authority
          ? _value.authority
          : authority // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StaffInfo with DiagnosticableTreeMixin implements _StaffInfo {
  const _$_StaffInfo(
      {required this.id,
      required this.companyId,
      required this.name,
      required this.authority});

  factory _$_StaffInfo.fromJson(Map<String, dynamic> json) =>
      _$$_StaffInfoFromJson(json);

  @override
  final String id;
  @override
  final String companyId;
  @override
  final String name;
  @override
  final String authority;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StaffInfo(id: $id, companyId: $companyId, name: $name, authority: $authority)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StaffInfo'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('companyId', companyId))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('authority', authority));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StaffInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.authority, authority) ||
                other.authority == authority));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, companyId, name, authority);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StaffInfoCopyWith<_$_StaffInfo> get copyWith =>
      __$$_StaffInfoCopyWithImpl<_$_StaffInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StaffInfoToJson(
      this,
    );
  }
}

abstract class _StaffInfo implements StaffInfo {
  const factory _StaffInfo(
      {required final String id,
      required final String companyId,
      required final String name,
      required final String authority}) = _$_StaffInfo;

  factory _StaffInfo.fromJson(Map<String, dynamic> json) =
      _$_StaffInfo.fromJson;

  @override
  String get id;
  @override
  String get companyId;
  @override
  String get name;
  @override
  String get authority;
  @override
  @JsonKey(ignore: true)
  _$$_StaffInfoCopyWith<_$_StaffInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
