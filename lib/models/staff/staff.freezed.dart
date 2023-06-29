// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'staff.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Staff _$StaffFromJson(Map<String, dynamic> json) {
  return _Staff.fromJson(json);
}

/// @nodoc
mixin _$Staff {
  String get id => throw _privateConstructorUsedError;
  StaffInfo get staffInfo => throw _privateConstructorUsedError;
  List<Task> get task => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StaffCopyWith<Staff> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffCopyWith<$Res> {
  factory $StaffCopyWith(Staff value, $Res Function(Staff) then) =
      _$StaffCopyWithImpl<$Res, Staff>;
  @useResult
  $Res call({String id, StaffInfo staffInfo, List<Task> task});

  $StaffInfoCopyWith<$Res> get staffInfo;
}

/// @nodoc
class _$StaffCopyWithImpl<$Res, $Val extends Staff>
    implements $StaffCopyWith<$Res> {
  _$StaffCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? staffInfo = null,
    Object? task = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      staffInfo: null == staffInfo
          ? _value.staffInfo
          : staffInfo // ignore: cast_nullable_to_non_nullable
              as StaffInfo,
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as List<Task>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StaffInfoCopyWith<$Res> get staffInfo {
    return $StaffInfoCopyWith<$Res>(_value.staffInfo, (value) {
      return _then(_value.copyWith(staffInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StaffCopyWith<$Res> implements $StaffCopyWith<$Res> {
  factory _$$_StaffCopyWith(_$_Staff value, $Res Function(_$_Staff) then) =
      __$$_StaffCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, StaffInfo staffInfo, List<Task> task});

  @override
  $StaffInfoCopyWith<$Res> get staffInfo;
}

/// @nodoc
class __$$_StaffCopyWithImpl<$Res> extends _$StaffCopyWithImpl<$Res, _$_Staff>
    implements _$$_StaffCopyWith<$Res> {
  __$$_StaffCopyWithImpl(_$_Staff _value, $Res Function(_$_Staff) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? staffInfo = null,
    Object? task = null,
  }) {
    return _then(_$_Staff(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      staffInfo: null == staffInfo
          ? _value.staffInfo
          : staffInfo // ignore: cast_nullable_to_non_nullable
              as StaffInfo,
      task: null == task
          ? _value._task
          : task // ignore: cast_nullable_to_non_nullable
              as List<Task>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Staff with DiagnosticableTreeMixin implements _Staff {
  const _$_Staff(
      {required this.id,
      required this.staffInfo,
      final List<Task> task = const <Task>[]})
      : _task = task;

  factory _$_Staff.fromJson(Map<String, dynamic> json) =>
      _$$_StaffFromJson(json);

  @override
  final String id;
  @override
  final StaffInfo staffInfo;
  final List<Task> _task;
  @override
  @JsonKey()
  List<Task> get task {
    if (_task is EqualUnmodifiableListView) return _task;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_task);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Staff(id: $id, staffInfo: $staffInfo, task: $task)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Staff'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('staffInfo', staffInfo))
      ..add(DiagnosticsProperty('task', task));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Staff &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.staffInfo, staffInfo) ||
                other.staffInfo == staffInfo) &&
            const DeepCollectionEquality().equals(other._task, _task));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, staffInfo, const DeepCollectionEquality().hash(_task));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StaffCopyWith<_$_Staff> get copyWith =>
      __$$_StaffCopyWithImpl<_$_Staff>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StaffToJson(
      this,
    );
  }
}

abstract class _Staff implements Staff {
  const factory _Staff(
      {required final String id,
      required final StaffInfo staffInfo,
      final List<Task> task}) = _$_Staff;

  factory _Staff.fromJson(Map<String, dynamic> json) = _$_Staff.fromJson;

  @override
  String get id;
  @override
  StaffInfo get staffInfo;
  @override
  List<Task> get task;
  @override
  @JsonKey(ignore: true)
  _$$_StaffCopyWith<_$_Staff> get copyWith =>
      throw _privateConstructorUsedError;
}
