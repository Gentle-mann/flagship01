import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/models_barrel.dart';

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
              child: _buildCategoryPopularImage(context),
            ),
            const SizedBox(height: 16),
            Expanded(
              flex: 1,
              child: _buildCategoryPopularDescription(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryPopularImage(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            category.imageUrl!,
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(20),
        color: category.backgroundColor,
      ),
    );
  }

  Widget _buildCategoryPopularDescription() {
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
