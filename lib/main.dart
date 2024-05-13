import 'package:flutter/material.dart';
import 'package:testing_app/core/utils/theme.dart';
import 'package:testing_app/features/analysis/presentation/screens/analysis_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.darkTheme,
      home: const AnalysisScreen(),
    );
  }
}
