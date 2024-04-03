import 'package:flutter/cupertino.dart';
import 'package:news_app_second/models/category_model.dart';

import 'category_item.dart';

class categorylistview extends StatelessWidget {
  const categorylistview({
    super.key,
  });
  final List<CategoryModel> categries = const [
    CategoryModel(
      categoryName: 'entrainment',
      image: 'assets/entertaiment.avif',
    ),
    CategoryModel(
      categoryName: 'technology',
      image: 'assets/technology.jpeg',
    ),
    CategoryModel(
      categoryName: 'health',
      image: 'assets/health.avif',
    ),
    CategoryModel(
      categoryName: 'science',
      image: 'assets/science.avif',
    ),
    CategoryModel(
      categoryName: 'technology',
      image: 'assets/technology.jpeg',
    ),

  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categries.length,
        itemBuilder: (context, index) {
          return categoryitem(
            category: categries[index],
          );
        },
      ),
    );
  }
}
