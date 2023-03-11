import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';

import 'package:miniflux_app/domain/models/models.dart';
import 'package:miniflux_app/presentation/extensions/extensions.dart';
import 'package:miniflux_app/utils/functions/get_feed_icon.dart';

class SingleEntry extends StatelessWidget {
  const SingleEntry({super.key, required this.entry, required this.index});
  final EntryModel entry;
  final int index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // tileColor: index % 2 == 0 ? Colors.grey[200] : Colors.white,
      title: Text(
        entry.title,
        style: GoogleFonts.lora(
          fontSize: 17,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: CachedNetworkImage(
          imageUrl: getFeedIconFromArticleURL(entry.url),
          width: 30,
          height: 30,
        ),
      ),
      subtitle: Text(
        entry.feed.title,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w300,
        ),
      ),
      trailing: Text(''.getAdaptedMomentLanguage(entry.publishedAt)),
    );
  }
}
