import 'package:booklyapp/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text(
          'Welcome',
          style: Styles.textStyle15,
        ),
      ),
    );
  }
}
