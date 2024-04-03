import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app_second/models/category_model.dart';
import 'package:news_app_second/screens/category_page.dart';

class categoryitem extends StatelessWidget {
  const categoryitem({
    super.key,
    required this.category,
  });
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return categoryPage(category:category.categoryName ,);
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 15),
        child: Container(
          width: 150,
          height: 85,
          //padding: EdgeInsets.symmetric(vertical: 22, horizontal: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: AssetImage(category.image), fit: BoxFit.fill),
          ),
          child: Center(
            child: Text(
              category.categoryName,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
