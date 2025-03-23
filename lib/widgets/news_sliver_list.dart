import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:echo_news_app/cubits/news_cubit/news_cubit.dart';
import 'package:echo_news_app/cubits/news_cubit/news_state.dart';
import 'package:echo_news_app/widgets/news_item.dart';

class NewsSliverList extends StatelessWidget {
  const NewsSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCubit, NewsState>(builder: (context, state) {
      if (state is SuccessState) {
        return SliverList.builder(
          itemBuilder: (BuildContext context, int index) {
            return NewsItem(article: state.articles[index]);
          },
          itemCount: state.articles.length,
        );
      } else if (state is ErrorState) {
        return SliverToBoxAdapter(
          child: Center(
            child: Text('An error occurred: ${state.errorMessage}'),
          ),
        );
      } else {
        return SliverToBoxAdapter(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
      }
    });
  }
}
