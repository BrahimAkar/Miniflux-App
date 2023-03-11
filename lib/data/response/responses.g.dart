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

EntriesResponse _$EntriesResponseFromJson(Map<String, dynamic> json) =>
    EntriesResponse(
      entries: (json['entries'] as List<dynamic>?)
          ?.map((e) => EntryResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int?,
    );

Map<String, dynamic> _$EntriesResponseToJson(EntriesResponse instance) =>
    <String, dynamic>{
      'entries': instance.entries,
      'total': instance.total,
    };

EntryResponse _$EntryResponseFromJson(Map<String, dynamic> json) =>
    EntryResponse(
      id: json['id'] as int?,
      status: json['status'] as String?,
      title: json['title'] as String?,
      url: json['url'] as String?,
      publishedAt: json['published_at'] as String?,
      createdAt: json['created_at'] as String?,
      content: json['content'] as String?,
      author: json['author'] as String?,
      starred: json['starred'] as bool?,
      readingTime: json['reading_time'] as int?,
      feed: json['feed'] == null
          ? null
          : FeedResponse.fromJson(json['feed'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EntryResponseToJson(EntryResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'title': instance.title,
      'url': instance.url,
      'published_at': instance.publishedAt,
      'created_at': instance.createdAt,
      'content': instance.content,
      'author': instance.author,
      'starred': instance.starred,
      'reading_time': instance.readingTime,
      'feed': instance.feed,
    };

FeedResponse _$FeedResponseFromJson(Map<String, dynamic> json) => FeedResponse(
      id: json['id'] as int?,
      title: json['title'] as String?,
      category: json['category'] == null
          ? null
          : CategoryResponse.fromJson(json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FeedResponseToJson(FeedResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'category': instance.category,
    };

CategoryResponse _$CategoryResponseFromJson(Map<String, dynamic> json) =>
    CategoryResponse(
      id: json['id'] as int?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$CategoryResponseToJson(CategoryResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
    };
