// ignore_for_file: depend_on_referenced_packages

import 'package:json_annotation/json_annotation.dart';

part 'responses.g.dart';

@JsonSerializable()
class MeResponse {
  MeResponse();
  @JsonKey(name: 'username')
  String? username;
  @JsonKey(name: 'theme')
  @JsonKey(name: 'language')
  String? language;
  @JsonKey(name: 'entry_sorting_direction')
  String? entrySortingDirection;
  @JsonKey(name: 'entry_sorting_order')
  String? entrySortingOrder;
  @JsonKey(name: 'entries_per_page')
  int? entriesPerPage;
  @JsonKey(name: 'show_reading_time')
  bool? showReadingTime;
  // from json
  factory MeResponse.fromJson(Map<String, dynamic> json) =>
      _$MeResponseFromJson(json);
}

// EntriesResponse

@JsonSerializable()
class EntriesResponse {
  EntriesResponse();
  @JsonKey(name: 'entries')
  List<EntryResponse>? entries;

  @JsonKey(name: 'total')
  int? total;
  // from json
  factory EntriesResponse.fromJson(Map<String, dynamic> json) =>
      _$EntriesResponseFromJson(json);
}

class EntryResponse {
  EntryResponse();
  @JsonKey(name: 'id')
  String? id;
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'url')
  String? url;
  @JsonKey(name: 'published_at')
  String? publishedAt;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'content')
  String? content;
  @JsonKey(name: 'author')
  String? author;
  @JsonKey(name: 'starred')
  bool? starred;
  @JsonKey(name: 'reading_time')
  int? readingTime;
  @JsonKey(name: 'feed')
  FeedResponse? feed;
  // from json
  factory EntryResponse.fromJson(Map<String, dynamic> json) =>
      _$EntryResponseFromJson(json);
}

class FeedResponse {
  FeedResponse();
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'title')
  String? title;

  CategoryResponse? category;
  // from json
  factory FeedResponse.fromJson(Map<String, dynamic> json) =>
      _$FeedResponseFromJson(json);
}

class CategoryResponse {
  CategoryResponse();
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'title')
  String? title;
  // from json
  factory CategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryResponseFromJson(json);
}
