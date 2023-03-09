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
