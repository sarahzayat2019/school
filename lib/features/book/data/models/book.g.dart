// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Book _$$_BookFromJson(Map<String, dynamic> json) => _$_Book(
      id: json['id'] as String,
      title: json['title'] as String,
      grade: json['grade'] as int,
      chapters: (json['chapters'] as List<dynamic>)
          .map((e) => Chapter.fromJson((e as Map<String, dynamic>).map(
                (k, e) => MapEntry(k, e as Object),
              )))
          .toList(),
      type: $enumDecode(_$BookTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$_BookToJson(_$_Book instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'grade': instance.grade,
      'chapters': instance.chapters,
      'type': _$BookTypeEnumMap[instance.type]!,
    };

const _$BookTypeEnumMap = {
  BookType.workBook: 'workBook',
  BookType.reading: 'reading',
};
