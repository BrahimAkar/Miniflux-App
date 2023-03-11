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

class CategoryModel {
  int id;
  String title;
  CategoryModel({
    required this.id,
    required this.title,
  });
}

class FeedModel {
  int id;
  String title;
  FeedModel({
    required this.id,
    required this.title,
  });
}

class EntryModel {
  int id;
  String status;
  String title;
  String url;
  String publishedAt;
  String createdAt;
  String content;
  String author;
  bool starred;
  int readingTime;
  EntryModel({
    required this.id,
    required this.status,
    required this.title,
    required this.url,
    required this.publishedAt,
    required this.createdAt,
    required this.content,
    required this.author,
    required this.starred,
    required this.readingTime,
  });
}

class EntriesFeed {
  int total;
  List<EntryModel> entries;
  EntriesFeed({
    required this.total,
    required this.entries,
  });
}
