// import 'package:dio/dio.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app_second/services/news__service.dart';

// import '../models/article_ model.dart';
// import 'news_tile.dart';

// class newslistview extends StatefulWidget {
//   const newslistview({
//     super.key, required List article,
//   });

//   @override
//   State<newslistview> createState() => _newslistviewState();
// }

// class _newslistviewState extends State<newslistview> {
//   List<ArticleModel> article = [];
//   bool isloading = true;
//   @override
//   void initState() {
//     super.initState();
//     getGeneralNews();
   
//   }

//   Future<void> getGeneralNews() async {
//     article = await NewsService(Dio()).getNews();
//      isloading = false;
//     setState(() {});
//   }
   
//   @override
//   Widget build(BuildContext context) {
//     return SliverList(
//             delegate: SliverChildBuilderDelegate(
//               childCount: article.length,
//               (context, index) {
//                 return Padding(
//                   padding: EdgeInsets.only(bottom: 12),
//                   child: NewsTile(
//                     article: article[index],
//                   ),
//                 );
//               },
//             ),
//           );
//   }
// }
