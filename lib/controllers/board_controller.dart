import 'package:bm_app/repositorys/board_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final boardProvider = Provider(
  (ref) => BoardController(ref: ref),
);

class BoardController {
  const BoardController({required this.ref});

  final Ref ref;

  BoardRepository get _repository => ref.read(boardRepositoryProvider);

  Future<void> createBoard({
    required String companyId,
    required String title,
    required String content,
    required String creatorId,
    required DateTime createTime,
  }) async {
    await _repository.createBoard(
      companyId: companyId,
      title: title,
      content: content,
      creatorId: creatorId,
      createTime: createTime,
    );
  }
}
