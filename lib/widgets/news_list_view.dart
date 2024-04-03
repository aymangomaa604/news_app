import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app_second/services/news__service.dart';

import '../models/article_ model.dart';
import 'news_tile.dart';

class newslistview extends StatelessWidget {
  const newslistview({
    super.key,
    required this.article,
  });
  final List<ArticleModel> article;
  
  @override
  Widget build(BuildContext context) {
    return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: article.length,
              (context, index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 12),
                  child: NewsTile(
                    article: article[index],
                  ),
                );
              },
            ),
          );
  }
}
