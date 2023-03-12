import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:miniflux_app/domain/models/models.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key, required this.entryModel});
  final EntryModel entryModel;

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
                entryModel.content,

                // ignore: non_constant_identifier_names, avoid_types_as_parameter_names
                onLoadingBuilder: (BuildContext context, Element, _) =>
                    const Center(
                  child: CircularProgressIndicator(),
                ),
                // render a custom widget
                customWidgetBuilder: (element) {
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
