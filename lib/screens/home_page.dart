import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_second/widgets/news_tile.dart';

import '../models/article_ model.dart';
import '../services/news__service.dart';
import '../widgets/category_item.dart';
import '../widgets/category_list_view.dart';
import '../widgets/news_list_view.dart';
import '../widgets/news_list_view_builder.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'News',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                'cloud',
                style: TextStyle(color: Colors.orange),
              ),
            ],
          ),
        ),
        body:  Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: CustomScrollView(slivers: [
            SliverToBoxAdapter(
              child: categorylistview(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 24,
              ),
            ),
            newsListViewBuilder(category: 'general',),
          ]),
        ));
  }
}

// class newsListViewBuilder extends StatefulWidget {
//   const newsListViewBuilder({
//     super.key,
//   });

//   @override
//   State<newsListViewBuilder> createState() => _newsListViewBuilderState();
// }

// class _newsListViewBuilderState extends State<newsListViewBuilder> {
//   List<ArticleModel> article = [];
//   bool isloading = true;
//   @override
//   void initState() {
//     super.initState();
//     getGeneralNews();
//   }

//   Future<void> getGeneralNews() async {
//     article = await NewsService(Dio()).getNews();
//     isloading = false;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isloading
//         ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))
//         : newslistview(
//             article: article,
//           );
//   }
// }
