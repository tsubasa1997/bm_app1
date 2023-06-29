// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Company _$$_CompanyFromJson(Map<String, dynamic> json) => _$_Company(
      id: json['id'] as String,
      name: json['name'] as String,
      staffInfo: (json['staffInfo'] as List<dynamic>?)
              ?.map((e) => StaffInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <StaffInfo>[],
      staff: (json['staff'] as List<dynamic>?)
              ?.map((e) => Staff.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Staff>[],
      board: (json['board'] as List<dynamic>?)
              ?.map((e) => Board.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Board>[],
    );

Map<String, dynamic> _$$_CompanyToJson(_$_Company instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'staffInfo': instance.staffInfo,
      'staff': instance.staff,
      'board': instance.board,
    };
