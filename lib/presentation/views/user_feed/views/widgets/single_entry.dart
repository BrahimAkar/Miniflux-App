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
      leading: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey[300]!,
            width: 0.5,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: CachedNetworkImage(
            imageUrl: getFeedIconFromArticleURL(entry.url),
            width: 30,
            height: 30,
            fit: BoxFit.fill,
          ),
        ),
      ),
      // if article is not read, show a dot
      trailing: entry.status == 'unread'
          ? Container(
              width: 5,
              height: 5,
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
            )
          : null,
      subtitle: Container(
        margin: const EdgeInsets.only(top: 8),
        child: Row(
          children: [
            Text(
              entry.feed.title,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(width: 8),
            const Text('- '),
            Text(
              ''.getAdaptedMomentLanguage(entry.publishedAt),
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
      // trailing: Text(''.getAdaptedMomentLanguage(entry.publishedAt)),
    );
  }
}
