import 'package:flutter/material.dart';

import '../flagship_text_theme.dart';
import '../models/option.dart';
import '../models/question.dart';
import 'widgets_barrel.dart';

class OptionCard extends StatelessWidget {
  const OptionCard({
    super.key,
    required this.option,
    required this.question,
    required this.onOptionClicked,
  });
  final Option option;
  final Question question;
  final ValueChanged<Option> onOptionClicked;

  Color dynamicColor(Option option, Question question, {isOption = true}) {
    final isOptionSelected = option == question.selectedOption;
    if (isOptionSelected && !isOption) {
      return Colors.white;
    } else if (!isOptionSelected && !isOption) {
      return Colors.black;
    }
    if (isOptionSelected && isOption) {
      return option.isCorrect ? Colors.green : Colors.red;
    } else {
      return Colors.black12;
    }
  }

  @override
  Widget build(BuildContext context) {
    final Color optionColor = dynamicColor(option, question);
    final Color optionTitleColor =
        dynamicColor(option, question, isOption: false);
    return GestureDetector(
      onTap: () {
        onOptionClicked(option);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        margin: const EdgeInsets.only(
          bottom: 12.0,
        ),
        decoration: BoxDecoration(
          color: optionColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                '${option.title}.',
                style: FlagshipTheme.darkTextTheme.bodyLarge!
                    .copyWith(color: optionTitleColor),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                children: [
                  Text(
                    option.content,
                    style: FlagshipTheme.darkTextTheme.displaySmall!
                        .copyWith(color: optionTitleColor),
                  ),
                  const SizedBox(height: 12),
                  SolutionWidget(
                    question: question,
                    chosenAnswer: question.selectedOption,
                    correctAnswer: option,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
