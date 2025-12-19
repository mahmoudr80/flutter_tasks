

import 'package:flutter/material.dart';
import 'package:test_app/screens/home_screen.dart';

class TestBmi extends StatelessWidget {
  const TestBmi({super.key});

  @override
  Widget build(BuildContext context) {
    return const
    MaterialApp(
      home: HomeScreen(),
    );
  }
}
