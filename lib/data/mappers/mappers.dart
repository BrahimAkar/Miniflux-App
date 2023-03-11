import 'package:miniflux_app/data/response/responses.dart';
import 'package:miniflux_app/domain/models/models.dart';
import 'package:miniflux_app/utils/constants/numbers.dart';
import 'package:miniflux_app/utils/constants/strings.dart';

extension MeResponseMapper on MeResponse {
  MeModel toDomain() {
    return MeModel(
      username: username ?? ConstStrings.emptyString,
      language: language ?? ConstStrings.emptyString,
      entrySortingDirection: entrySortingDirection ?? ConstStrings.emptyString,
      entrySortingOrder: entrySortingOrder ?? ConstStrings.emptyString,
      entriesPerPage: entriesPerPage ?? ConstsNumbers.zero,
      showReadingTime: showReadingTime ?? false,
    );
  }
}

extension CategoryResponseMapper on CategoryResponse {
  CategoryModel toDomain() {
    return CategoryModel(
      id: id ?? ConstsNumbers.zero,
      title: title ?? ConstStrings.emptyString,
    );
  }
}

extension FeedResponseMapper on FeedResponse {
  FeedModel toDomain() {
    return FeedModel(
      id: id ?? ConstsNumbers.zero,
      title: title ?? ConstStrings.emptyString,
    );
  }
}

extension EntryResponseMapper on EntryResponse {
  EntryModel toDomain() {
    return EntryModel(
      id: id ?? ConstsNumbers.zero,
      status: status ?? ConstStrings.emptyString,
      title: title ?? ConstStrings.emptyString,
      url: url ?? ConstStrings.emptyString,
      publishedAt: publishedAt ?? ConstStrings.emptyString,
      createdAt: createdAt ?? ConstStrings.emptyString,
      content: content ?? ConstStrings.emptyString,
      author: author ?? ConstStrings.emptyString,
      starred: starred ?? false,
      readingTime: readingTime ?? ConstsNumbers.zero,
    );
  }
}

extension EntriesResponseMapper on EntriesResponse {
  EntriesFeed toDomain() {
    return EntriesFeed(
      entries: entries?.map((e) => e.toDomain()).toList() ?? [],
      total: total ?? ConstsNumbers.zero,
    );
  }
}
