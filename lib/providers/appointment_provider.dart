import 'package:bm_app/repositorys/appointment_datasource.dart';
import 'package:bm_app/repositorys/appointment_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../models/staff/staff.dart';

part 'appointment_provider.freezed.dart';

@freezed
class AppointmentState with _$AppointmentState {
  const factory AppointmentState({
    required String uid,
    required String companyId,
  }) = _AppointmentState;
}

final listenAppointmentProvider = StreamProvider.autoDispose.family<List<Appointment>, AppointmentState>(
  (ref, appointmentState) => ref.watch(appointmentDatasourceProvider).listenAppointment(uid: appointmentState.uid, companyId: appointmentState.companyId),
);
