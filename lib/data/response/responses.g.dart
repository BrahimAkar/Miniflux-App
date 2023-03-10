// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MeResponse _$MeResponseFromJson(Map<String, dynamic> json) => MeResponse()
  ..username = json['username'] as String?
  ..language = json['theme'] as String?
  ..entrySortingDirection = json['entry_sorting_direction'] as String?
  ..entrySortingOrder = json['entry_sorting_order'] as String?
  ..entriesPerPage = json['entries_per_page'] as int?
  ..showReadingTime = json['show_reading_time'] as bool?;

Map<String, dynamic> _$MeResponseToJson(MeResponse instance) =>
    <String, dynamic>{
      'username': instance.username,
      'theme': instance.language,
      'entry_sorting_direction': instance.entrySortingDirection,
      'entry_sorting_order': instance.entrySortingOrder,
      'entries_per_page': instance.entriesPerPage,
      'show_reading_time': instance.showReadingTime,
    };
