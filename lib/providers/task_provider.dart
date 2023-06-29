import 'package:bm_app/repositorys/task_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/staff/staff.dart';

part 'task_provider.freezed.dart';

@freezed
class TaskState with _$TaskState {
  const factory TaskState({
    required String staffId,
    required String companyId,
  }) = _TaskState;
}

final taskProvider = StreamProvider.autoDispose.family<Staff, TaskState>(
  (ref, taskState) => ref.watch(taskRepositoryProvider).listenTask(
        companyId: taskState.companyId,
        staffId: taskState.staffId,
      ),
);
