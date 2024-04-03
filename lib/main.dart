import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_second/screens/home_page.dart';
import 'package:news_app_second/services/news__service.dart';

void main() {
  runApp(const newsApp());
  //NewsService(Dio()).getNews();
}

class newsApp extends StatelessWidget {
  const newsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homePage(),
    );
  }
}
