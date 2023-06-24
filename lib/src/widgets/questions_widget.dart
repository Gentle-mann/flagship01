import 'package:flutter/material.dart';

import '../models/category.dart';

import 'widgets_barrel.dart';

class QuestionsWidget extends StatelessWidget {
  const QuestionsWidget({
    super.key,
    required this.category,
    required this.onPageChanged,
    required this.pageController,
  });
  final Category category;
  final ValueChanged<int> onPageChanged;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      onPageChanged: onPageChanged,
      controller: pageController,
      itemCount: category.categoryQuestions.length,
      itemBuilder: ((context, index) {
        final question = category.categoryQuestions[index];
        return QuestionView(question: question);
      }),
    );
  }
}
