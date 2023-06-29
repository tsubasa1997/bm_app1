import 'package:bm_app/models/staff_info/staff_info.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';

part 'task.g.dart';

@freezed
class Task with _$Task {
  const factory Task({
    required String id,
    required String taskTitle,
    required String note,
    required String requesterId,
    required String personInChargerId,
  }) = _Task;

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}