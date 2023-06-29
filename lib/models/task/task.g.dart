// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Task _$$_TaskFromJson(Map<String, dynamic> json) => _$_Task(
      id: json['id'] as String,
      taskTitle: json['taskTitle'] as String,
      note: json['note'] as String,
      requesterId: json['requesterId'] as String,
      personInChargerId: json['personInChargerId'] as String,
    );

Map<String, dynamic> _$$_TaskToJson(_$_Task instance) => <String, dynamic>{
      'id': instance.id,
      'taskTitle': instance.taskTitle,
      'note': instance.note,
      'requesterId': instance.requesterId,
      'personInChargerId': instance.personInChargerId,
    };
