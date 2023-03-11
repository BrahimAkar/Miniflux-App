// ignore_for_file: public_member_api_docs, sort_constructors_first
class MeModel {
  String username;
  String language;
  String entrySortingDirection;
  String entrySortingOrder;
  int entriesPerPage;
  bool showReadingTime;
  MeModel({
    required this.username,
    required this.language,
    required this.entrySortingDirection,
    required this.entrySortingOrder,
    required this.entriesPerPage,
    required this.showReadingTime,
  });
}
