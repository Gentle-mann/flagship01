import 'package:flutter/material.dart';
import '../flagship_text_theme.dart';
import '../models/models.dart';

class SolutionWidget extends StatelessWidget {
  const SolutionWidget(
      {super.key,
      required this.question,
      required this.correctAnswer,
      this.chosenAnswer});
  final Question question;
  final Option correctAnswer;
  final Option? chosenAnswer;

  @override
  Widget build(BuildContext context) {
    if (chosenAnswer == correctAnswer) {
      return Container(
        alignment: Alignment.topLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Solution',
              style: FlagshipTheme.darkTextTheme.displaySmall!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              question.explanation,
              style: FlagshipTheme.darkTextTheme.displaySmall,
            ),
          ],
        ),
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
