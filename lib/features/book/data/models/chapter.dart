
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:school/features/book/data/models/section.dart';
 part 'chapter.freezed.dart';
part 'chapter.g.dart';

@freezed
class Chapter with _$Chapter {
  const factory Chapter({
    required String id,
    required String title,
    required List<Section> sections
}) = _Chapter;

  factory Chapter.fromJson(Map<String, Object> json) => _$ChapterFromJson(json);
}
