import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'board.freezed.dart';

part 'board.g.dart';

@freezed
class Board with _$Board {
  const factory Board({
    required String id,
    required String title,
    required String content,
    required String creatorId,
    required DateTime createTime,
  }) = _Board;

  factory Board.fromJson(Map<String, dynamic> json) => _$BoardFromJson(json);
}