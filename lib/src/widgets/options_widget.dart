import 'package:flutter/material.dart';

import '../models/option.dart';
import '../models/question.dart';
import 'widgets_barrel.dart';

class OptionsWidget extends StatefulWidget {
  const OptionsWidget({
    super.key,
    required this.question,
  });
  final Question question;

  @override
  State<OptionsWidget> createState() => _OptionsWidgetState();
}

class _OptionsWidgetState extends State<OptionsWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        ...widget.question.options.map(
          (option) => OptionCard(
            option: option,
            question: widget.question,
            onOptionClicked: (Option value) {},
          ),
        ),
      ],
    );
  }

  void selectOption(Option option, Question question) {
    setState(() {
      if (question.isLocked) {
        return;
      } else {
        question.isLocked = true;
        question.selectedOption = option;
      }
    });
  }
}
