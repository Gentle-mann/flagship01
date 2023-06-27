import 'package:flutter/material.dart';

import 'src/screens/home_screen.dart';

void main() {
  runApp(const Flagship());
}

class Flagship extends StatelessWidget {
  const Flagship({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flagship',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
