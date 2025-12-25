

import 'package:flutter/material.dart';

import '../screens/home_screen.dart';

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
