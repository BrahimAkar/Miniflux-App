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


// {
//     "id": 1,
//     "username": "admin",
//     "is_admin": true,
//     "theme": "light_serif",
//     "language": "en_US",
//     "timezone": "UTC",
//     "entry_sorting_direction": "desc",
//     "entry_sorting_order": "published_at",
//     "stylesheet": "",
//     "google_id": "",
//     "openid_connect_id": "",
//     "entries_per_page": 100,
//     "keyboard_shortcuts": true,
//     "show_reading_time": true,
//     "entry_swipe": true,
//     "double_tap": true,
//     "last_login_at": "2023-03-08T14:46:05.533725Z",
//     "display_mode": "standalone",
//     "default_reading_speed": 265,
//     "cjk_reading_speed": 500,
//     "default_home_page": "unread",
//     "categories_sorting_order": "unread_count"
// }