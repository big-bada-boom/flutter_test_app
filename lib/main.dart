import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'page_1/page_1.dart';

void main() {
  runApp(TestApp());
}

class TestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Page1(),
      ),
    );
  }
}
