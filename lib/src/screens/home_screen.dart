import 'package:flagship/src/widgets/widgets_barrel.dart';
import 'package:flutter/material.dart';

import '../flagship_text_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.black38,
              size: 32,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu_open,
              color: Colors.black38,
              size: 32,
            ),
          ),
        ],
        flexibleSpace: Container(),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(150),
          child: Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello,',
                  style: FlagshipTheme.lightTextTheme.titleLarge,
                ),
                Text(
                  'Khalifa',
                  style: FlagshipTheme.lightTextTheme.displayLarge,
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
      body: const SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.only(
          top: 24,
          right: 12,
          left: 24,
        ),
        child: Column(
          children: [
            CategoriesWidget(),
            SizedBox(height: 24),
            SectionHeader(sectionHeader: 'Popular'),
            SizedBox(height: 20),
            Popular(),
          ],
        ),
      ),
    );
  }
}
