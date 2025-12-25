
import 'package:flutter/material.dart';
import 'package:testing_app/extra/screens/screen1.dart';
import 'package:testing_app/extra/screens/screen2.dart';

class RootApp2 extends StatelessWidget {
  const RootApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Screen2(),);
  }
}
