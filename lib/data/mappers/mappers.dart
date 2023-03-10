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
