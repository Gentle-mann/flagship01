import 'option.dart';

class Question {
  final String questionText;
  final List<Option> options;
  final String explanation;
  bool isLocked;
  Option? selectedOption;

  Question({
    required this.questionText,
    required this.options,
    required this.explanation,
    this.isLocked = false,
    this.selectedOption,
  });
  static final questions = <Question>[
    Question(
      questionText: 'The practical purpose of taxonomy or classification',
      options: [
        Option(
          title: 'a',
          content: 'Facilitate the identification of unknown species',
          isCorrect: true,
        ),
        Option(
          title: 'b',
          content: 'Know the evolutionary history of organisms',
          isCorrect: false,
        ),
        Option(
          title: 'c',
          content: 'Predict possible future evolutionary pathways of organisms',
          isCorrect: false,
        ),
        Option(
          title: 'd',
          content:
              'Declare with certainty the relationships between non-living and living things',
          isCorrect: false,
        ),
      ],
      explanation: 'It facilitates the identification of unknown species',
    ),
    Question(
      questionText: 'Q02: What\'s your name',
      options: [
        Option(
          title: 'a',
          content: 'Ishaq',
          isCorrect: true,
        ),
        Option(
          title: 'b',
          content: 'Ahmad',
          isCorrect: false,
        ),
        Option(
          title: 'c',
          content: 'Abubakar',
          isCorrect: false,
        ),
        Option(
          title: 'd',
          content: 'Habib',
          isCorrect: false,
        ),
      ],
      explanation: 'Your name is Ishaq',
    ),
    Question(
      questionText: 'Q03: What\'s your name',
      options: [
        Option(
          title: 'a',
          content: 'Ishaq',
          isCorrect: true,
        ),
        Option(
          title: 'b',
          content: 'Ahmad',
          isCorrect: false,
        ),
        Option(
          title: 'c',
          content: 'Abubakar',
          isCorrect: false,
        ),
        Option(
          title: 'd',
          content: 'Habib',
          isCorrect: false,
        ),
      ],
      explanation: 'Your name is Ishaq',
    ),
    Question(
      questionText: 'Q04: What\'s your name',
      options: [
        Option(
          title: 'a',
          content: 'Ishaq',
          isCorrect: true,
        ),
        Option(
          title: 'b',
          content: 'Ahmad',
          isCorrect: false,
        ),
        Option(
          title: 'c',
          content: 'Abubakar',
          isCorrect: false,
        ),
        Option(
          title: 'd',
          content: 'Habib',
          isCorrect: false,
        ),
      ],
      explanation: 'Your name is Ishaq',
    ),
    Question(
      questionText: 'Q05: What\'s your name',
      options: [
        Option(
          title: 'a',
          content: 'Ishaq',
          isCorrect: true,
        ),
        Option(
          title: 'b',
          content: 'Ahmad',
          isCorrect: false,
        ),
        Option(
          title: 'c',
          content: 'Abubakar',
          isCorrect: false,
        ),
        Option(
          title: 'd',
          content: 'Habib',
          isCorrect: false,
        ),
      ],
      explanation: 'Your name is Ishaq',
    ),
    Question(
      questionText: 'Q06: What\'s your name',
      options: [
        Option(
          title: 'a',
          content: 'Ishaq',
          isCorrect: true,
        ),
        Option(
          title: 'b',
          content: 'Ahmad',
          isCorrect: false,
        ),
        Option(
          title: 'c',
          content: 'Abubakar',
          isCorrect: false,
        ),
        Option(
          title: 'd',
          content: 'Habib',
          isCorrect: false,
        ),
      ],
      explanation: 'Your name is Ishaq',
    ),
    Question(
      questionText: 'Q07: What\'s your name',
      options: [
        Option(
          title: 'a',
          content: 'Ishaq',
          isCorrect: true,
        ),
        Option(
          title: 'b',
          content: 'Ahmad',
          isCorrect: false,
        ),
        Option(
          title: 'c',
          content: 'Abubakar',
          isCorrect: false,
        ),
        Option(
          title: 'd',
          content: 'Habib',
          isCorrect: false,
        ),
      ],
      explanation: 'Your name is Ishaq',
    ),
    Question(
      questionText: 'Q08: What\'s your name',
      options: [
        Option(
          title: 'a',
          content: 'Ishaq',
          isCorrect: true,
        ),
        Option(
          title: 'b',
          content: 'Ahmad',
          isCorrect: false,
        ),
        Option(
          title: 'c',
          content: 'Abubakar',
          isCorrect: false,
        ),
        Option(
          title: 'd',
          content: 'Habib',
          isCorrect: false,
        ),
      ],
      explanation: 'Your name is Ishaq',
    ),
    Question(
      questionText: 'Q09: What\'s your name',
      options: [
        Option(
          title: 'a',
          content: 'Ishaq',
          isCorrect: true,
        ),
        Option(
          title: 'b',
          content: 'Ahmad',
          isCorrect: false,
        ),
        Option(
          title: 'c',
          content: 'Abubakar',
          isCorrect: false,
        ),
        Option(
          title: 'd',
          content: 'Habib',
          isCorrect: false,
        ),
      ],
      explanation: 'Your name is Ishaq',
    ),
    Question(
      questionText: 'Q10: What\'s your name',
      options: [
        Option(
          title: 'a',
          content: 'Ishaq',
          isCorrect: true,
        ),
        Option(
          title: 'b',
          content: 'Ahmad',
          isCorrect: false,
        ),
        Option(
          title: 'c',
          content: 'Abubakar',
          isCorrect: false,
        ),
        Option(
          title: 'd',
          content: 'Habib',
          isCorrect: false,
        ),
      ],
      explanation: 'Your name is Ishaq',
    ),
  ];
}
