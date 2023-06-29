import 'package:bm_app/repositorys/appointment_datasource.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import '../repositorys/appointment_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment_controller.freezed.dart';

@freezed
class AppointmentState with _$AppointmentState {
  const factory AppointmentState({
    @Default(true) bool isOn,
    @Default(Colors.lightBlue) Color color,
    required DateTime startTime,
    required DateTime endTime,
    @Default(<Appointment>[]) List<Appointment> appointments,
  }) = _AppointmentState;
}

final appointmentProvider = StateNotifierProvider.autoDispose<AppointmentNotifier, AppointmentState>(
  (read) => AppointmentNotifier(ref: read),
);

class AppointmentNotifier extends StateNotifier<AppointmentState> {
  AppointmentNotifier({required this.ref})
      : super(AppointmentState(
          startTime: DateTime.now(),
          endTime: DateTime.now(),
        ));

  final Ref ref;


  AppointmentDatasource get _appointmentDatasource => ref.read(appointmentDatasourceProvider);

  Future<void> addAppointment({
    required String uid,
    required String companyId,
    required DateTime startTime,
    required DateTime endTime,
    required String subject,
    required Color color,
    required String notes,
  }) async {
    await _appointmentDatasource.addAppointment(
      uid: uid,
      companyId: companyId,
      startTime: startTime,
      endTime: endTime,
      color: color,
      subject: subject,
      notes: notes,
    );
  }


  Future<void> changeColor({
    required Color color,
  }) async {
    state = state.copyWith(color: color);
  }

  Future<void> editStartTime({
    required DateTime time,
  }) async {
    state = state.copyWith(startTime: time);
    state = state.copyWith(endTime: time);
  }

  Future<void> editEndTime({
    required DateTime time,
  }) async {
    state = state.copyWith(endTime: time);
  }
}
