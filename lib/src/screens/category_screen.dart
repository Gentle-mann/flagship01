import 'package:flutter/material.dart';

import '../flagship_text_theme.dart';
import '../models/category.dart';
import '../models/question.dart';
import '../widgets/widgets.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key, required this.category});
  final Category category;

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  late Question question;
  final PageController pageController = PageController();

  @override
  void initState() {
    super.initState();
    question = widget.category.categoryQuestions.first;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            widget.category.name,
            style: FlagshipTheme.lightTextTheme.displayMedium,
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(6.0),
              child: Icon(
                Icons.filter_alt_outlined,
                color: Colors.black,
                size: 32,
              ),
            ),
            SizedBox(width: 16),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(90),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: QuestionNumber(
                      questions: widget.category.categoryQuestions,
                      question: question,
                      onClicked: (index) {
                        jumpToSelectedQuestion(index, jump: true);
                      },
                    ),
                  ),
                  const Divider(color: Colors.grey, height: 8),
                ],
              ),
            ),
          ),
        ),
        body: QuestionsWidget(
          category: widget.category,
          onPageChanged: (int index) {
            jumpToSelectedQuestion(index);
          },
          pageController: pageController,
        ),
      ),
    );
  }

  void jumpToSelectedQuestion(int index, {bool jump = false}) {
    setState(() {
      question = widget.category.categoryQuestions[index];
    });
    if (jump) {
      pageController.jumpToPage(index);
    }
  }
}
