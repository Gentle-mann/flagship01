import 'package:flutter/material.dart';

import '../models/category.dart';

class CategoryPopularDescription extends StatelessWidget {
  const CategoryPopularDescription({super.key, required this.category});
  final Category category;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Column(
        children: [
          Text(
            category.name,
            style: TextStyle(
              color: category.backgroundColor,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(category.description),
        ],
      ),
    );
  }
}
