import 'package:flutter/material.dart';

import 'question.dart';
import 'models.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Category {
  final String name;
  final String description;
  final Color backgroundColor;
  final IconData icon;
  final List<Question> categoryQuestions;
  final String imageUrl;

  Category({
    required this.name,
    this.description = 'Test your skill',
    required this.backgroundColor,
    required this.icon,
    required this.categoryQuestions,
    required this.imageUrl,
  });

  static final List<Category> categories = [
    Category(
      name: 'Mathematics',
      categoryQuestions: Question.questions,
      backgroundColor: Colors.orange,
      icon: FontAwesomeIcons.squareRootVariable,
      imageUrl: 'assets/images/math.jpg',
    ),
    Category(
      name: 'Physics',
      categoryQuestions: Question.questions,
      backgroundColor: Colors.grey,
      icon: FontAwesomeIcons.rocket,
      imageUrl: 'assets/images/physics.jpg',
    ),
    Category(
      name: 'Biology',
      categoryQuestions: Question.questions,
      backgroundColor: Colors.purple,
      icon: FontAwesomeIcons.dna,
      imageUrl: 'assets/images/biology.jpg',
    ),
    Category(
      name: 'Chemistry',
      categoryQuestions: Question.questions,
      backgroundColor: Colors.yellow,
      icon: FontAwesomeIcons.atom,
      imageUrl: 'assets/images/chemistry.jpg',
    ),
  ];
}
