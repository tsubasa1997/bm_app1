// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Staff _$$_StaffFromJson(Map<String, dynamic> json) => _$_Staff(
      id: json['id'] as String,
      staffInfo: StaffInfo.fromJson(json['staffInfo'] as Map<String, dynamic>),
      task: (json['task'] as List<dynamic>?)
              ?.map((e) => Task.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Task>[],
    );

Map<String, dynamic> _$$_StaffToJson(_$_Staff instance) => <String, dynamic>{
      'id': instance.id,
      'staffInfo': instance.staffInfo,
      'task': instance.task,
    };
