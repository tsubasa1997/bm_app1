import 'package:bm_app/models/board/board.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../datasource/firebase_datasource.dart';
import '../models/company/company.dart';

final boardRepositoryProvider = Provider(
  (ref) => BoardRepository(ref: ref),
);

class BoardRepository {
  const BoardRepository({required this.ref});

  final Ref ref;

  FirestoreDatasource get _remote => ref.read(firestoreDatasourceProvider);

  Future<void> createBoard({
    required String companyId,
    required String title,
    required String content,
    required String creatorId,
    required DateTime createTime,
  }) async {
    final board = Board(
      id: _remote.createBoardId(companyId),
      title: title,
      content: content,
      creatorId: creatorId,
      createTime: createTime,
    );
    await _remote.createBoard(companyId, board);
  }


  Stream<Company> listenBoard({required String companyId,}) async* {
    final company = await _remote.fetchCompany(companyId);
    yield* _remote.listenBoard(companyId).map(
            (event) => Company(id: companyId, name: company.name, board: event)
    );
  }

}
