import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:echo_news_app/cubits/selected_news_title_cubit/selected_news_title_cubit.dart';
import 'package:echo_news_app/cubits/selected_news_title_cubit/selected_news_title_state.dart';

class SelectedNewsTitle extends StatelessWidget {
  const SelectedNewsTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: BlocBuilder<SelectedNewsTitleCubit,SelectedNewsTitleState>(
                builder: (context, state) {
              if (state is SuccessState) {
                return Text("${state.categoryName} News",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Merriweather",
                        fontSize: 24,
                        fontWeight: FontWeight.bold));
              } else {
                return Text("General News",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Merriweather",
                        fontSize: 26,
                        fontWeight: FontWeight.bold));
              }
            })));
  }
}
