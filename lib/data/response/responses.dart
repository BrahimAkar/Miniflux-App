// ignore_for_file: public_member_api_docs, sort_constructors_first
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
  @JsonKey(name: 'entries')
  List<EntryResponse>? entries;

  @JsonKey(name: 'total')
  int? total;
  EntriesResponse({
    this.entries,
    this.total,
  });

  // from json
  factory EntriesResponse.fromJson(Map<String, dynamic> json) =>
      _$EntriesResponseFromJson(json);

// to json
  Map<String, dynamic> toJson() => _$EntriesResponseToJson(this);
}

@JsonSerializable()
class EntryResponse {
  @JsonKey(name: 'id')
  int? id;
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
  EntryResponse({
    this.id,
    this.status,
    this.title,
    this.url,
    this.publishedAt,
    this.createdAt,
    this.content,
    this.author,
    this.starred,
    this.readingTime,
    this.feed,
  });
  // from json
  factory EntryResponse.fromJson(Map<String, dynamic> json) =>
      _$EntryResponseFromJson(json);

// to json
  Map<String, dynamic> toJson() => _$EntryResponseToJson(this);
}

@JsonSerializable()
class FeedResponse {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'icon')
  IconResponse icon;

  CategoryResponse? category;
  FeedResponse({
    this.id,
    this.title,
    this.category,
    required this.icon,
  });
  // from json
  factory FeedResponse.fromJson(Map<String, dynamic> json) =>
      _$FeedResponseFromJson(json);

// to json
  Map<String, dynamic> toJson() => _$FeedResponseToJson(this);
}

@JsonSerializable()
class CategoryResponse {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'title')
  String? title;
  CategoryResponse({
    this.id,
    this.title,
  });
  // from json
  factory CategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryResponseFromJson(json);

// to json
  Map<String, dynamic> toJson() => _$CategoryResponseToJson(this);
}

@JsonSerializable()
class IconResponse {
  @JsonKey(name: 'icon_id')
  int? icon_id;

  IconResponse({
    this.icon_id,
  });
  // from json
  factory IconResponse.fromJson(Map<String, dynamic> json) =>
      _$IconResponseFromJson(json);

// to json
  Map<String, dynamic> toJson() => _$IconResponseToJson(this);
}
