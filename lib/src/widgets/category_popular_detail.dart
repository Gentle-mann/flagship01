import 'package:flutter/cupertino.dart';

import '../models/models.dart';
import 'category_popular_description.dart';
import 'category_popular_image.dart';

class CategoryPopularDetail extends StatelessWidget {
  const CategoryPopularDetail(
      {super.key, required this.category, required this.onSelected});
  final Category category;
  final ValueChanged<Category> onSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onSelected(category);
      },
      child: Container(
        padding: const EdgeInsets.only(right: 12),
        width: MediaQuery.of(context).size.width * 0.6,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 4,
              child: CategoryPopularImage(category: category),
            ),
            const SizedBox(height: 16),
            Expanded(
              flex: 1,
              child: CategoryPopularDescription(category: category),
            ),
          ],
        ),
      ),
    );
  }
}
