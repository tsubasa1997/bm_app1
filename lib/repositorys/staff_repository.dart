import 'package:bm_app/models/staff/staff.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../datasource/firebase_datasource.dart';

final staffRepositoryProvider = Provider(
      (ref) => StaffRepository(ref: ref),
);

class StaffRepository {
  const StaffRepository({required this.ref});

  final Ref ref;

  FirestoreDatasource get _remote => ref.read(firestoreDatasourceProvider);


  Stream<Staff> listenStaffInfo({required String companyId, required String uid,}) async* {
    final info = await _remote.fetchStaffInfo(companyId: companyId, uid: uid);
    yield* _remote.listenStaffInfo(companyId: companyId, uid: uid).map(
            (event) => Staff(id: uid, staffInfo: info),
    );
  }

}