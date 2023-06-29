import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/company/company.dart';
import '../repositorys/company_repository.dart';

final refCompanyProvider = StreamProvider.autoDispose.family<Company, String>(
      (ref, uid) => ref.watch(companyRepositoryProvider).refCompany(uid),
);