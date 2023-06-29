import 'package:bm_app/models/board/board.dart';
import 'package:bm_app/models/company_info/company_info.dart';
import 'package:bm_app/models/staff_info/staff_info.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../staff/staff.dart';
part 'company.freezed.dart';
part 'company.g.dart';

@freezed
class Company with _$Company {
  const factory Company({
    required String id,
    required String name,
    @Default(<StaffInfo>[]) List<StaffInfo> staffInfo,
    @Default(<Staff>[]) List<Staff> staff,
    @Default(<Board>[]) List<Board> board,
  }) = _Company;

  factory Company.fromJson(Map<String, dynamic> json) => _$CompanyFromJson(json);
}