import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_info.freezed.dart';

part 'company_info.g.dart';

@freezed
class CompanyInfo with _$CompanyInfo {
  const factory CompanyInfo({
    required String id,
    required String name,
  }) = _CompanyInfo;

  factory CompanyInfo.fromJson(Map<String, dynamic> json) => _$CompanyInfoFromJson(json);
}