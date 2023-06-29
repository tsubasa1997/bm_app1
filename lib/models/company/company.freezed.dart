// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Company _$CompanyFromJson(Map<String, dynamic> json) {
  return _Company.fromJson(json);
}

/// @nodoc
mixin _$Company {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<StaffInfo> get staffInfo => throw _privateConstructorUsedError;
  List<Staff> get staff => throw _privateConstructorUsedError;
  List<Board> get board => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyCopyWith<Company> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyCopyWith<$Res> {
  factory $CompanyCopyWith(Company value, $Res Function(Company) then) =
      _$CompanyCopyWithImpl<$Res, Company>;
  @useResult
  $Res call(
      {String id,
      String name,
      List<StaffInfo> staffInfo,
      List<Staff> staff,
      List<Board> board});
}

/// @nodoc
class _$CompanyCopyWithImpl<$Res, $Val extends Company>
    implements $CompanyCopyWith<$Res> {
  _$CompanyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? staffInfo = null,
    Object? staff = null,
    Object? board = null,
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
      staffInfo: null == staffInfo
          ? _value.staffInfo
          : staffInfo // ignore: cast_nullable_to_non_nullable
              as List<StaffInfo>,
      staff: null == staff
          ? _value.staff
          : staff // ignore: cast_nullable_to_non_nullable
              as List<Staff>,
      board: null == board
          ? _value.board
          : board // ignore: cast_nullable_to_non_nullable
              as List<Board>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CompanyCopyWith<$Res> implements $CompanyCopyWith<$Res> {
  factory _$$_CompanyCopyWith(
          _$_Company value, $Res Function(_$_Company) then) =
      __$$_CompanyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      List<StaffInfo> staffInfo,
      List<Staff> staff,
      List<Board> board});
}

/// @nodoc
class __$$_CompanyCopyWithImpl<$Res>
    extends _$CompanyCopyWithImpl<$Res, _$_Company>
    implements _$$_CompanyCopyWith<$Res> {
  __$$_CompanyCopyWithImpl(_$_Company _value, $Res Function(_$_Company) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? staffInfo = null,
    Object? staff = null,
    Object? board = null,
  }) {
    return _then(_$_Company(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      staffInfo: null == staffInfo
          ? _value._staffInfo
          : staffInfo // ignore: cast_nullable_to_non_nullable
              as List<StaffInfo>,
      staff: null == staff
          ? _value._staff
          : staff // ignore: cast_nullable_to_non_nullable
              as List<Staff>,
      board: null == board
          ? _value._board
          : board // ignore: cast_nullable_to_non_nullable
              as List<Board>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Company with DiagnosticableTreeMixin implements _Company {
  const _$_Company(
      {required this.id,
      required this.name,
      final List<StaffInfo> staffInfo = const <StaffInfo>[],
      final List<Staff> staff = const <Staff>[],
      final List<Board> board = const <Board>[]})
      : _staffInfo = staffInfo,
        _staff = staff,
        _board = board;

  factory _$_Company.fromJson(Map<String, dynamic> json) =>
      _$$_CompanyFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<StaffInfo> _staffInfo;
  @override
  @JsonKey()
  List<StaffInfo> get staffInfo {
    if (_staffInfo is EqualUnmodifiableListView) return _staffInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_staffInfo);
  }

  final List<Staff> _staff;
  @override
  @JsonKey()
  List<Staff> get staff {
    if (_staff is EqualUnmodifiableListView) return _staff;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_staff);
  }

  final List<Board> _board;
  @override
  @JsonKey()
  List<Board> get board {
    if (_board is EqualUnmodifiableListView) return _board;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_board);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Company(id: $id, name: $name, staffInfo: $staffInfo, staff: $staff, board: $board)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Company'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('staffInfo', staffInfo))
      ..add(DiagnosticsProperty('staff', staff))
      ..add(DiagnosticsProperty('board', board));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Company &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._staffInfo, _staffInfo) &&
            const DeepCollectionEquality().equals(other._staff, _staff) &&
            const DeepCollectionEquality().equals(other._board, _board));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_staffInfo),
      const DeepCollectionEquality().hash(_staff),
      const DeepCollectionEquality().hash(_board));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CompanyCopyWith<_$_Company> get copyWith =>
      __$$_CompanyCopyWithImpl<_$_Company>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CompanyToJson(
      this,
    );
  }
}

abstract class _Company implements Company {
  const factory _Company(
      {required final String id,
      required final String name,
      final List<StaffInfo> staffInfo,
      final List<Staff> staff,
      final List<Board> board}) = _$_Company;

  factory _Company.fromJson(Map<String, dynamic> json) = _$_Company.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<StaffInfo> get staffInfo;
  @override
  List<Staff> get staff;
  @override
  List<Board> get board;
  @override
  @JsonKey(ignore: true)
  _$$_CompanyCopyWith<_$_Company> get copyWith =>
      throw _privateConstructorUsedError;
}
