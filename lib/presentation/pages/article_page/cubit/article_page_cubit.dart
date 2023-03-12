// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'article_page_state.dart';

class ArticlePageCubit extends Cubit<ArticlePageState> {
  ArticlePageCubit() : super(ArticlePageInitial());
}
