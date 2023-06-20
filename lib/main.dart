import 'package:flutter/material.dart';
import 'package:portfolio/core/presentation/theme/theme.dart';
import 'package:portfolio/core/presentation/theme/type_example_widget.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.light,
      darkTheme: MyTheme.dark,
      themeMode: ThemeMode.system,
      themeAnimationCurve: Curves.easeOut,
      home: const TypographyExampleWidget(),
    );
  }
}
