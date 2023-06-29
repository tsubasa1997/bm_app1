// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'board.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Board _$$_BoardFromJson(Map<String, dynamic> json) => _$_Board(
      id: json['id'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      creatorId: json['creatorId'] as String,
      createTime: DateTime.parse(json['createTime'] as String),
    );

Map<String, dynamic> _$$_BoardToJson(_$_Board instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'creatorId': instance.creatorId,
      'createTime': instance.createTime.toIso8601String(),
    };
