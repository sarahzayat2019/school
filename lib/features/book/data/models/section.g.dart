// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'section.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Section _$$_SectionFromJson(Map<String, dynamic> json) => _$_Section(
      id: json['id'] as String,
      title: json['title'] as String,
      subTitle: json['subTitle'] as String,
      sectionType: $enumDecode(_$SectionTypeEnumMap, json['sectionType']),
    );

Map<String, dynamic> _$$_SectionToJson(_$_Section instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subTitle': instance.subTitle,
      'sectionType': _$SectionTypeEnumMap[instance.sectionType]!,
    };

const _$SectionTypeEnumMap = {
  SectionType.circle: 'circle',
  SectionType.select: 'select',
};
