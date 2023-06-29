import 'package:bm_app/repositorys/board_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/company/company.dart';

final boardProvider = StreamProvider.autoDispose.family<Company, String>(
        (ref,companyId) => ref.watch(boardRepositoryProvider).listenBoard(companyId: companyId)
);