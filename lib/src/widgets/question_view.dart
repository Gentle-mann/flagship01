import 'package:flutter/material.dart';

import '../flagship_text_theme.dart';
import '../models/models_barrel.dart';
import 'widgets_barrel.dart';

class QuestionView extends StatelessWidget {
  const QuestionView({
    super.key,
    required this.question,
  });
  final Question question;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(height: 32),
                Text(
                  question.questionText,
                  style: FlagshipTheme.lightTextTheme.displayLarge,
                ),
                const SizedBox(
                  height: 64,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(
                    bottom: 16,
                  ),
                  child: Text(
                    'Choose the correct option',
                    style: FlagshipTheme.lightTextTheme.displaySmall!.copyWith(
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: OptionsWidget(
              question: question,
            ),
          ),
        ],
      ),
    );
  }
}
