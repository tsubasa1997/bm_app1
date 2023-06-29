import 'package:bm_app/repositorys/staff_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/staff/staff.dart';

part 'staff_info_provider.freezed.dart';

@freezed
class StaffInfoState with _$StaffInfoState {
  const factory StaffInfoState({
    required String uid,
    required String companyId,
  }) = _StaffInfoState;
}

final staffInfoProvider = StreamProvider.autoDispose.family<Staff, StaffInfoState>(
  (ref, staffInfoState) => ref.watch(staffRepositoryProvider).listenStaffInfo(
        companyId: staffInfoState.companyId,
        uid: staffInfoState.uid,
      ),
);
