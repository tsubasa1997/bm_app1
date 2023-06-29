
import 'package:bm_app/models/staff_info/staff_info.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../task/task.dart';
part 'staff.freezed.dart';

part 'staff.g.dart';

@freezed
class Staff with _$Staff {
  const factory Staff({
    required String id,
    required StaffInfo staffInfo,
    @Default(<Task>[]) List<Task> task,
  }) = _Staff;

  factory Staff.fromJson(Map<String, dynamic> json) => _$StaffFromJson(json);
}