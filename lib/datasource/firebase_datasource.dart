import 'package:bm_app/models/company/company.dart';
import 'package:bm_app/models/staff_info/staff_info.dart';
import 'package:bm_app/models/task/task.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../common/exceptions/not_find_user_exception.dart';
import '../models/board/board.dart';
import '../models/staff/staff.dart';
import '../models/user/user.dart';

final firestoreDatasourceProvider = Provider(
  (_) => FirestoreDatasource(),
);

class FirestoreDatasource {
  final _db = FirebaseFirestore.instance;

  static const companyCollectionId = 'company';
  static const usersCollectionId = 'users';
  static const staffsCollectionId = 'staffs';
  static const appointmentCollectionId = 'appointments';
  static const taskCollectionId = 'tasks';
  static const boardCollectionId = 'boards';

  String createCompanyId() => _db.collection(companyCollectionId).doc().id;

  String createTaskId(String companyId, String uid) =>
      _db.collection(companyCollectionId).doc(companyId).collection(staffsCollectionId).doc(uid).collection(taskCollectionId).doc().id;

  String createAppointmentId(String companyId, String uid) =>
      _db.collection(companyCollectionId).doc(companyId).collection(staffsCollectionId).doc(uid).collection(appointmentCollectionId).doc().id;

  String createBoardId(String companyId) => _db.collection(companyCollectionId).doc(companyId).collection(boardCollectionId).doc().id;

  Future<void> createCompany(Company company) async {
    final ref = _db.collection(companyCollectionId).doc(company.id);
    await ref.set(company.toJson());
  }

  Future<void> createTask(String companyId, Task task) async {
    final ref = _db.collection(companyCollectionId).doc(companyId).collection(staffsCollectionId).doc(task.personInChargerId).collection(taskCollectionId).doc(task.id);
    await ref.set(task.toJson());
  }

  Future<void> createBoard(String companyId, Board board) async {
    final ref = _db
        .collection(companyCollectionId)
        .doc(companyId)
        .collection(boardCollectionId)
        .doc(board.id);
    await ref.set(board.toJson());
  }

  Future<void> deleteTask(
    String companyId,
    String uid,
    String taskId,
  ) async {
    final ref = _db.collection(companyCollectionId).doc(companyId).collection(staffsCollectionId).doc(uid).collection(taskCollectionId).doc(taskId);
    await ref.delete();
  }

  Future<Company> fetchCompany(String companyId) async {
    final ref = _db.collection(companyCollectionId).doc(companyId);
    final doc = await ref.get();
    final json = doc.data();
    if (json == null) {
      throw NotFindReferenceException(ref: ref);
    }
    return Company.fromJson(json);
  }

  Stream<Company> listenCompany(String companyId) async* {
    final ref = _db.collection(companyCollectionId).doc(companyId);
    final snap = ref.snapshots();
    yield* snap.map((event) {
      final json = event.data();
      if (json == null) {
        throw NotFindReferenceException(ref: ref);
      }
      return Company.fromJson(json);
    });
  }

  Future<User> fetchUser(String uid) async {
    final ref = _db.collection(usersCollectionId).doc(uid);
    final doc = await ref.get();
    final json = doc.data();
    if (json == null) {
      throw NotFindReferenceException(ref: ref);
    }
    return User.fromJson(json);
  }

  Future<StaffInfo> fetchStaffInfo({
    required String companyId,
    required String uid,
  }) async {
    final ref = _db.collection(companyCollectionId).doc(companyId).collection(staffsCollectionId).doc(uid);
    final doc = await ref.get();
    final json = doc.data();
    if (json == null) {
      throw NotFindReferenceException(ref: ref);
    }
    return StaffInfo.fromJson(json);
  }

  Future<Staff> fetchStaff({
    required String companyId,
    required String uid,
  }) async {
    final ref = _db.collection(companyCollectionId).doc(companyId).collection(staffsCollectionId).doc(uid);
    final doc = await ref.get();
    final json = doc.data();
    if (json == null) {
      throw NotFindReferenceException(ref: ref);
    }
    return Staff.fromJson(json);
  }

  Stream<StaffInfo> listenStaffInfo({
    required String companyId,
    required String uid,
  }) async* {
    final ref = _db.collection(companyCollectionId).doc(companyId).collection(staffsCollectionId).doc(uid);
    yield* ref.snapshots().map((event) {
      final json = event.data();
      if (json == null) {
        throw NotFindReferenceException(ref: ref);
      }
      return StaffInfo.fromJson(json);
    });
  }

  Stream<List<StaffInfo>> listenStaffs(String companyId) async* {
    final ref = _db.collection(companyCollectionId).doc(companyId).collection(staffsCollectionId);
    yield* ref.snapshots().map((event) {
      return event.docs.map((e) {
        final json = e.data();
        return StaffInfo.fromJson(json);
      }).toList();
    });
  }

  Future<List<StaffInfo>> fetchStaffs(String companyId) async {
    final ref = _db.collection(companyCollectionId).doc(companyId).collection(staffsCollectionId);
    final snapShot = await ref.get();
    final staffs = snapShot.docs.map((e) {
      final json = e.data();
      return StaffInfo.fromJson(json);
    });
    return staffs.toList();
  }

  Stream<List<Task>> listenTasks(String companyId, String staffId) async* {
    final ref = _db.collection(companyCollectionId).doc(companyId).collection(staffsCollectionId).doc(staffId).collection(taskCollectionId);
    yield* ref.snapshots().map((event) {
      return event.docs.map((e) {
        final json = e.data();
        return Task.fromJson(json);
      }).toList();
    });
  }

  Stream<List<Board>> listenBoard(String companyId) async* {
    final ref = _db
        .collection(companyCollectionId)
        .doc(companyId)
        .collection(boardCollectionId)
        .orderBy('createTime', descending:  true);
    yield* ref.snapshots().map((event) {
      return event.docs.map((e) {
        final json = e.data();
        return Board.fromJson(json);
      }).toList();
    });
  }
}
