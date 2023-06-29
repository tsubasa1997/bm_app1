import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../task/task.dart';

part 'staff_info.freezed.dart';

part 'staff_info.g.dart';

@freezed
class StaffInfo with _$StaffInfo {
  const factory StaffInfo({
    required String id,
    required String companyId,
    required String name,
    required String authority,
  }) = _StaffInfo;

  factory StaffInfo.fromJson(Map<String, dynamic> json) => _$StaffInfoFromJson(json);
}