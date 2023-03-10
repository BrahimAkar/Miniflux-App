import 'package:miniflux_app/data/response/responses.dart';
import 'package:miniflux_app/domain/models/models.dart';
import 'package:miniflux_app/utils/constants/numbers.dart';
import 'package:miniflux_app/utils/constants/strings.dart';

extension MeResponseMapper on MeResponse {
  MeModel toDomain() {
    return MeModel(
      username: username ?? ConstsStrings.emptyString,
      language: language ?? ConstsStrings.emptyString,
      entrySortingDirection: entrySortingDirection ?? ConstsStrings.emptyString,
      entrySortingOrder: entrySortingOrder ?? ConstsStrings.emptyString,
      entriesPerPage: entriesPerPage ?? ConstsNumbers.zero,
      showReadingTime: showReadingTime ?? false,
    );
  }
}
