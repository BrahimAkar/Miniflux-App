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
    return Column(
      children: [
        ListTile(
          title: Text(
            entry.title,
            style: GoogleFonts.poppins(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              height: 1.5,
              color: Colors.white70,
            ),
          ),
          // leading:
          // if article is not read, show a dot
          trailing: entry.status == 'unread'
              ? Container(
                  width: 5,
                  height: 5,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                )
              : null,
          subtitle: Container(
            margin: const EdgeInsets.only(top: 8),
            child: Wrap(
              children: [
                Container(
                  decoration: BoxDecoration(
                    // border: Border.all(
                    //   color: Colors.grey[300]!,
                    //   width: 0.5,
                    // ),
                    borderRadius: BorderRadius.circular(1),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(1),
                    child: CachedNetworkImage(
                      imageUrl: getFeedIconFromArticleURL(entry.url),
                      width: 15,
                      height: 15,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  entry.feed.title,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                // const SizedBox(width: 8),
                Text(
                  // dot text
                  ' \u2022 ',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                Text(
                  ''.getAdaptedMomentLanguage(entry.publishedAt),
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        // color: Colors.grey[400],
                        fontFamily: GoogleFonts.poppins().fontFamily,
                      ),
                ),
                // Favorite Icon
                const SizedBox(width: 8),
              ],
            ),
          ),
        ),
        // Container(
        //   margin: const EdgeInsets.only(top: 8),
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       SizedBox(
        //         width: MediaQuery.of(context).size.width,
        //         // color: Colors.red,
        //         child: Row(
        //           mainAxisAlignment: MainAxisAlignment.end,
        //           mainAxisSize: MainAxisSize.max,
        //           children: const [
        //             Icon(
        //               FluentIcons.bookmark_20_regular,
        //               size: 20,
        //             ),
        //           ],
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ],
    );
  }
}
