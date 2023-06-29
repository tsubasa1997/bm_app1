import 'dart:ui';

import 'package:bm_app/models/staff/staff.dart';
import 'package:bm_app/repositorys/appointment_datasource.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../datasource/firebase_datasource.dart';

final appointmentRepositoryProvider = Provider(
      (ref) => AppointmentRepository(ref: ref),
);

class AppointmentRepository {
  const AppointmentRepository({required this.ref});

  final Ref ref;

  FirestoreDatasource get _remote => ref.read(firestoreDatasourceProvider);

  AppointmentDatasource get _appointData => ref.read(appointmentDatasourceProvider);




}
