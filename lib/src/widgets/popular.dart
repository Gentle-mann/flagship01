import 'package:flutter/material.dart';

import '../models/models_barrel.dart';
import '../screens/category_screen.dart';
import 'category_popular_detail.dart';

class Popular extends StatelessWidget {
  const Popular({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.height * 0.7,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ...Category.categories.map(
            (category) => CategoryPopularDetail(
              category: category,
              onSelected: (category) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return CategoryScreen(category: category);
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
