import 'package:flutter/material.dart';

import '../models/category.dart';

class CategoryPopularImage extends StatelessWidget {
  const CategoryPopularImage({super.key, required this.category});
  final Category category;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            category.imageUrl,
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(20),
        color: category.backgroundColor,
      ),
    );
  }
}
