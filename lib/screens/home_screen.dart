import 'package:flutter/material.dart';
import 'package:echo_news_app/widgets/news_sliver_list.dart';
import 'package:echo_news_app/widgets/category_list_view.dart';
import 'package:echo_news_app/widgets/selected_news_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: Text(
          "Echo News",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontFamily: "Merriweather",
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
              child: SizedBox(
            height: 20,
          )),
          SliverToBoxAdapter(
              child: SizedBox(height: 120, child: CategoryListView())),
          SliverToBoxAdapter(
              child: SizedBox(
            height: 30,
          )),
          SelectedNewsTitle(),
          NewsSliverList()
        ],
      ),
    );
  }
}
