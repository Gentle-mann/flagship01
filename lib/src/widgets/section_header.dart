import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../flagship_text_theme.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({super.key, required this.sectionHeader});
  final String sectionHeader;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Text(
        sectionHeader,
        style: FlagshipTheme.lightTextTheme.headline1,
      ),
    );
  }
}
