import 'package:echo_news_app/model/article_model.dart';

abstract class NewsState {}

class InitialState extends NewsState {}

class LoadingState extends NewsState {}

class SuccessState extends NewsState {
  final List<ArticleModel> articles;
  final String categoryName;
  SuccessState({required this.articles , this.categoryName = "general"});
}

class ErrorState extends NewsState {
  final String errorMessage;
  ErrorState({required this.errorMessage});
}
