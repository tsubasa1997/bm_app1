import 'package:bm_app/models/staff/staff.dart';
import 'package:bm_app/models/staff_info/staff_info.dart';
import 'package:bm_app/models/task/task.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../datasource/firebase_datasource.dart';

final taskRepositoryProvider = Provider(
  (ref) => TaskRepository(ref: ref),
);

class TaskRepository {
  const TaskRepository({required this.ref});

  final Ref ref;

  FirestoreDatasource get _remote => ref.read(firestoreDatasourceProvider);

  Future<void> taskCreate({
    required String companyId,
    required String uid,
    required String taskTitle,
    required String note,
    required String requesterId,
    required String personInChargerId,
  }) async {
    final task = Task(
      id: _remote.createTaskId(companyId, uid),
      taskTitle: taskTitle,
      note: note,
      requesterId: requesterId,
      personInChargerId: personInChargerId,
    );
    await _remote.createTask(companyId, task);
  }

  Future<void> deleteTask({
    required String companyId,
    required String uid,
    required String taskId,
  }) async {
    await _remote.deleteTask(companyId, uid, taskId);
  }

  Stream<Staff> listenTask({
    required String companyId,
    required String staffId,
  }) async* {
    final info = await _remote.fetchStaffInfo(companyId: companyId, uid: staffId);
    yield* _remote.listenTasks(companyId, staffId).map((event) => Staff(id: staffId, staffInfo: info, task: event));
  }
}
