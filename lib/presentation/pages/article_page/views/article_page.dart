import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:miniflux_app/domain/models/models.dart';
import 'package:miniflux_app/utils/functions/remove_first_img_from_html.dart';

class ArticlePage extends StatelessWidget {
  ArticlePage({super.key, required this.entryModel});
  final EntryModel entryModel;
  final List renderedElements = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: Text(entryModel.title),
          ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                entryModel.title,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              HtmlWidget(
                // most of rss feeds have the first image as the content image, and the second image as the cover image, so we want to remove the second image because of its bad quality
                removeSecondImage(entryModel.content),

                // ignore: non_constant_identifier_names, avoid_types_as_parameter_names
                onLoadingBuilder: (BuildContext context, Element, _) =>
                    const Center(
                  child: CircularProgressIndicator(),
                ),

                // render a custom widget
                customWidgetBuilder: (element) {
                  // bool isSecondImage = false;

                  // // if the element is an image, then add it to the list of rendered elements
                  // if (element.localName == 'img') {
                  //   // check if the list is empty
                  //   if (renderedElements.isEmpty) {
                  //     renderedElements.add('img');
                  //   } else {
                  //     // if the list is not empty, then check if the first element is an image
                  //     if (renderedElements[0] == 'img') {
                  //       // if the first element is an image, then add the second image to the list
                  //       renderedElements.add('img');
                  //     }
                  //   }
                  // }

                  // // if the element is an image and the first element is also an image, then we want to render it
                  // if (element.localName == 'img' &&
                  //     renderedElements[0] == 'img') {
                  //   // if the second element is an image, then we don't want to render it
                  //   isSecondImage = true;
                  // }
                  if (element.localName == 'img') {
                    return CachedNetworkImage(
                      imageUrl: element.attributes['src']!,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    );
                  }

                  return null;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
