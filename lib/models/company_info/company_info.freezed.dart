// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CompanyInfo _$CompanyInfoFromJson(Map<String, dynamic> json) {
  return _CompanyInfo.fromJson(json);
}

/// @nodoc
mixin _$CompanyInfo {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyInfoCopyWith<CompanyInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyInfoCopyWith<$Res> {
  factory $CompanyInfoCopyWith(
          CompanyInfo value, $Res Function(CompanyInfo) then) =
      _$CompanyInfoCopyWithImpl<$Res, CompanyInfo>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$CompanyInfoCopyWithImpl<$Res, $Val extends CompanyInfo>
    implements $CompanyInfoCopyWith<$Res> {
  _$CompanyInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CompanyInfoCopyWith<$Res>
    implements $CompanyInfoCopyWith<$Res> {
  factory _$$_CompanyInfoCopyWith(
          _$_CompanyInfo value, $Res Function(_$_CompanyInfo) then) =
      __$$_CompanyInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$_CompanyInfoCopyWithImpl<$Res>
    extends _$CompanyInfoCopyWithImpl<$Res, _$_CompanyInfo>
    implements _$$_CompanyInfoCopyWith<$Res> {
  __$$_CompanyInfoCopyWithImpl(
      _$_CompanyInfo _value, $Res Function(_$_CompanyInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_CompanyInfo(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CompanyInfo with DiagnosticableTreeMixin implements _CompanyInfo {
  const _$_CompanyInfo({required this.id, required this.name});

  factory _$_CompanyInfo.fromJson(Map<String, dynamic> json) =>
      _$$_CompanyInfoFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CompanyInfo(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CompanyInfo'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompanyInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CompanyInfoCopyWith<_$_CompanyInfo> get copyWith =>
      __$$_CompanyInfoCopyWithImpl<_$_CompanyInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CompanyInfoToJson(
      this,
    );
  }
}

abstract class _CompanyInfo implements CompanyInfo {
  const factory _CompanyInfo(
      {required final String id, required final String name}) = _$_CompanyInfo;

  factory _CompanyInfo.fromJson(Map<String, dynamic> json) =
      _$_CompanyInfo.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_CompanyInfoCopyWith<_$_CompanyInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
