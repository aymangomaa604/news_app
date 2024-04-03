import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app_second/widgets/news_list_view_builder.dart';

class categoryPage extends StatelessWidget {
  const categoryPage({super.key , required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        newsListViewBuilder(
          category: category,
        )]),
    );
  }
}
