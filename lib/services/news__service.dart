import 'dart:ffi';

import 'package:dio/dio.dart';
import 'package:news_app_second/models/article_%20model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

  Future<List<ArticleModel>> getNews({required String category }) async {
    try {
      var response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=3565d7441a8b4a9b9b00e647c55b5ad0',
      );

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      //print(articles);
      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        articlesList.add(ArticleModel(
          image: article['urlToImage'],
          title: article['title'],
          subTitle: article['description'],
        ));
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
