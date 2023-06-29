import 'package:bm_app/models/staff/staff.dart';
import 'package:bm_app/models/staff_info/staff_info.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../repositorys/task_repository.dart';

part 'task_controller.freezed.dart';

@freezed
class TaskState with _$TaskState {
  const factory TaskState({
    @Default('依頼者を選択') String requester,
    @Default('') String requesterId,
    @Default('担当者を選択') String personInCharger,
    @Default('') String personInChargerId,
  }) = _TaskState;
}

final taskStateProvider = StateNotifierProvider.autoDispose<TaskStateNotifier, TaskState>(
  (read) => TaskStateNotifier(ref: read),
);

class TaskStateNotifier extends StateNotifier<TaskState> {
  TaskStateNotifier({required this.ref}) : super(const TaskState());

  final Ref ref;

  TaskRepository get _repository => ref.read(taskRepositoryProvider);

  Future<void> changeRequester({
    required StaffInfo staffInfo,
  }) async {
    state = state.copyWith(requester: staffInfo.name);
    state = state.copyWith(requesterId: staffInfo.id);
  }

  Future<void> changePersonInChargerId({
    required StaffInfo staffInfo,
  }) async {
    state = state.copyWith(personInCharger: staffInfo.name);
    state = state.copyWith(personInChargerId: staffInfo.id);
  }

  Future<void> createTask({
    required String companyId,
    required String uid,
    required String taskTitle,
    required String note,
    required String requesterId,
    required String personInChargerId,
  }) async {
    await _repository.taskCreate(
      companyId: companyId,
      uid: uid,
      taskTitle: taskTitle,
      note: note,
      requesterId: requesterId,
      personInChargerId: personInChargerId,
    );
  }

  Future<void> deleteTask({
    required String companyId,
    required String uid,
    required String taskId,
  }) async {
    await _repository.deleteTask(companyId: companyId, uid: uid, taskId: taskId);
  }

}
