import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:echo_news_app/cubits/webview_cubit/webview_cubit.dart';
import 'package:echo_news_app/cubits/webview_cubit/webview_state.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatelessWidget {
  const WebViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.maybePop(context);
              },
              icon: Icon(Icons.arrow_back_ios_new)),
        ),
        body: BlocBuilder<WebViewCubit, WebViewState>(builder: (contex, state) {
          if (state is SuccessState) {
            return WebViewWidget(controller: state.controller);
          } else if (state is ErrorState) {
            return Center(
              child: Text(state.errorMessage),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        }));
  }
}
