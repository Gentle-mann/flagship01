import 'package:flutter/material.dart';

import '../models/models_barrel.dart';

class TitleQuestionNumber extends StatelessWidget {
  const TitleQuestionNumber({
    super.key,
    required this.isQuestionSelected,
    required this.questions,
    required this.index,
    required this.onClicked,
  });
  final bool isQuestionSelected;
  final List<Question> questions;
  final int index;
  final ValueChanged<int> onClicked;

  @override
  Widget build(BuildContext context) {
    final textColor = !isQuestionSelected ? Colors.black : Colors.white;
    final backgroundColor = isQuestionSelected ? Colors.orange : Colors.white;
    return GestureDetector(
      onTap: () {
        onClicked(index);
      },
      child: CircleAvatar(
        backgroundColor: backgroundColor,
        child: Text(
          '${index + 1}',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: textColor,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
