import 'package:webview_flutter/webview_flutter.dart';

abstract class WebViewState {}

class InitialState extends WebViewState {}

class LoadingState extends WebViewState {}

class SuccessState extends WebViewState {
  final WebViewController controller;
  SuccessState({required this.controller});
}

class ErrorState extends WebViewState {
  final String errorMessage;
  ErrorState({required this.errorMessage});
}
