// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppointmentState {
  bool get isOn => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;
  List<Appointment> get appointments => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppointmentStateCopyWith<AppointmentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentStateCopyWith<$Res> {
  factory $AppointmentStateCopyWith(
          AppointmentState value, $Res Function(AppointmentState) then) =
      _$AppointmentStateCopyWithImpl<$Res, AppointmentState>;
  @useResult
  $Res call(
      {bool isOn,
      Color color,
      DateTime startTime,
      DateTime endTime,
      List<Appointment> appointments});
}

/// @nodoc
class _$AppointmentStateCopyWithImpl<$Res, $Val extends AppointmentState>
    implements $AppointmentStateCopyWith<$Res> {
  _$AppointmentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOn = null,
    Object? color = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? appointments = null,
  }) {
    return _then(_value.copyWith(
      isOn: null == isOn
          ? _value.isOn
          : isOn // ignore: cast_nullable_to_non_nullable
              as bool,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      appointments: null == appointments
          ? _value.appointments
          : appointments // ignore: cast_nullable_to_non_nullable
              as List<Appointment>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppointmentStateCopyWith<$Res>
    implements $AppointmentStateCopyWith<$Res> {
  factory _$$_AppointmentStateCopyWith(
          _$_AppointmentState value, $Res Function(_$_AppointmentState) then) =
      __$$_AppointmentStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isOn,
      Color color,
      DateTime startTime,
      DateTime endTime,
      List<Appointment> appointments});
}

/// @nodoc
class __$$_AppointmentStateCopyWithImpl<$Res>
    extends _$AppointmentStateCopyWithImpl<$Res, _$_AppointmentState>
    implements _$$_AppointmentStateCopyWith<$Res> {
  __$$_AppointmentStateCopyWithImpl(
      _$_AppointmentState _value, $Res Function(_$_AppointmentState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOn = null,
    Object? color = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? appointments = null,
  }) {
    return _then(_$_AppointmentState(
      isOn: null == isOn
          ? _value.isOn
          : isOn // ignore: cast_nullable_to_non_nullable
              as bool,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      appointments: null == appointments
          ? _value._appointments
          : appointments // ignore: cast_nullable_to_non_nullable
              as List<Appointment>,
    ));
  }
}

/// @nodoc

class _$_AppointmentState implements _AppointmentState {
  const _$_AppointmentState(
      {this.isOn = true,
      this.color = Colors.lightBlue,
      required this.startTime,
      required this.endTime,
      final List<Appointment> appointments = const <Appointment>[]})
      : _appointments = appointments;

  @override
  @JsonKey()
  final bool isOn;
  @override
  @JsonKey()
  final Color color;
  @override
  final DateTime startTime;
  @override
  final DateTime endTime;
  final List<Appointment> _appointments;
  @override
  @JsonKey()
  List<Appointment> get appointments {
    if (_appointments is EqualUnmodifiableListView) return _appointments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_appointments);
  }

  @override
  String toString() {
    return 'AppointmentState(isOn: $isOn, color: $color, startTime: $startTime, endTime: $endTime, appointments: $appointments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppointmentState &&
            (identical(other.isOn, isOn) || other.isOn == isOn) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            const DeepCollectionEquality()
                .equals(other._appointments, _appointments));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isOn, color, startTime, endTime,
      const DeepCollectionEquality().hash(_appointments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppointmentStateCopyWith<_$_AppointmentState> get copyWith =>
      __$$_AppointmentStateCopyWithImpl<_$_AppointmentState>(this, _$identity);
}

abstract class _AppointmentState implements AppointmentState {
  const factory _AppointmentState(
      {final bool isOn,
      final Color color,
      required final DateTime startTime,
      required final DateTime endTime,
      final List<Appointment> appointments}) = _$_AppointmentState;

  @override
  bool get isOn;
  @override
  Color get color;
  @override
  DateTime get startTime;
  @override
  DateTime get endTime;
  @override
  List<Appointment> get appointments;
  @override
  @JsonKey(ignore: true)
  _$$_AppointmentStateCopyWith<_$_AppointmentState> get copyWith =>
      throw _privateConstructorUsedError;
}
