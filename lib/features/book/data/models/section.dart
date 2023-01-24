
import 'package:freezed_annotation/freezed_annotation.dart';
import 'enums.dart';
part 'section.freezed.dart';
part 'section.g.dart';

@freezed
class Section with _$Section {
  const factory Section({
    required String id,
    required String title,
    required String subTitle,
    required SectionType sectionType
  }) = _Section;

  factory Section.fromJson(Map<String, Object?> json) => _$SectionFromJson(json);
}

