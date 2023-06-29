
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../datasource/firebase_datasource.dart';

final appointmentDatasourceProvider = Provider(
  (ref) => AppointmentDatasource(ref: ref),
);

class AppointmentDatasource extends CalendarDataSource {
  AppointmentDatasource({required this.ref});

  final Ref ref;

  AppointmentDataSource(List<Appointment> source) {
    appointments = source;
  }

  final _db = FirebaseFirestore.instance;

  FirestoreDatasource get _remote => ref.read(firestoreDatasourceProvider);

  static const companyCollectionId = 'company';
  static const usersCollectionId = 'users';
  static const staffsCollectionId = 'staffs';
  static const appointmentCollectionId = 'appointments';

  Future<void> addAppointment({
    required String uid,
    required String companyId,
    required DateTime startTime,
    required DateTime endTime,
    required Color color,
    required String subject,
    required String notes,
  }) async {
    final appointment = Appointment(id: _remote.createAppointmentId(companyId, uid), startTime: startTime, endTime: endTime, subject: subject, color: color,notes: notes,);
    final collection = _db.collection(companyCollectionId).doc(companyId).collection(staffsCollectionId).doc(uid).collection(appointmentCollectionId);
    await collection.add({
      'id': appointment.id,
      'startTime': appointment.startTime,
      'endTime': appointment.endTime,
      'subject': appointment.subject,
      'color': appointment.color.value,
      'notes' : appointment.notes,
    });
  }


  Stream<List<Appointment>> listenAppointment({
    required String uid,
    required String companyId,
  }) async* {
    final ref = _db
        .collection(companyCollectionId)
        .doc(companyId)
        .collection(staffsCollectionId)
        .doc(uid)
        .collection(appointmentCollectionId);

    final snapshot = await ref.get();
    final appointments = snapshot.docs.map((doc) {
      final data = doc.data();
      int colorValue = data['color'];
      Color color = Color(colorValue);
      return Appointment(
        id: data['id'],
        startTime: data['startTime'].toDate(),
        endTime: data['endTime'].toDate(),
        subject: data['subject'],
        color: color,
        notes: data['notes'],
      );
    }).toList();

    yield appointments;
  }
}
