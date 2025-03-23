import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:echo_news_app/cubits/news_cubit/news_cubit.dart';
import 'package:echo_news_app/cubits/selected_news_title_cubit/selected_news_title_cubit.dart';
import 'package:echo_news_app/model/category_model.dart';

class CategoryItem extends StatelessWidget {
  final CategoryModel category;
  const CategoryItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        final NewsCubit cubit = BlocProvider.of<NewsCubit>(context);
        cubit.getCurrentNews(categoryName: category.categoryName);

        final SelectedNewsTitleCubit titleCubit =
            BlocProvider.of<SelectedNewsTitleCubit>(context);
        titleCubit.getSelectedNewsTitle(categoryName: category.categoryName);
      },
      child: Column(
        children: [
          Center(
            child: Container(
              width: 80,
              height: 80,
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(category.image), fit: BoxFit.fill)),
            ),
          ),
          Center(
              child: Text(
            category.categoryName,
            style: TextStyle(
              color: Colors.black87,
              fontFamily: "Merriweather",
              fontSize: 16,
              fontWeight: FontWeight.bold,
              // fontFamily: "Jotia",
            ),
          )),
        ],
      ),
    );
  }
}
