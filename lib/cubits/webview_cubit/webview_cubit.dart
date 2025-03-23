import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:echo_news_app/cubits/webview_cubit/webview_state.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewCubit extends Cubit<WebViewState> {
  WebViewCubit() : super(InitialState());

  initializeController({required String url}) async {
    try {
      emit(LoadingState());
      WebViewController controller = WebViewController();
      await controller.loadRequest(Uri.parse(url));
      emit(SuccessState(controller: controller));
    } catch (e) {
      emit(ErrorState(errorMessage: e.toString()));
    }
  }
}
