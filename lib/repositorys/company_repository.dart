import 'package:bm_app/models/company/company.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../datasource/firebase_datasource.dart';

final companyRepositoryProvider = Provider(
  (ref) => CompanyRepository(ref: ref),
);

class CompanyRepository {
  const CompanyRepository({required this.ref});

  final Ref ref;

  FirestoreDatasource get _remote => ref.read(firestoreDatasourceProvider);

  Future<String> createCompany({
    required String name,
  }) async {
    final companyId = _remote.createCompanyId();
    final company = Company(id: companyId, name: name);
    await _remote.createCompany(company);
    return companyId;
  }

  Stream<Company> listenCompany(String companyId) async* {
    final company = await _remote.fetchCompany(companyId);
    yield* _remote.listenCompany(companyId).map((event) => Company(id: company.id, name: company.name));
  }

  Stream<Company> refCompany(String uid) async* {
    final user = await _remote.fetchUser(uid);
    final company = await _remote.fetchCompany(user.companyId);
    yield* _remote.listenCompany(company.id).map(
          (event) => Company(
            id: company.id,
            name: company.name,
          ),
        );
  }

  Stream<Company> listenStaffs(String companyId) async* {
    final company = await _remote.fetchCompany(companyId);
    yield* _remote.listenStaffs(company.id).map((event) => Company(
          id: companyId,
          name: company.name,
          staffInfo: event,
        ));
  }

}
