import 'package:flutter/material.dart';

import '../models/question.dart';
import 'widgets_barrel.dart';

class QuestionNumber extends StatelessWidget {
  const QuestionNumber({
    super.key,
    required this.questions,
    required this.question,
    required this.onClicked,
  });
  final List<Question> questions;
  final Question question;
  final ValueChanged<int> onClicked;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      height: 50,
      child: ListView.separated(
        itemCount: questions.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
          final isQuestionSelected = question == questions[index];
          return TitleQuestionNumber(
            isQuestionSelected: isQuestionSelected,
            questions: questions,
            index: index,
            onClicked: onClicked,
          );
        }),
        separatorBuilder: ((context, index) {
          return const SizedBox(width: 20);
        }),
      ),
    );
  }
}
