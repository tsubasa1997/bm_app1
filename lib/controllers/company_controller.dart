import 'package:bm_app/repositorys/company_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final companyProvider = Provider(
  (ref) => CompanyController(ref: ref),
);

class CompanyController {
  const CompanyController({required this.ref});

  final Ref ref;

  CompanyRepository get _repository => ref.read(companyRepositoryProvider);

  Future<String> createCompany({
    required String name,
  }) async {
    return _repository.createCompany(name: name);
  }

}
