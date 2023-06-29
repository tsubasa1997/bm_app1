import 'package:bm_app/models/company/company.dart';
import 'package:bm_app/repositorys/company_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final staffsProvider = StreamProvider.autoDispose.family<Company, String>(
      (ref, companyId) => ref.watch(companyRepositoryProvider).listenStaffs(companyId),
);
