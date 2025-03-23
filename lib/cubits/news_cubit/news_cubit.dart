import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:echo_news_app/cubits/news_cubit/news_state.dart';
import 'package:echo_news_app/model/article_model.dart';
import 'package:echo_news_app/network/news_services.dart';

class NewsCubit extends Cubit<NewsState> {
  List<ArticleModel> articles = [];
  NewsCubit() : super(InitialState());

  getCurrentNews({String categoryName = "general"}) async {
    emit(LoadingState());
    try {
      Map<String, dynamic> json =
          await NewsServices(dio: Dio()).getNews(categoryName: categoryName);
          articles.clear();
      for (var item in json["articles"]) {
        articles.add(ArticleModel.fromJson(item));
      }
      emit(SuccessState(articles: articles));
    } catch (e) {
      emit(ErrorState(errorMessage: e.toString()));
    }
  }
}
