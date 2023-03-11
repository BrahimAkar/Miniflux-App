import 'package:simple_moment/simple_moment.dart';

enum MomentPreferedDate { from, fromMillisecond }

extension AdaptMomentToLanguage on String {
  String getAdaptedMomentLanguage(
    String date, {
    MomentPreferedDate momentPreferedDateStyle = MomentPreferedDate.from,
  }) {
    Moment.setLocaleGlobally(LocaleEn());
    final String formattedDate =
        momentPreferedDateStyle == MomentPreferedDate.from
            ? Moment.now().from(DateTime.parse(date))
            : Moment.now()
                .from(DateTime.fromMillisecondsSinceEpoch(int.parse(date)));
    // final String formattedDate = Moment.now().from(DateTime.parse(date));
    return formattedDate;
  }
}
