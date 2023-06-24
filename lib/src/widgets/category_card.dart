import 'package:flutter/material.dart';
import '../flagship_text_theme.dart';
import '../models/category.dart';
import '../screens/category_screen.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});
  final Category category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryScreen(category: category);
            },
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: category.backgroundColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Stack(
          children: [
            Center(
              child: Icon(
                category.icon,
                size: 36,
                color: Colors.white,
              ),
            ),
            Positioned(
              bottom: 8,
              left: 12,
              child: Text(
                category.name,
                style: FlagshipTheme.darkTextTheme.bodyLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
